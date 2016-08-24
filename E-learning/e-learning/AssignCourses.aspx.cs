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
    public partial class WebForm7 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            getcourse();
        }
        public void getcourse()
        {
            try
            {
                connection.connect();
                connection.cmd = new SqlCommand("select * from course where org_id=" + Int32.Parse(Session["org"].ToString()));
                connection.cmd.Connection = connection.con;
                SqlDataAdapter da = new SqlDataAdapter();
                da.SelectCommand = connection.cmd;
                DataSet ds = new DataSet();
                da.Fill(ds);
                GridView1.DataSource = ds.Tables[0];
                GridView1.DataBind();
            }
            catch (Exception ex)
            {

            }

        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            try
            {
                Session["course"] = e.CommandArgument.ToString();
                Server.Transfer("AssginCourseTeacher.aspx");
            }
            catch (Exception ex)
            {
            }
        }

        protected void GridView1_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
        {

        }
    }
}