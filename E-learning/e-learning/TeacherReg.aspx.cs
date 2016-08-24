using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using e_learning.controller;
namespace e_learning
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                connection.connect();
                connection.cmd = new SqlCommand();
                connection.cmd.Connection = connection.con;
                connection.cmd.CommandText = "teacherReg";
                connection.cmd.CommandType = CommandType.StoredProcedure;
                connection.cmd.Parameters.AddWithValue("@name", TextBox1.Text);
                connection.cmd.Parameters.AddWithValue("@username", TextBox2.Text);
                connection.cmd.Parameters.AddWithValue("@pass", TextBox3.Text);
                connection.cmd.Parameters.AddWithValue("@phone", TextBox5.Text);
                connection.cmd.Parameters.AddWithValue("@zip", TextBox14.Text);
                connection.cmd.Parameters.AddWithValue("@orgid", Int32.Parse(Session["org"].ToString()));
                connection.cmd.Parameters.AddWithValue("@email", TextBox10.Text);
                connection.cmd.Parameters.AddWithValue("@add", TextBox11.Text);
                connection.cmd.Parameters.AddWithValue("@city", TextBox13.Text);
                connection.cmd.Parameters.AddWithValue("@country", DropDownList1.SelectedItem.Text.ToString());
                connection.cmd.Parameters.AddWithValue("@created", System.DateTime.Now);
                connection.cmd.Parameters.AddWithValue("@exp", TextBox12.Text);
                connection.cmd.ExecuteNonQuery();
                connection.con.Close();
                reset();
                Server.Transfer("OrgHome.aspx");

            }
            catch (Exception ex)
            {
            }
        }
        public void reset()
        {
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
            TextBox5.Text = "";
            TextBox14.Text = "";
            TextBox10.Text = "";
            TextBox11.Text = "";
            TextBox13.Text = "";
            TextBox12.Text = "";
        }
        protected void Button2_Click(object sender, EventArgs e)
        {

        }

       
    }
}