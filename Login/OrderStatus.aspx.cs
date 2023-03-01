using System;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;


namespace Login
{
    public partial class OrderStatus : System.Web.UI.Page
    {
        string str = ConfigurationManager.ConnectionStrings["con"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            string wait_time = ddlistWaitTime.SelectedValue;
            lblerror.Text = "";
            SqlConnection con = new SqlConnection(str);
            con.Open();
            SqlCommand cmd = new SqlCommand("update admin_info set Wait_time ='"+wait_time+"' where 1=1", con);
            cmd.ExecuteNonQuery();
            con.Close();
            if (!IsPostBack)
            {
                TextBox1.Visible = false;
                Label1.Visible = false;
                Label2.Visible = false;
                DropDownList1.Visible = false;
                DropDownList2.Visible = false;
                Calendar1.Visible = false;
                Button2.Visible = false;

                DataSet year = new DataSet();
                year.ReadXml(Server.MapPath("~/Year.xml"));
                DropDownList1.DataTextField = "Number";
                DropDownList1.DataValueField = "Number";
                DropDownList1.DataSource = year;
                DropDownList1.DataBind();

                DataSet month = new DataSet();
                month.ReadXml(Server.MapPath("~/Month.xml"));
                DropDownList2.DataTextField = "Name";
                DropDownList2.DataValueField = "Number";
                DropDownList2.DataSource = month;
                DropDownList2.DataBind();
            }
        }
        

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            int year = int.Parse(DropDownList1.SelectedValue);
            int month = int.Parse(DropDownList2.SelectedValue);

            Calendar1.VisibleDate = new DateTime(year, month, 1);
            Calendar1.SelectedDate = new DateTime(year, month, 1);
        }

        protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
        {
            int year = int.Parse(DropDownList1.SelectedValue);
            int month = int.Parse(DropDownList2.SelectedValue);

            Calendar1.VisibleDate = new DateTime(year, month, 1);
            Calendar1.SelectedDate = new DateTime(year, month, 1);
        }

        protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
        {
            if(Calendar1.Visible)
            {
                Label1.Visible = false;
                Label2.Visible = false;
                DropDownList1.Visible = false;
                DropDownList2.Visible = false;
                Calendar1.Visible = false;
            }
            else
            {
                TextBox1.Visible = true;
                Label1.Visible = true;
                Label2.Visible = true;
                DropDownList1.Visible = true;
                DropDownList2.Visible =true;
                Calendar1.Visible = true;
            }
            Button2.Visible = true;
        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            string Day_ = Calendar1.SelectedDate.Day.ToString();
            string Month_ = Calendar1.SelectedDate.Month.ToString();
            string Year_ = Calendar1.SelectedDate.Year.ToString();
            TextBox1.Text = Calendar1.SelectedDate.ToShortDateString();

            Label1.Visible = false;
            Label2.Visible = false;
            DropDownList1.Visible = false;
            DropDownList2.Visible = false;
            Calendar1.Visible = false;



            SqlConnection con = new SqlConnection(str);
            con.Open();
            SqlDataAdapter sda = new SqlDataAdapter("Select Order_id,Customer_id,DateofOrder from customer_order1 where Day(DateofOrder) ='" + Day_ + "' and Month(DateofOrder) ='" + Month_ + "' and Year(DateofOrder) ='" + Year_ + "' order by DateofOrder desc", con);
            DataSet ds = new DataSet();
            sda.Fill(ds, "customer_order1");
            if (ds.Tables[0].Rows.Count == 0)
            {
                lblerror.Text = "No orders on this date";
                GridView1.Visible = false;
                //Response.Write("<script>alert('No record to display')</script>");
            }
            else
            {
                GridView1.DataSource = ds;
                GridView1.DataBind();
                GridView1.Columns[0].Visible = true;
                Button2.Visible = true;
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
           
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            foreach (GridViewRow row in GridView1.Rows)
            {
                string Order_id = row.Cells[2].Text;
                RadioButton rb1 = (row.Cells[0].FindControl("RadioButton1") as RadioButton);
                RadioButton rb2 = (row.Cells[0].FindControl("RadioButton2") as RadioButton);
                string Status;
                if(rb1.Checked)
                {
                    Status = rb1.Text;
                }
                else
                {
                    Status = rb2.Text;
                }
                SqlConnection con = new SqlConnection(str);
                con.Open();
                SqlCommand cmd = new SqlCommand("Update customer_order1 set Status=@a where Order_id=@b",con);
                cmd.Parameters.AddWithValue("@a", Status);
                cmd.Parameters.AddWithValue("@b", Order_id);
                cmd.ExecuteNonQuery();
                con.Close();
            }
            Response.Write("<script>alert('Status updated successfully')</script>");
        }

        protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            //e.Row.Cells[3].HorizontalAlign = HorizontalAlign.Center;
            //e.Row.Cells[4].HorizontalAlign = HorizontalAlign.Center;
        }
        protected void AllPendingOrder_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(str);
            con.Open();
            SqlDataAdapter sda = new SqlDataAdapter("Select Order_id,Customer_id,DateofOrder,Status from customer_order1 where Status like 'Pending' order by DateofOrder desc", con);
            DataSet ds = new DataSet();
            sda.Fill(ds, "customer_order1");
            GridView1.DataSource = ds;
            GridView1.DataBind();
            GridView1.Columns[0].Visible = false;
            Button2.Visible = false;
            if (ds.Tables[0].Rows.Count == 0)
            {
                lblerror.Text = "No Pending orders";
            }
        }
        protected void AllOrder_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(str);
            con.Open();
            SqlDataAdapter sda = new SqlDataAdapter("Select Order_id,Customer_id,DateofOrder,Status from customer_order1 order by DateofOrder desc", con);
            DataSet ds = new DataSet();
            sda.Fill(ds, "customer_order1");
            GridView1.DataSource = ds;
            GridView1.DataBind();
            GridView1.Columns[0].Visible = false;
            Button2.Visible = false;
            if (ds.Tables[0].Rows.Count == 0)
            {
                lblerror.Text = "No orders to display";
            }
        }
        protected void TodayOrder_Click(object sender, EventArgs e)
        {
            DateTime date = DateTime.Now;
            string Day_ = date.Day.ToString();
            string Month_ = date.Month.ToString();
            string Year_ = date.Year.ToString();
            SqlConnection con = new SqlConnection(str);
            con.Open();
            SqlDataAdapter sda = new SqlDataAdapter("Select Order_id,Customer_id,DateofOrder,Status from customer_order1 where Day(DateofOrder) ='" + Day_ + "' and Month(DateofOrder) ='" + Month_ + "' and Year(DateofOrder) ='" + Year_ + "' order by DateofOrder desc", con);
            DataSet ds = new DataSet();
            sda.Fill(ds, "customer_order1");
            GridView1.DataSource = ds;
            GridView1.DataBind();
            GridView1.Columns[0].Visible = false;
            Button2.Visible = false;
            if (ds.Tables[0].Rows.Count == 0)
            {
                lblerror.Text = "No orders placed Today";
            }
        }


        protected void GridView1_SelectedIndexChanged1(object sender, EventArgs e)
        {
            int index = GridView1.SelectedIndex;
            string val = GridView1.DataKeys[index].Value.ToString();
            int i = Convert.ToInt32(val);
            Session["order"] = i;
            Response.Redirect("View_Full_Order.aspx");
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            Response.Redirect("AdminDashboard.aspx");
        }

        protected void ddlistWaitTime_SelectedIndexChanged(object sender, EventArgs e)
        {
        }

        protected void btnset_Click(object sender, EventArgs e)
        {
            string wait_time = ddlistWaitTime.SelectedValue;
            lblerror.Text = "";
            SqlConnection con = new SqlConnection(str);
            con.Open();
            SqlCommand cmd = new SqlCommand("update admin_info set Wait_time ='" + wait_time + "' where 1=1", con);
            cmd.ExecuteNonQuery();
            con.Close();
        }
    }

}
