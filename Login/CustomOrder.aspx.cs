using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
using System.IO;

namespace Login
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(strcon);
            conn.Open();
            SqlCommand cmd1 = conn.CreateCommand();
            cmd1.CommandType = CommandType.Text;
            cmd1.CommandText = "select sum(Subtotal) as total from item_order1 where Order_id =" + Session["orderid"] +"";
            using (SqlDataReader reader = cmd1.ExecuteReader())
            {
                reader.Read();
                lblprice.Text = "Order total: "+reader["total"].ToString();
            }
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            lblitem.Text = "";
            GridViewRow row = GridView1.SelectedRow;
            string item = row.Cells[2].Text;
            lblitem.Text = item;

        }

        protected void CheckBoxList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            
            
        }

        protected void Confirm_Click(object sender, EventArgs e)
        {
            string cust = "";
            foreach (ListItem item in CheckBoxList1.Items)
            {
                if (item.Selected)
                {
                    cust += item.Value+". ";
                }
            }

            SqlConnection conn = new SqlConnection(strcon);
            conn.Open();
            int index = GridView1.SelectedIndex;
            if (index < 0)
            {
                lblerror.Text = "Select an item";
            }
            else
            {
                lblerror.Text = "";
                if(cust == "")
                {
                    lblerror.Text = "Select customization";
                }
                else
                {
                    string val = GridView1.DataKeys[index].Value.ToString();
                    SqlCommand cmd = new SqlCommand("update cart2 set customization" +
                        "" +
                        "" +
                        " +='" + cust + "' where order_id=" + Convert.ToInt32(val) + "", conn);
                    cmd.ExecuteNonQuery();
                    conn.Close();
                    Response.Redirect("CustomOrder.aspx");
                }
                
            }
            
        }

        protected void btnsubmitfinal_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(strcon);
            conn.Open();
            SqlCommand cmd = new SqlCommand("update cart2 set status = 'Ordered' where status like 'Pending' and" +
                " customer_order_id =" + Session["orderid"] + "", conn);
            cmd.ExecuteNonQuery();
            conn.Close();
            DateTime ordered_time = DateTime.Now;
            DateTime min_time;
            DateTime max_time;
            conn.Open();
            SqlCommand cmd1 = conn.CreateCommand();
            cmd1.CommandType = CommandType.Text;
            cmd1.CommandText = "select top 1 Wait_time as time from admin_info";
            string waittime = Convert.ToString(cmd1.ExecuteScalar());//lalternate to using, thats if there only one output
            conn.Close();
            if (waittime == "5 - 10min")
            {
                min_time = ordered_time.AddMinutes(5);
                max_time = min_time.AddMinutes(5);
                string input = "Expect order between " + min_time.ToString("H:mm") + " and " + max_time.ToString("H:mm");
                conn.Open();
                SqlCommand cmd2 = new SqlCommand("update customer_order1 set Wait_time = '"+ input +"' where" +
                    " order_id =" + Session["orderid"] + "", conn);
                cmd2.ExecuteNonQuery();
                conn.Close();
            }
            if (waittime == "10 - 15 min")
            {
                min_time = ordered_time.AddMinutes(10);
                max_time = min_time.AddMinutes(5);
                string input = "Expect order between " + min_time.ToString("H:mm") + " and " + max_time.ToString("H:mm");
                conn.Open();
                SqlCommand cmd2 = new SqlCommand("update customer_order1 set Wait_time = '" + input + "' where" +
                    " order_id =" + Session["orderid"] + "", conn);
                cmd2.ExecuteNonQuery();
                conn.Close();
            }
            if (waittime == "15 - 30 min")
            {
                min_time = ordered_time.AddMinutes(15);
                max_time = min_time.AddMinutes(15);
                string input = "Expect order between " + min_time.ToString("H:mm") + " and " + max_time.ToString("H:mm");
                conn.Open();
                SqlCommand cmd2 = new SqlCommand("update customer_order1 set Wait_time = '" + input + "' where" +
                    " order_id =" + Session["orderid"] + "", conn);
                cmd2.ExecuteNonQuery();
                conn.Close();
            }
            if (waittime == "30 - 45 min")
            {
                min_time = ordered_time.AddMinutes(30);
                max_time = min_time.AddMinutes(15);
                string input = "Expect order between " + min_time.ToString("H:mm") + " and " + max_time.ToString("H:mm");
                conn.Open();
                SqlCommand cmd2 = new SqlCommand("update customer_order1 set Wait_time = '" + input + "' where" +
                    " order_id =" + Session["orderid"] + "", conn);
                cmd2.ExecuteNonQuery();
                conn.Close();
            }
            if (waittime == "45 min - 1 hr")
            {
                min_time = ordered_time.AddMinutes(45);
                max_time = min_time.AddMinutes(15);
                string input = "Expect order between " + min_time.ToString("H:mm") + " and " + max_time.ToString("H:mm");
                conn.Open();
                SqlCommand cmd2 = new SqlCommand("update customer_order1 set Wait_time = '" + input + "' where" +
                    " order_id =" + Session["orderid"] + "", conn);
                cmd2.ExecuteNonQuery();
                conn.Close();
            }
            if (waittime == "1hr - 1hr 30 min")
            {
                min_time = ordered_time.AddMinutes(60);
                max_time = min_time.AddMinutes(30);
                string input = "Expect order between " + min_time.ToString("H:mm") + " and " + max_time.ToString("H:mm");
                conn.Open();
                SqlCommand cmd2 = new SqlCommand("update customer_order1 set Wait_time = '" + input + "' where" +
                    " order_id =" + Session["orderid"] + "", conn);
                cmd2.ExecuteNonQuery();
                conn.Close();
            }
            if (waittime == "1hr 30 min - 2hrs")
            {
                min_time = ordered_time.AddMinutes(90);
                max_time = min_time.AddMinutes(30);
                string input = "Expect order between " + min_time.ToString("H:mm") + " and " + max_time.ToString("H:mm");
                conn.Open();
                SqlCommand cmd2 = new SqlCommand("update customer_order1 set Wait_time = '" + input + "' where" +
                    " order_id =" + Session["orderid"] + "", conn);
                cmd2.ExecuteNonQuery();
                conn.Close();
            }
            if (waittime == "2 hrs +")
            {
                min_time = ordered_time.AddMinutes(120);
                max_time = min_time.AddMinutes(30);
                string input = "Expect order between " + min_time.ToString("H:mm") + " and " + max_time.ToString("H:mm");
                conn.Open();
                SqlCommand cmd2 = new SqlCommand("update customer_order1 set Wait_time = '" + input + "' where" +
                    " order_id =" + Session["orderid"] + "", conn);
                cmd2.ExecuteNonQuery();
                conn.Close();
            }

            Response.Redirect("UserStatus.aspx");
        }
       
    }
}