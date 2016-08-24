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
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            getTeacher();
            getCourses();
            getProgram();
            getStudents();
            getClass();
        }
        public void getTeacher()
        {
            connection.connect();
            connection.cmd = new SqlCommand("select count(*) from teacher_info where org_id="+Int32.Parse(Session["org"].ToString()));
            connection.cmd.Connection = connection.con;
            Label2.Text = connection.cmd.ExecuteScalar().ToString();
        }
        public void getCourses()
        {
            connection.cmd = new SqlCommand("select count(*) from course where org_id=" + Int32.Parse(Session["org"].ToString()));
            connection.cmd.Connection = connection.con;
            Label4.Text = connection.cmd.ExecuteScalar().ToString();
        }

        public void getProgram()
        {
            connection.cmd = new SqlCommand("select count(*) from program where org_id=" + Int32.Parse(Session["org"].ToString()));
            connection.cmd.Connection = connection.con;
            Label5.Text = connection.cmd.ExecuteScalar().ToString();
        }
        public void getStudents()
        {
            connection.cmd = new SqlCommand("select count(orgstd.id) from orgStudents as orgstd ,student_reg_info as std  where orgstd.student_id=std.id and org_id=" + Int32.Parse(Session["org"].ToString()));
            connection.cmd.Connection = connection.con;
            Label1.Text = connection.cmd.ExecuteScalar().ToString();
        }
        public void getClass()
        {
            connection.cmd = new SqlCommand("select count(*) from class where org_id=" + Int32.Parse(Session["org"].ToString()));
            connection.cmd.Connection = connection.con;
            Label3.Text = connection.cmd.ExecuteScalar().ToString();
        }
        protected void LinkButton17_Click(object sender, EventArgs e)
        {
            Server.Transfer("TeacherReg.aspx");
        }

        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            try
            {

                Server.Transfer("AddProgram.aspx");



            }
            catch(Exception ex)
            {
            }
        }

        protected void LinkButton8_Click(object sender, EventArgs e)
        {
            Server.Transfer("AddCategory.aspx");
        }

        protected void LinkButton7_Click(object sender, EventArgs e)
        {
            
            Server.Transfer("AddCourses.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                connection.cmd = new SqlCommand("insert into news(org_id,news,created_date) values('" + Session["org"] + "','" + TextBox1.Text + "'," + "'"+System.DateTime.Now.ToString() + "')");
                connection.cmd.Connection = connection.con;
                connection.cmd.ExecuteNonQuery();
            }
            catch (Exception ex)
            {

            }

        }

        protected void LinkButton12_Click(object sender, EventArgs e)
        {

        }

        protected void LinkButton10_Click(object sender, EventArgs e)
        {
            Server.Transfer("ApproveCourses.aspx");
        }

        protected void LinkButton20_Click(object sender, EventArgs e)
        {
            Server.Transfer("AssignCourses.aspx");
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Server.Transfer("CreateClass.aspx");
        }

        protected void LinkButton21_Click(object sender, EventArgs e)
        {
            Server.Transfer("AssignClassTeacher.aspx");
        }
    }
}