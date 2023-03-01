using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;




namespace Login
{
    public partial class UserStatus : System.Web.UI.Page
    {
        string con = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        public int val;
        public void Page_Init(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Status();
                DataBind();
            }
            SqlConnection conn = new SqlConnection(con);//Get wait time from database
            conn.Open();
            SqlCommand cmd1 = conn.CreateCommand();
            cmd1.CommandType = CommandType.Text;
            cmd1.CommandText = "select top 1 Wait_time from customer_order1 Order BY Order_id DESC";
            string waittime = Convert.ToString(cmd1.ExecuteScalar());
            lbltime.Text = waittime;
            conn.Close();
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["id"] == null)
            {
                //The Session key for your user could not be found - navigating away
                Response.Write("<script>alert('Session Timed Out, Please login');</script>");
                Response.Redirect("Signin.aspx");
            }
            
        }  
       
        public void Status()
        {
            if (Session["id"] == null)
            {
                Response.Redirect("Signin.aspx");
            }
            else
            {
                string status = "";
                string OrderId = "";
                string userid = Session["id"].ToString();

                SqlDataAdapter sda = new SqlDataAdapter("Select Top 1 * from customer_order1 where Customer_id="+userid+" Order BY Order_id DESC;", con);
                DataTable dt = new DataTable();
                sda.Fill(dt);
                if(dt.Rows.Count==1)
                {
                    OrderId = dt.Rows[0][0].ToString();
                    status = dt.Rows[0][4].ToString();
                    lblOrderID.Text = OrderId;
                   
                    SqlDataAdapter sda1 = new SqlDataAdapter("Select*from customer_order1 where Customer_id='" + userid + "'", con);
                    DataTable dt1 = new DataTable();
                     sda1.Fill(dt1);
                    if (dt1.Rows.Count > 1)
                    {
                       Button5.Visible = true;
                    }
                    else
                    {
                        Button5.Visible = false;
                    }
                }
                else
                {
                    Response.Redirect("CustomerDashboard.aspx");
                    Response.Write("<script>alert('No Orders To View');</script>");
                }
                if(status=="Pending")
                {
                    val = 25;
                    Page.Header.Controls.Add(new System.Web.UI.LiteralControl("<link rel=\"stylesheet\"type=\"text/css\"href=\"" + ResolveUrl("~/StyleUserStatus.css")+ "\" />"));
                }
                else if(status=="Completed")
                {
                    val = 0;
                    Page.Header.Controls.Add(new System.Web.UI.LiteralControl("<link rel=\"stylesheet\"type=\"text/css\"href=\"" + ResolveUrl("~/StyleUserStatusbefore.css") + "\" />"));
                }
            }
        }
        protected void Button5_Click(object sender, EventArgs e)
        {
            if (GridView1.Visible)
            {
                GridView1.Visible = false;
            }
            else
            {
                GridView1.Visible = true;
            }
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            int index = GridView1.SelectedIndex;
            string val = GridView1.DataKeys[index].Value.ToString();
            int i = Convert.ToInt32(val);
            Session["order"] = i;
            Response.Redirect("View_Full_Order.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("CustomerDashboard.aspx");
        }

        protected void btncurrentorder_Click(object sender, EventArgs e)
        {
            if (GridView2.Visible)
            {
                GridView2.Visible = false;
            }
            else
            {
                GridView2.Visible = true;
            }
        }
    }
}