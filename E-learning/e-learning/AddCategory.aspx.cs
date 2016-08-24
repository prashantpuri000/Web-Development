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
    public partial class WebForm4 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            getcat();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            connection.cmd = new SqlCommand();
            connection.cmd.Connection = connection.con;
            connection.cmd.CommandText = "addCat";
            connection.cmd.CommandType = CommandType.StoredProcedure;
            connection.cmd.Parameters.AddWithValue("@name", TextBox1.Text);
            connection.cmd.Parameters.AddWithValue("@date", DateTime.Now.Date);
            connection.cmd.Parameters.AddWithValue("@org", Session["org"].ToString());
            connection.cmd.ExecuteNonQuery();
            TextBox1.Text = "";
            Server.Transfer("OrgHome.aspx");
           


        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            TextBox1.Text = " ";

        }

        protected void Button3_Click(object sender, EventArgs e)
        {

            Response.Redirect("OrgHome.aspx");

        }

        public void getcat()
        {

            connection.cmd = new SqlCommand("select * from course_cat where org_id="+Int32.Parse(Session["org"].ToString()));
            connection.cmd.Connection = connection.con;

            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = connection.cmd;

            DataSet ds = new DataSet();
            da.Fill(ds);

            GridView1.DataSource = ds;
            GridView1.DataBind();



        }
    }
}