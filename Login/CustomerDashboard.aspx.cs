using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
using System.IO;
namespace Login
{
    public partial class CustomerDashboard : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["id"] == null)
            {
                //The Session key for your user could not be found - navigating away
                Response.Write("<script>alert('Session Timed Out, Please login');</script>");
                Response.Redirect("Signin.aspx");
            }

            SqlConnection conn = new SqlConnection(strcon);

            conn.Open();
            SqlCommand cmd = conn.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "Select Customer_Username from customer1 where Customer_id ="+Session["id"].ToString()+"";
            using (SqlDataReader reader = cmd.ExecuteReader())
            {
                reader.Read();
                Label1.Text = "Welcome "+reader["Customer_Username"].ToString();

            }
            conn.Close();
        }

      

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            //if (Session["id"] != null)
            //{
            //    string userid = Session["id"].ToString();
            //    SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;Initial Catalog=Kasc-lam Database1;Integrated Security=True");
            //    SqlDataAdapter sda = new SqlDataAdapter("Select* from customer_order1 where Customer_id='" + userid + "'", con);
            //    DataTable dt = new DataTable();
            //    sda.Fill(dt);
            //    if (dt.Rows.Count > 0)
            //    {
            //        Response.Redirect("UserStatus.aspx");
            //    }
               
            //}
            //else
            //{
            //    Response.Redirect("Signin.aspx");
            //}
            Response.Redirect("UserStatus.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            
            Session.Clear();
            Session.Abandon();
            Response.Redirect("Signin.aspx");

        }
    }
}