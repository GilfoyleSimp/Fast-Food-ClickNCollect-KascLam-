using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;


namespace Login
{
    public partial class View_Full_Order : System.Web.UI.Page 
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;


        protected void Page_Load(object sender, EventArgs e)
        {
  



        }

        protected void btncomplete_Click(object sender, EventArgs e)
        {
            
            SqlConnection conn = new SqlConnection(strcon);
            conn.Open();
            SqlCommand cmd = new SqlCommand("update customer_order1 set Status = 'Completed' where Order_id =" + Session["order"] + "", conn);
            cmd.ExecuteNonQuery();
            conn.Close();
            Response.Redirect("OrderStatus.aspx");
        }
    }
}