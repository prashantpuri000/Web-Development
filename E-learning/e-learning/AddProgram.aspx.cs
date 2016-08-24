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
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                connection.connect();
                connection.cmd = new SqlCommand();
                connection.cmd.Connection = connection.con;
                connection.cmd.CommandText = "chkprogram";
                connection.cmd.CommandType = CommandType.StoredProcedure;
                connection.cmd.Parameters.AddWithValue("@id", connection.userid);
                int chk = Int32.Parse(connection.cmd.ExecuteScalar().ToString());

                if (chk == 0)
                {
                    Label1.Visible = true;
                }
                else
                {
                    Label1.Visible = false;


                    getprogram();

                }
            }
            catch (Exception ex)
            {

            }

        }
        public void getprogram()
        {
            connection.cmd = new SqlCommand();
            connection.cmd.Connection = connection.con;
            connection.cmd.CommandText = "getprogram";

            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = connection.cmd;
            DataSet ds = new DataSet();
            da.Fill(ds);

            GridView1.DataSource = ds;
            GridView1.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            connection.cmd = new SqlCommand();
            connection.cmd.Connection = connection.con;
            connection.cmd.CommandText = "addprogram";
            connection.cmd.CommandType = CommandType.StoredProcedure;
            connection.cmd.Parameters.AddWithValue("@name", TextBox1.Text);
            connection.cmd.Parameters.AddWithValue("@des", TextBox2.Text);
            connection.cmd.Parameters.AddWithValue("@duration", TextBox3.Text);
            connection.cmd.Parameters.AddWithValue("@id", connection.userid);
            connection.cmd.Parameters.AddWithValue("@date", System.DateTime.Now);
            connection.cmd.ExecuteNonQuery();

            getprogram();
        }
    }
}