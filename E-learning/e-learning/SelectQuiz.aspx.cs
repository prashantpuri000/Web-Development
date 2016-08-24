using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using e_learning.controller;
using System.Data.SqlClient;
using System.Data;
namespace e_learning
{
    public partial class WebForm21 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack == false)
            {
                gettruefalseQuiz();
            }
        }

        public void gettruefalseQuiz()
        {
            connection.connect();
            connection.cmd = new SqlCommand("select distinct quizname from tureFalseQuiz t,student_course sc where sc.std=" + connection.userid+" and sc.course_id=t.cid");
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
            string quiz = e.CommandArgument.ToString();
            Session["quiz"] = quiz;
            Server.Transfer("StartQuiz.aspx");

        }

    }
}