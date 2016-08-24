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
    public partial class WebForm9 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            getteachers();
        }
        public void getteachers()
        {
            connection.cmd = new SqlCommand("select * from teacher_info where org_id=" + Int32.Parse(Session["org"].ToString()));
            connection.cmd.Connection = connection.con;

            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = connection.cmd;
            DataSet ds = new DataSet();
            da.Fill(ds);
            GridView1.DataSource = ds;
            GridView1.DataBind();

        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            connection.cmd = new SqlCommand("insert into assign_course_teacher(teacher_id,course_id) values(" + Int32.Parse(e.CommandArgument.ToString())+","+Int32.Parse(Session["course"].ToString())+")");
            connection.cmd.Connection = connection.con;
            connection.cmd.ExecuteNonQuery();
        }
    }
}