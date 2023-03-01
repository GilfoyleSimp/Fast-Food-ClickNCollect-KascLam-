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
    public partial class Dashboard : System.Web.UI.Page
    {
       
        protected void Page_Load(object sender, EventArgs e)
        {
            string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
            SqlConnection conn = new SqlConnection(strcon);

            //color scheme for latest orders
            foreach (GridViewRow row in GridView1.Rows)
            {
                string i = row.Cells[2].Text;
                string d = row.Cells[1].Text;
                DateTime dd = DateTime.Parse(d);
                DateTime ddd = dd.AddHours(24);
                
                if (i.ToString() == "Pending")
                {
                    row.Style.Add("background-color","orange");
                }
                if (i.ToString() == "Completed")
                {
                    row.Style.Add("background-color", "green");
                }
                if (ddd.CompareTo(DateTime.Now) < 0 && i.ToString() == "Pending")
                {
                    row.Style.Add("background-color", "red");
                }

            }
            //stats
            conn.Open();
            SqlCommand cmd1 = conn.CreateCommand();
            cmd1.CommandType = CommandType.Text;
            cmd1.CommandText = "select count(*) as c from customer1";
            string userscount = Convert.ToString(cmd1.ExecuteScalar());//lalternate to using, thats if there only one output
            lbluserscount.Text = userscount;
            conn.Close();

            conn.Open();
            SqlCommand cmd2 = conn.CreateCommand();
            cmd1.CommandType = CommandType.Text;
            cmd1.CommandText = "select count(order_id) as c from customer1";
            string orderscount = Convert.ToString(cmd1.ExecuteScalar());//lalternate to using, thats if there only one output
            lblorderscount.Text = 
            conn.Close();

            conn.Open();
            SqlCommand cmd3 = conn.CreateCommand();
            cmd1.CommandType = CommandType.Text;
            cmd1.CommandText = "select count(*) as c from customer1";
            string waittime = Convert.ToString(cmd1.ExecuteScalar());//lalternate to using, thats if there only one output
            conn.Close();

        }

    }
}