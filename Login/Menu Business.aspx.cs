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


namespace Login
{
    public partial class Menu_Business : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);

        protected void Page_Load(object sender, EventArgs e)
        {
        }
        protected void DiscontinuedCheckBox_CheckedChanged1(object sender, EventArgs e)
        {
            CheckBox DiscontinuedCheckBox;
            SqlCommand cmd;
            int Item_id;
            GridViewRow selectedRow;

            // Cast the sender object to a CheckBox
            DiscontinuedCheckBox = (CheckBox)sender;

            // We can find the row we clicked the checkbox in by walking up the control tree
            selectedRow = (GridViewRow)DiscontinuedCheckBox.Parent.Parent;


            // GridViewRow has a DataItemIndex property which we can use to look up the DataKeys array
            Item_id = (int)GridView1.DataKeys[selectedRow.DataItemIndex].Value;

            using (con)
            {
                cmd = new SqlCommand();
                cmd.Connection = con;
                cmd.CommandType = CommandType.Text;
                if (DiscontinuedCheckBox.Checked)
                {
                    cmd.CommandText = "UPDATE Item1 SET Instock = 1 WHERE Item_id = " + Item_id.ToString();
                }
                else
                {
                    cmd.CommandText = "UPDATE Item1 SET Instock = 0 WHERE Item_id = " + Item_id.ToString();
                }
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
            }
        }
        protected void DiscontinuedCheckBox2_CheckedChanged(object sender, EventArgs e)
        {
            CheckBox DiscontinuedCheckBox;
            SqlCommand cmd;
            int Item_id;
            GridViewRow selectedRow;

            // Cast the sender object to a CheckBox
            DiscontinuedCheckBox = (CheckBox)sender;

            // We can find the row we clicked the checkbox in by walking up the control tree
            selectedRow = (GridViewRow)DiscontinuedCheckBox.Parent.Parent;


            // GridViewRow has a DataItemIndex property which we can use to look up the DataKeys array
            Item_id = (int)GridView2.DataKeys[selectedRow.DataItemIndex].Value;

            using (con)
            {
                cmd = new SqlCommand();
                cmd.Connection = con;
                cmd.CommandType = CommandType.Text;
                if (DiscontinuedCheckBox.Checked)
                {
                    cmd.CommandText = "UPDATE Item1 SET Instock = 1 WHERE Item_id = " + Item_id.ToString();
                }
                else
                {
                    cmd.CommandText = "UPDATE Item1 SET Instock = 0 WHERE Item_id = " + Item_id.ToString();
                }
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
            }
        }
        protected void DiscontinuedCheckBox3_CheckedChanged(object sender, EventArgs e)
        {
            CheckBox DiscontinuedCheckBox;
            SqlCommand cmd;
            int Item_id;
            GridViewRow selectedRow;

            // Cast the sender object to a CheckBox
            DiscontinuedCheckBox = (CheckBox)sender;

            // We can find the row we clicked the checkbox in by walking up the control tree
            selectedRow = (GridViewRow)DiscontinuedCheckBox.Parent.Parent;


            // GridViewRow has a DataItemIndex property which we can use to look up the DataKeys array
            Item_id = (int)GridView3.DataKeys[selectedRow.DataItemIndex].Value;

            using (con)
            {
                cmd = new SqlCommand();
                cmd.Connection = con;
                cmd.CommandType = CommandType.Text;
                if (DiscontinuedCheckBox.Checked)
                {
                    cmd.CommandText = "UPDATE Item1 SET Instock = 1 WHERE Item_id = " + Item_id.ToString();
                }
                else
                {
                    cmd.CommandText = "UPDATE Item1 SET Instock = 0 WHERE Item_id = " + Item_id.ToString();
                }
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
            }
        }
        protected void DiscontinuedCheckBox4_CheckedChanged(object sender, EventArgs e)
        {
            CheckBox DiscontinuedCheckBox;
            SqlCommand cmd;
            int Item_id;
            GridViewRow selectedRow;

            // Cast the sender object to a CheckBox
            DiscontinuedCheckBox = (CheckBox)sender;

            // We can find the row we clicked the checkbox in by walking up the control tree
            selectedRow = (GridViewRow)DiscontinuedCheckBox.Parent.Parent;


            // GridViewRow has a DataItemIndex property which we can use to look up the DataKeys array
            Item_id = (int)GridView4.DataKeys[selectedRow.DataItemIndex].Value;

            using (con)
            {
                cmd = new SqlCommand();
                cmd.Connection = con;
                cmd.CommandType = CommandType.Text;
                if (DiscontinuedCheckBox.Checked)
                {
                    cmd.CommandText = "UPDATE Item1 SET Instock = 1 WHERE Item_id = " + Item_id.ToString();
                }
                else
                {
                    cmd.CommandText = "UPDATE Item1 SET Instock = 0 WHERE Item_id = " + Item_id.ToString();
                }
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
            }
        }
        protected void DiscontinuedCheckBox5_CheckedChanged(object sender, EventArgs e)
        {
            CheckBox DiscontinuedCheckBox;
            SqlCommand cmd;
            int Item_id;
            GridViewRow selectedRow;

            // Cast the sender object to a CheckBox
            DiscontinuedCheckBox = (CheckBox)sender;

            // We can find the row we clicked the checkbox in by walking up the control tree
            selectedRow = (GridViewRow)DiscontinuedCheckBox.Parent.Parent;


            // GridViewRow has a DataItemIndex property which we can use to look up the DataKeys array
            Item_id = (int)GridView5.DataKeys[selectedRow.DataItemIndex].Value;

            using (con)
            {
                cmd = new SqlCommand();
                cmd.Connection = con;
                cmd.CommandType = CommandType.Text;
                if (DiscontinuedCheckBox.Checked)
                {
                    cmd.CommandText = "UPDATE Item1 SET Instock = 1 WHERE Item_id = " + Item_id.ToString();
                }
                else
                {
                    cmd.CommandText = "UPDATE Item1 SET Instock = 0 WHERE Item_id = " + Item_id.ToString();
                }
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
            }
        }
        protected void DiscontinuedCheckBox6_CheckedChanged(object sender, EventArgs e)
        {
            CheckBox DiscontinuedCheckBox;
            SqlCommand cmd;
            int Item_id;
            GridViewRow selectedRow;

            // Cast the sender object to a CheckBox
            DiscontinuedCheckBox = (CheckBox)sender;

            // We can find the row we clicked the checkbox in by walking up the control tree
            selectedRow = (GridViewRow)DiscontinuedCheckBox.Parent.Parent;


            // GridViewRow has a DataItemIndex property which we can use to look up the DataKeys array
            Item_id = (int)GridView6.DataKeys[selectedRow.DataItemIndex].Value;

            using (con)
            {
                cmd = new SqlCommand();
                cmd.Connection = con;
                cmd.CommandType = CommandType.Text;
                if (DiscontinuedCheckBox.Checked)
                {
                    cmd.CommandText = "UPDATE Item1 SET Instock = 1 WHERE Item_id = " + Item_id.ToString();
                }
                else
                {
                    cmd.CommandText = "UPDATE Item1 SET Instock = 0 WHERE Item_id = " + Item_id.ToString();
                }
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
            }
        }
        protected void DiscontinuedCheckBox7_CheckedChanged(object sender, EventArgs e)
        {
            CheckBox DiscontinuedCheckBox;
            SqlCommand cmd;
            int Item_id;
            GridViewRow selectedRow;

            // Cast the sender object to a CheckBox
            DiscontinuedCheckBox = (CheckBox)sender;

            // We can find the row we clicked the checkbox in by walking up the control tree
            selectedRow = (GridViewRow)DiscontinuedCheckBox.Parent.Parent;


            // GridViewRow has a DataItemIndex property which we can use to look up the DataKeys array
            Item_id = (int)GridView7.DataKeys[selectedRow.DataItemIndex].Value;

            using (con)
            {
                cmd = new SqlCommand();
                cmd.Connection = con;
                cmd.CommandType = CommandType.Text;
                if (DiscontinuedCheckBox.Checked)
                {
                    cmd.CommandText = "UPDATE Item1 SET Instock = 1 WHERE Item_id = " + Item_id.ToString();
                }
                else
                {
                    cmd.CommandText = "UPDATE Item1 SET Instock = 0 WHERE Item_id = " + Item_id.ToString();
                }
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
            }
        }



        public void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            int t = GridView1.SelectedIndex + 1;
            string text = t.ToString();
            con.Open();
            SqlCommand cmd = con.CreateCommand();
            SqlCommand cmd2 = con.CreateCommand();
            cmd2.CommandType = CommandType.Text;
            cmd2.CommandText = "select Item_description from Item1  where Item_id =" + text + "";
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "select price from Item1  where Item_id =" + text + "";
            using (SqlDataReader sdr = cmd.ExecuteReader())
            {
                sdr.Read();
                txtprice.Text = sdr["price"].ToString();

            }
            using (SqlDataReader sdrr = cmd2.ExecuteReader())
            {
                sdrr.Read();
                txtdescrip.Text = sdrr["Item_description"].ToString();

            }

            cmd.ExecuteNonQuery();
            con.Close();
        }
        public void GridView2_SelectedIndexChanged(object sender, EventArgs e)
        {
            int t = GridView2.SelectedIndex + 12;
            string text = t.ToString();
            con.Open();
            SqlCommand cmd = con.CreateCommand();
            SqlCommand cmd2 = con.CreateCommand();
            cmd2.CommandType = CommandType.Text;
            cmd2.CommandText = "select Item_description from Item1  where Item_id =" + text + "";
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "select price from Item1  where Item_id =" + text + "";
            using (SqlDataReader sdr = cmd.ExecuteReader())
            {
                sdr.Read();
                txtprice.Text = sdr["price"].ToString();

            }
            using (SqlDataReader sdrr = cmd2.ExecuteReader())
            {
                sdrr.Read();
                txtdescrip.Text = sdrr["Item_description"].ToString();

            }

            cmd.ExecuteNonQuery();
            con.Close();
        }
        public void GridView3_SelectedIndexChanged(object sender, EventArgs e)
        {
            int t = GridView3.SelectedIndex + 17;
            string text = t.ToString();
            con.Open();
            SqlCommand cmd = con.CreateCommand();
            SqlCommand cmd2 = con.CreateCommand();
            cmd2.CommandType = CommandType.Text;
            cmd2.CommandText = "select Item_description from Item1  where Item_id =" + text + "";
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "select price from Item1  where Item_id =" + text + "";
            using (SqlDataReader sdr = cmd.ExecuteReader())
            {
                sdr.Read();
                txtprice.Text = sdr["price"].ToString();

            }
            using (SqlDataReader sdrr = cmd2.ExecuteReader())
            {
                sdrr.Read();
                txtdescrip.Text = sdrr["Item_description"].ToString();

            }

            cmd.ExecuteNonQuery();
            con.Close();
        }
        public void GridView4_SelectedIndexChanged(object sender, EventArgs e)
        {
            int t = GridView4.SelectedIndex + 22;
            string text = t.ToString();
            con.Open();
            SqlCommand cmd = con.CreateCommand();
            SqlCommand cmd2 = con.CreateCommand();
            cmd2.CommandType = CommandType.Text;
            cmd2.CommandText = "select Item_description from Item1  where Item_id =" + text + "";
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "select price from Item1  where Item_id =" + text + "";
            using (SqlDataReader sdr = cmd.ExecuteReader())
            {
                sdr.Read();
                txtprice.Text = sdr["price"].ToString();

            }
            using (SqlDataReader sdrr = cmd2.ExecuteReader())
            {
                sdrr.Read();
                txtdescrip.Text = sdrr["Item_description"].ToString();

            }

            cmd.ExecuteNonQuery();
            con.Close();
        }
        public void GridView5_SelectedIndexChanged(object sender, EventArgs e)
        {
            int t = GridView5.SelectedIndex + 29;
            string text = t.ToString();
            con.Open();
            SqlCommand cmd = con.CreateCommand();
            SqlCommand cmd2 = con.CreateCommand();
            cmd2.CommandType = CommandType.Text;
            cmd2.CommandText = "select Item_description from Item1  where Item_id =" + text + "";
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "select price from Item1  where Item_id =" + text + "";
            using (SqlDataReader sdr = cmd.ExecuteReader())
            {
                sdr.Read();
                txtprice.Text = sdr["price"].ToString();

            }
            using (SqlDataReader sdrr = cmd2.ExecuteReader())
            {
                sdrr.Read();
                txtdescrip.Text = sdrr["Item_description"].ToString();

            }

            cmd.ExecuteNonQuery();
            con.Close();
        }
        public void GridView6_SelectedIndexChanged(object sender, EventArgs e)
        {
            int t = GridView6.SelectedIndex + 32;
            string text = t.ToString();
            con.Open();
            SqlCommand cmd = con.CreateCommand();
            SqlCommand cmd2 = con.CreateCommand();
            cmd2.CommandType = CommandType.Text;
            cmd2.CommandText = "select Item_description from Item1  where Item_id =" + text + "";
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "select price from Item1  where Item_id =" + text + "";
            using (SqlDataReader sdr = cmd.ExecuteReader())
            {
                sdr.Read();
                txtprice.Text = sdr["price"].ToString();

            }
            using (SqlDataReader sdrr = cmd2.ExecuteReader())
            {
                sdrr.Read();
                txtdescrip.Text = sdrr["Item_description"].ToString();

            }

            cmd.ExecuteNonQuery();
            con.Close();
        }
        public void GridView7_SelectedIndexChanged(object sender, EventArgs e)
        {
            int t = GridView7.SelectedIndex + 33;
            string text = t.ToString();
            con.Open();
            SqlCommand cmd = con.CreateCommand();
            SqlCommand cmd2 = con.CreateCommand();
            cmd2.CommandType = CommandType.Text;
            cmd2.CommandText = "select Item_description from Item1  where Item_id =" + text + "";
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "select price from Item1  where Item_id =" + text + "";
            using (SqlDataReader sdr = cmd.ExecuteReader())
            {
                sdr.Read();
                txtprice.Text = sdr["price"].ToString();

            }
            using (SqlDataReader sdrr = cmd2.ExecuteReader())
            {
                sdrr.Read();
                txtdescrip.Text = sdrr["Item_description"].ToString();

            }

            cmd.ExecuteNonQuery();
            con.Close();
        }

        protected void updatedescription_Click(object sender, EventArgs e)
        {

            if (GridView1.SelectedIndex >= 0)
            {
                int t = GridView1.SelectedIndex + 1;
                string text = t.ToString();
                con.Open();
                SqlCommand cmd = con.CreateCommand();
                cmd.CommandType = System.Data.CommandType.Text;
                cmd.CommandText = "update Item1 set Item_description ='" + txtdescrip.Text + "' where Item_id =" + text + "";
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Redirect("Menu Business.aspx");
            }
            else if (GridView2.SelectedIndex >= 0)
            {
                int t = GridView2.SelectedIndex + 12;
                string text = t.ToString();
                con.Open();
                SqlCommand cmd = con.CreateCommand();
                cmd.CommandType = System.Data.CommandType.Text;
                cmd.CommandText = "update Item1 set Item_description ='" + txtdescrip.Text + "' where Item_id =" + text + "";
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Redirect("Menu Business.aspx");
            }
            else if (GridView3.SelectedIndex >= 0)
            {
                int t = GridView3.SelectedIndex + 17;
                string text = t.ToString();
                con.Open();
                SqlCommand cmd = con.CreateCommand();
                cmd.CommandType = System.Data.CommandType.Text;
                cmd.CommandText = "update Item1 set Item_description ='" + txtdescrip.Text + "' where Item_id =" + text + "";
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Redirect("Menu Business.aspx");
            }
            else if (GridView4.SelectedIndex >= 0)
            {
                int t = GridView4.SelectedIndex + 22;
                string text = t.ToString();
                con.Open();
                SqlCommand cmd = con.CreateCommand();
                cmd.CommandType = System.Data.CommandType.Text;
                cmd.CommandText = "update Item1 set Item_description ='" + txtdescrip.Text + "' where Item_id =" + text + "";
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Redirect("Menu Business.aspx");
            }
            else if (GridView5.SelectedIndex >= 0)
            {
                int t = GridView5.SelectedIndex + 29;
                string text = t.ToString();
                con.Open();
                SqlCommand cmd = con.CreateCommand();
                cmd.CommandType = System.Data.CommandType.Text;
                cmd.CommandText = "update Item1 set Item_description ='" + txtdescrip.Text + "' where Item_id =" + text + "";
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Redirect("Menu Business.aspx");
            }
            else if (GridView6.SelectedIndex >= 0)
            {
                int t = GridView6.SelectedIndex + 32;
                string text = t.ToString();
                con.Open();
                SqlCommand cmd = con.CreateCommand();
                cmd.CommandType = System.Data.CommandType.Text;
                cmd.CommandText = "update Item1 set Item_description ='" + txtdescrip.Text + "' where Item_id =" + text + "";
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Redirect("Menu Business.aspx");
            }
            else if (GridView7.SelectedIndex >= 0)
            {
                int t = GridView7.SelectedIndex + 33;
                string text = t.ToString();
                con.Open();
                SqlCommand cmd = con.CreateCommand();
                cmd.CommandType = System.Data.CommandType.Text;
                cmd.CommandText = "update Item1 set Item_description ='" + txtdescrip.Text + "' where Item_id =" + text + "";
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Redirect("Menu Business.aspx");
            }
        }
        protected void updateprice_Click(object sender, EventArgs e)
        {
            if (GridView1.SelectedIndex >= 0)
            {
                int t = GridView1.SelectedIndex + 1;
                string text = t.ToString();
                con.Open();
                SqlCommand cmd = con.CreateCommand();
                cmd.CommandType = System.Data.CommandType.Text;
                cmd.CommandText = "update Item1 set price ='" + txtprice.Text + "' where Item_id =" + text + "";
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Redirect("Menu Business.aspx");
            }
            else if (GridView2.SelectedIndex >= 0)
            {
                int t = GridView2.SelectedIndex + 12;
                string text = t.ToString();
                con.Open();
                SqlCommand cmd = con.CreateCommand();
                cmd.CommandType = System.Data.CommandType.Text;
                cmd.CommandText = "update Item1 set price ='" + txtprice.Text + "' where Item_id =" + text + "";
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Redirect("Menu Business.aspx");
            }
            else if (GridView3.SelectedIndex >= 0)
            {
                int t = GridView3.SelectedIndex + 17;
                string text = t.ToString();
                con.Open();
                SqlCommand cmd = con.CreateCommand();
                cmd.CommandType = System.Data.CommandType.Text;
                cmd.CommandText = "update Item1 set price ='" + txtprice.Text + "' where Item_id =" + text + "";
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Redirect("Menu Business.aspx");
            }
            else if (GridView4.SelectedIndex >= 0)
            {
                int t = GridView4.SelectedIndex + 22;
                string text = t.ToString();
                con.Open();
                SqlCommand cmd = con.CreateCommand();
                cmd.CommandType = System.Data.CommandType.Text;
                cmd.CommandText = "update Item1 set price ='" + txtprice.Text + "' where Item_id =" + text + "";
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Redirect("Menu Business.aspx");
            }
            else if (GridView5.SelectedIndex >= 0)
            {
                int t = GridView5.SelectedIndex + 29;
                string text = t.ToString();
                con.Open();
                SqlCommand cmd = con.CreateCommand();
                cmd.CommandType = System.Data.CommandType.Text;
                cmd.CommandText = "update Item1 set price ='" + txtprice.Text + "' where Item_id =" + text + "";
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Redirect("Menu Business.aspx");
            }
            else if (GridView6.SelectedIndex >= 0)
            {
                int t = GridView6.SelectedIndex + 32;
                string text = t.ToString();
                con.Open();
                SqlCommand cmd = con.CreateCommand();
                cmd.CommandType = System.Data.CommandType.Text;
                cmd.CommandText = "update Item1 set price ='" + txtprice.Text + "' where Item_id =" + text + "";
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Redirect("Menu Business.aspx");
            }
            else if (GridView7.SelectedIndex >= 0)
            {
                int t = GridView7.SelectedIndex + 33;
                string text = t.ToString();
                con.Open();
                SqlCommand cmd = con.CreateCommand();
                cmd.CommandType = System.Data.CommandType.Text;
                cmd.CommandText = "update Item1 set price ='" + txtprice.Text + "' where Item_id =" + text + "";
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Redirect("Menu Business.aspx");
            }
        }
    } 
}