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
    public partial class WebForm20 : System.Web.UI.Page
    {
        public static string quizname;
        public static string course;
        public bool flag = false;
        public DataTable dt;

        protected void Page_Load(object sender, EventArgs e)
        {
            
            if (Page.IsPostBack == false)
            {
                    dt = new DataTable();
                    dt.Columns.Add("qus", typeof(string));
                    dt.Columns.Add("ans", typeof(string));

                
                getcourse();
            }
        }
        public void getcourse()
        {
            try
            {
                connection.connect();
                connection.cmd = new SqlCommand("select distinct c.course_title as title,c.id as id from assign_course_teacher as a, course as c where a.course_id=c.id and teacher_id=" + connection.userid);
                connection.cmd.Connection = connection.con;
                SqlDataAdapter da = new SqlDataAdapter();
                da.SelectCommand = connection.cmd;
                DataSet ds = new DataSet();
                da.Fill(ds);
                DropDownList1.DataSource = ds.Tables[0].DefaultView;
                DropDownList1.DataTextField = "title";
                DropDownList1.DataValueField = "id";
                DropDownList1.DataBind();
            }
            catch (Exception ex)
            {

            }

        }
        public void getquestions()
        {
            connection.connect();
            connection.cmd = new SqlCommand("select question,ans from tureFalseQuiz where quizname='" + (TextBox2.Text + connection.userid.ToString()) + "'");
            connection.cmd.Connection = connection.con;
            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = connection.cmd;
            DataSet ds = new DataSet();
            da.Fill(ds);

            GridView1.DataSource =ds.Tables[0].DefaultView;
            GridView1.DataBind();
        }
        protected void cmdadd_Click(object sender, EventArgs e)
        {
            try
            {
               
                connection.connect();
                connection.cmd = new SqlCommand("insert into tureFalseQuiz values(" + connection.userid + "," + Int32.Parse(DropDownList1.SelectedValue.ToString()) + ",'" + (TextBox1.Text ) + "','" + DropDownList2.Text + "','" +( TextBox2.Text + connection.userid.ToString()) +"')");
                connection.cmd.Connection = connection.con;
                connection.cmd.ExecuteNonQuery();

                
                getquestions();
            }
            catch (Exception ex)
            {

            }
        }
    }
}