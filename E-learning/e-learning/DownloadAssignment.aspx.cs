using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using e_learning.controller;
using System.IO;
using System.Diagnostics;
namespace e_learning
{
    public partial class WebForm17 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            getstudy();
        }
        public void getstudy()
        {
            connection.connect();
            connection.cmd = new SqlCommand("select distinct cou.course_title,std.assignment from course as cou, student_course as c,assignment std where std.course_id=cou.Id  ");
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
            try
            {
                string filename = e.CommandArgument.ToString();
                string path = Server.MapPath("/assignment");
                Process.Start(path + "/" + filename);
            }
            catch (Exception ex)
            {
            }
        }
    }
}