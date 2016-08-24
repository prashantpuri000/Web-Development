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
    public partial class WebForm16 : System.Web.UI.Page
    {
      

        protected void Page_Load(object sender, EventArgs e)
        {
           
            try
            {
                Label6.Text = Session["std"].ToString();
                getimge();
                getassignCourses();
                getcourse();
               
            }
            catch (Exception ex)
            {

            }

        }
        public void getassignCourses()
        {
            try
            {
                connection.cmd = new SqlCommand("select c.course_title as [Course Name] from course as c,student_course as std where c.Id=std.course_id and std.std=" + connection.userid);
                connection.cmd.Connection = connection.con;

                SqlDataAdapter da = new SqlDataAdapter();
                da.SelectCommand = connection.cmd;
                DataSet ds = new DataSet();
                da.Fill(ds);
                GridView2.DataSource = ds;
                GridView2.DataBind();
            }
            catch (Exception ex)
            {

            }

        }
        public void getimge()
        {
            try
            {
                connection.cmd = new SqlCommand("select image from studentimage where std=" + connection.userid);
                connection.cmd.Connection = connection.con;
                string imagepath = connection.cmd.ExecuteScalar().ToString();
                Image1.ImageUrl = "/Studentimages/" + imagepath;
            }
            catch (Exception ex)
            {
            }

        }
        public int check()
        {
            try
            {
                connection.cmd = new SqlCommand("select count(*) from studentimage where std=" + connection.userid);
                connection.cmd.Connection = connection.con;
                int i = Int32.Parse(connection.cmd.ExecuteScalar().ToString());
                return i;
            }
            catch (Exception ex)
            {
                return 0;
            }
        }
        public void getcourse()
        {
            try
            {
                connection.connect();
                connection.cmd = new SqlCommand("select c.course_title,c.price,c.start_date,c.id from course as c ");
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

        protected void Button1_Click1(object sender, EventArgs e)
        {

            try
            {
                string filename = FileUpload1.FileName;
                string path = Server.MapPath("/Studentimages/" + filename);
                if (FileUpload1.HasFile)
                {

                    int a = check();
                    if (a == 0)
                    {
                        FileUpload1.SaveAs(path);
                        connection.cmd = new SqlCommand("insert into studentimage values(" + connection.userid + ",'" + filename + "')");
                        connection.cmd.Connection = connection.con;
                        connection.cmd.ExecuteNonQuery();
                    }
                    else
                    {


                        connection.cmd = new SqlCommand("update studentimage set image='" + filename + "' where std=" + connection.userid );
                        connection.cmd.Connection = connection.con;
                        connection.cmd.ExecuteNonQuery();

                        getimge();
                    }

                }
            }
            catch (Exception ex)
            {

            }

        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            try
            {
               
                connection.cmd = new SqlCommand("insert into student_course values(" + connection.userid + ",'" + Int32.Parse(e.CommandArgument.ToString()) + "')");
                connection.cmd.Connection = connection.con;
                connection.cmd.ExecuteNonQuery();
            }
            catch (Exception ex)
            {

            }
        }
    }
}