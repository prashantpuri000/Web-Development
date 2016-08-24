using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Data;
using System.Data.SqlClient;
using e_learning.controller;
namespace e_learning
{
    public partial class WebForm12 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                Label1.Text = Session["teacher"].ToString();
                getimge();
                getassignCourses();
            }
            catch (Exception ex)
            {

            }


        }
        public void getassignCourses()
        {
            connection.cmd = new SqlCommand("select distinct c.course_title as [Assigned Course Name],c.start_date as [Start Date] from assign_course_teacher ast,course c  where ast.teacher_id=" + connection.userid);
            connection.cmd.Connection = connection.con;

            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = connection.cmd;
            DataSet ds = new DataSet();
            da.Fill(ds);
            GridView1.DataSource = ds;
            GridView1.DataBind();

        }
        public void getimge()
        {
            connection.cmd = new SqlCommand("select image from teacherimage where tid=" + connection.userid);
            connection.cmd.Connection = connection.con;
            string imagepath = connection.cmd.ExecuteScalar().ToString();
            Image1.ImageUrl = "/teacherimages/"+imagepath;
            
        }
        public int check()
        {
            connection.cmd = new SqlCommand("select count(*) from teacherimage where tid=" + connection.userid);
            connection.cmd.Connection = connection.con;
            int i = Int32.Parse(connection.cmd.ExecuteScalar().ToString());
            return i;
        }
       
        protected void btmupload_Click1(object sender, EventArgs e)
        {
            try
            {
                string filename = FileUpload2.FileName;
                string path = Server.MapPath("/teacherimages/" + filename);
                if (FileUpload2.HasFile)
                {

                    int a = check();
                    if (a == 0)
                    {
                        FileUpload2.SaveAs(path);
                        connection.cmd = new SqlCommand("insert into teacherimage values(" + connection.userid + ",'" + filename + "')");
                        connection.cmd.Connection = connection.con;
                        connection.cmd.ExecuteNonQuery();
                    }
                    else
                    {


                        connection.cmd = new SqlCommand("update teacherimage set image='" + filename + "' where tid=" + connection.userid + ")");
                        connection.cmd.Connection = connection.con;
                        connection.cmd.ExecuteNonQuery();


                    }

                }
            }
            catch (Exception ex)
            {

            }
        }
    }
}