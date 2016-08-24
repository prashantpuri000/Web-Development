using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using e_learning.controller;
using System.Data;
using System.Data.SqlClient;
namespace e_learning
{
    public partial class StudentRegistration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            connection.connect();
            connection.cmd.CommandText = "stdReg";
            connection.cmd.CommandType = CommandType.StoredProcedure;
           
            connection.cmd.Parameters.AddWithValue("@username", TextBox2.Text);
            connection.cmd.Parameters.AddWithValue("@pass", TextBox3.Text);
            connection.cmd.Parameters.AddWithValue("@phone", TextBox5.Text);
           
            connection.cmd.Parameters.AddWithValue("@frist", TextBox7.Text);
            connection.cmd.Parameters.AddWithValue("@last", TextBox8.Text);
            connection.cmd.Parameters.AddWithValue("@father", TextBox9.Text);
            connection.cmd.Parameters.AddWithValue("@email", TextBox10.Text);
            connection.cmd.Parameters.AddWithValue("@add", TextBox11.Text);
            connection.cmd.Parameters.AddWithValue("@dob", System.DateTime.Now);
            connection.cmd.Parameters.AddWithValue("@city", TextBox13.Text);
            connection.cmd.Parameters.AddWithValue("@country", DropDownList1.SelectedItem.Text.ToString());
            connection.cmd.Parameters.AddWithValue("@nation", TextBox15.Text);
            connection.cmd.Parameters.AddWithValue("@zip", TextBox14.Text);
            connection.cmd.Parameters.AddWithValue("@created", System.DateTime.Now);

            connection.cmd.ExecuteNonQuery();
            connection.con.Close();
            reset();
            Server.Transfer("home.aspx");
        }
        public void reset()
        {
           
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
            TextBox5.Text = "";
           
            TextBox7.Text = "";
            TextBox8.Text = "";
            TextBox9.Text = "";
            TextBox10.Text = "";
            TextBox11.Text = "";
            TextBox13.Text = "";
            TextBox14.Text = "";
            TextBox15.Text = "";

        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            reset();
        }
    }
}