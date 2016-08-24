using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using e_learning.controller;
namespace e_learning
{
    public partial class OrgRegistration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack == false)
            {
               
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            connection.connect();
            connection.cmd.CommandText = "OrgReg";
            connection.cmd.CommandType = CommandType.StoredProcedure;
            connection.cmd.Parameters.AddWithValue("@name", TextBox1.Text);
            connection.cmd.Parameters.AddWithValue("@username", TextBox2.Text);
            connection.cmd.Parameters.AddWithValue("@pass", TextBox3.Text);
            connection.cmd.Parameters.AddWithValue("@phone", TextBox5.Text);
            connection.cmd.Parameters.AddWithValue("@fax", TextBox6.Text);
            connection.cmd.Parameters.AddWithValue("@url", TextBox7.Text);
            connection.cmd.Parameters.AddWithValue("@contact", TextBox8.Text);
            connection.cmd.Parameters.AddWithValue("@des", TextBox9.Text);
            connection.cmd.Parameters.AddWithValue("@email", TextBox10.Text);
            connection.cmd.Parameters.AddWithValue("@add", TextBox11.Text);
            connection.cmd.Parameters.AddWithValue("@city", TextBox13.Text);
            connection.cmd.Parameters.AddWithValue("@country", DropDownList1.SelectedItem.Text.ToString());
            connection.cmd.Parameters.AddWithValue("@created", System.DateTime.Now);

            connection.cmd.ExecuteNonQuery();
            connection.con.Close();
            reset();
            Server.Transfer("home.aspx");

        }
        public void reset()
        {
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
            TextBox5.Text = "";
            TextBox6.Text = "";
            TextBox7.Text = "";
            TextBox8.Text = "";
            TextBox9.Text = "";
            TextBox10.Text = "";
            TextBox11.Text = "";
            TextBox13.Text = "";
        }


        protected void Button2_Click(object sender, EventArgs e)
        {
            reset();

        }
    }
}