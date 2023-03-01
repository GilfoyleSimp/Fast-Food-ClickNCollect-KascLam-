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
    public partial class Landing_Menu : System.Web.UI.Page
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
            cmd.CommandText = "Select count(*) as count from cart1";
            using (SqlDataReader reader = cmd.ExecuteReader())
            {
                reader.Read();
                int count = Convert.ToInt32(reader["count"]);
                reader.Close();
                if (count == 0)
                {
                    btnsubmit.Visible = false;
                }


            }

        }
        public void addtocart(int index, string val)
        {
            SqlConnection conn = new SqlConnection(strcon);
            conn.Open();


            SqlCommand cmd3 = new SqlCommand("insert into cart1(Item_id,qty) values('" + Convert.ToInt32(val) + "','" + 1 + "')", conn);
            cmd3.ExecuteNonQuery();
            SqlCommand cmd4 = new SqlCommand("insert into cart2(item_id,customization,customer_id,status) values(" + Convert.ToInt32(val) + ",''," + Session["id"] + ",'Pending')", conn);
            cmd4.ExecuteNonQuery();

            SqlCommand cmd = conn.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "Select sum(qty) as sum From cart1 where item_id =" + Convert.ToInt32(val) + "";
            using (SqlDataReader reader = cmd.ExecuteReader())
            {
                reader.Read();
                int qty = Convert.ToInt32(reader["sum"]);
                reader.Close();
                if (qty > 1)
                {
                    SqlCommand cmd1 = new SqlCommand("Delete From cart1 where item_id =" + Convert.ToInt32(val) + "", conn);
                    cmd1.ExecuteNonQuery();
                    SqlCommand cmd2 = new SqlCommand("insert into cart1(Item_id,qty) values('" + Convert.ToInt32(val) + "','" + qty + "')", conn);
                    cmd2.ExecuteNonQuery();

                }


            }
            Response.Redirect("Landing_Menu.aspx");
        }
      
        protected void GridView2_SelectedIndexChanged1(object sender, EventArgs e)
        {
            int index = GridView2.SelectedIndex;
            string val = GridView2.DataKeys[index].Value.ToString();
            addtocart(index, val);
        }

        protected void GridView1_SelectedIndexChanged1(object sender, EventArgs e)
        {

            int index = GridView1.SelectedIndex;
            string val = GridView1.DataKeys[index].Value.ToString();
            addtocart(index, val);
        }

        protected void GridView3_SelectedIndexChanged(object sender, EventArgs e)
        {
            int index = GridView3.SelectedIndex;
            string val = GridView3.DataKeys[index].Value.ToString();
            addtocart(index, val);
        }

        protected void GridView4_SelectedIndexChanged(object sender, EventArgs e)
        {

            int index = GridView4.SelectedIndex;
            string val = GridView4.DataKeys[index].Value.ToString();
            addtocart(index, val);
        }

        protected void GridView5_SelectedIndexChanged(object sender, EventArgs e)
        {
            int index = GridView5.SelectedIndex;
            string val = GridView5.DataKeys[index].Value.ToString();
            addtocart(index, val);
        }

        protected void GridView6_SelectedIndexChanged(object sender, EventArgs e)
        {
            int index = GridView6.SelectedIndex;
            string val = GridView6.DataKeys[index].Value.ToString();
            addtocart(index, val);
        }

        protected void GridView7_SelectedIndexChanged(object sender, EventArgs e)
        {
            int index = GridView7.SelectedIndex;
            string val = GridView7.DataKeys[index].Value.ToString();
            addtocart(index, val);
        }

        protected void Image1_Click(object sender, ImageClickEventArgs e)
        {
            GridView2.Visible = true;
            GridView1.Visible = false;
            GridView3.Visible = false;
            GridView4.Visible = false;
            GridView5.Visible = false;
            GridView6.Visible = false;
        }

        protected void GridView2_DataBound(object sender, EventArgs e)
        {
            GridViewRow row = new GridViewRow(0, 0, DataControlRowType.Header, DataControlRowState.Normal);
            TableHeaderCell cell = new TableHeaderCell();
            cell.Text = "Kotas";
            cell.ColumnSpan = 4;
            row.Controls.Add(cell);
                 
            GridView2.HeaderRow.Parent.Controls.AddAt(0, row);
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            GridView4.Visible = true;
            GridView2.Visible = false;
            GridView1.Visible = false;
            GridView3.Visible = false;
            GridView5.Visible = false;
            GridView6.Visible = false;
        }

        protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
        {
            GridView2.Visible = false;
            GridView1.Visible = false;
            GridView3.Visible = false;
            GridView4.Visible = false;
            GridView5.Visible = true;
            GridView6.Visible = false;
        }

        protected void GridView8_SelectedIndexChanged(object sender, EventArgs e)
        {
            //Decrease qty
           
            SqlConnection conn = new SqlConnection(strcon);
            conn.Open();
            int index = GridView8.SelectedIndex;
            string val = GridView8.DataKeys[index].Value.ToString();
            SqlCommand cmd = new SqlCommand("update cart1 set qty=qty-1 where Item_id='" + Convert.ToInt32(val) + "'", conn);
            cmd.ExecuteNonQuery();
            SqlCommand cmd3 = new SqlCommand("delete top (1) from cart2 where Item_id='" + Convert.ToInt32(val) + "'", conn);
            cmd3.ExecuteNonQuery();
            SqlCommand cmd1 = conn.CreateCommand();
            cmd1.CommandType = CommandType.Text;
            cmd1.CommandText = "Select qty From cart1 where item_id =" + Convert.ToInt32(val) + "";
            using (SqlDataReader reader = cmd1.ExecuteReader())
            {
                reader.Read();
                int qty = Convert.ToInt32(reader["qty"]);
                reader.Close();
                if (qty <= 0)
                {
                    SqlCommand cmd2 = new SqlCommand("delete from cart1 where item_id=" + Convert.ToInt32(val) + "", conn);
                    cmd2.ExecuteNonQuery();
                }

            }
            conn.Close();
            Response.Redirect("Landing_Menu.aspx");
        }

        protected void GridView8_RowDeleted(object sender, GridViewDeletedEventArgs e)
        {
            Response.Redirect("Landing_Menu.aspx");
        }

        protected void btnsubmit_Click(object sender, EventArgs e)
        {
            //Customer order insert
            DateTime orderdate = DateTime.Now;
            string sqlFormattedDate = orderdate.ToString("yyyy-MM-dd HH:mm:ss.fff");
            SqlConnection conn = new SqlConnection(strcon);
            conn.Open();
            SqlCommand cmd = new SqlCommand("insert into customer_order1(Customer_id,DateOfOrder,Status)" +
                " values('" + Session["id"] + "','" + sqlFormattedDate + "','Pending')", conn);//Wait time is gonna be null for now
            cmd.ExecuteNonQuery();

            //Item order insert
            foreach (GridViewRow row in GridView8.Rows)
            {
                int i = Convert.ToInt32(row.Cells[0].Text);
                SqlCommand cmd2 = new SqlCommand("INSERT INTO item_order1(Item_id, Quantity, Subtotal, Order_id) " +
                    "SELECT Item_id, qty, (select price * qty from item1 i, cart1 c where i.Item_id = c.Item_id and c.Item_id ='" + i + "') AS Subtotal," +
                    "(select top 1 Order_id from customer_order1 order by Order_id desc) FROM cart1 WHERE qty> 0 and Item_id ='" + i + "'", conn);
                cmd2.ExecuteNonQuery();

            }
            SqlCommand cmd3 = new SqlCommand("delete from cart1 where 1=1", conn);
            cmd3.ExecuteNonQuery();

            SqlCommand cmd1 = conn.CreateCommand();
            cmd1.CommandType = CommandType.Text;
            cmd1.CommandText = "select top 1 Order_id from customer_order1 order by Order_id desc";
            using (SqlDataReader reader = cmd1.ExecuteReader())
            {
                reader.Read();
                Session["orderid"] = Convert.ToInt32(reader["Order_id"]);
            }
            SqlCommand cmdd = new SqlCommand("update cart2 set customer_order_id ='" + Session["orderid"] + "' where status like 'Pending'", conn);
            cmdd.ExecuteNonQuery();
            conn.Close();
            Response.Redirect("CustomOrder.aspx");
            /*Button1.Visible = true;
            Response.Write("<script>alert('Order will be ready in 20 minutes');</script>");*/
        }

        protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
        {
            GridView4.Visible = false;
            GridView2.Visible = false;
            GridView1.Visible = false;
            GridView3.Visible = true;
            GridView7.Visible = false;
            GridView6.Visible = false;
        }

        protected void ImageButton4_Click(object sender, ImageClickEventArgs e)
        {
            GridView4.Visible = false;
            GridView2.Visible = false;
            GridView1.Visible = false;
            GridView3.Visible = false;
            GridView7.Visible = false;
            GridView1.Visible = true;
        }

        protected void ImageButton5_Click(object sender, ImageClickEventArgs e)
        {
            GridView4.Visible = false;
            GridView2.Visible = false;
            GridView1.Visible = false;
            GridView3.Visible = false;
            GridView7.Visible = true;
            GridView6.Visible = false;
        }
    }
}