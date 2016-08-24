using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using e_learning.controller;
namespace e_learning
{
    public partial class WebForm8 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            getcourse();
        }
        public void getcourse()
        {
            connection.connect();
            connection.cmd = new SqlCommand("select * from course where org_id="+Int32.Parse(Session["org"].ToString()));
            connection.cmd.Connection = connection.con;
            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = connection.cmd;
            DataSet ds = new DataSet();
            da.Fill(ds);
            GridView1.DataSource = ds.Tables[0];
            GridView1.DataBind();

        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if(e.CommandName=="Approve")
            {
                connection.connect();
                connection.cmd = new SqlCommand("update course set status='Y' where id=" + Int32.Parse(e.CommandArgument.ToString()));
                connection.cmd.Connection = connection.con;
                connection.cmd.ExecuteNonQuery();
            }
        }
    }
}