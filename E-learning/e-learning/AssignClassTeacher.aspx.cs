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
    public partial class WebForm11 : System.Web.UI.Page
    {
        public static DataTable dt = new DataTable();
        public static DataTable dt1 = new DataTable();
        protected void Page_Load(object sender, EventArgs e)
        {
            
            if (Page.IsPostBack == false)
            {
                getprg();
                getClass();
                getCourse();
                getteachers();
                dt.Columns.Add("pid", typeof(int));
                dt.Columns.Add("cid", typeof(int)); 
                dt.Columns.Add("courseid", typeof(int));
                dt.Columns.Add("tid", typeof(int));

                dt1.Columns.Add("Program Name", typeof(string));
                dt1.Columns.Add("Class Name", typeof(string));
                dt1.Columns.Add("Course Name", typeof(string));
                dt1.Columns.Add("Teacher Name", typeof(string));
            }
        }
        public void getprg()
        {
            connection.cmd = new SqlCommand("select prg_name,id from program where org_id=" + Int32.Parse(Session["org"].ToString()));
            connection.cmd.Connection = connection.con;

            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = connection.cmd;

            DataSet ds = new DataSet();
            da.Fill(ds);

            DropDownList1.DataSource = ds;
            DropDownList1.DataTextField = "prg_name";
            DropDownList1.DataValueField = "id";
            DropDownList1.DataBind();
        }

        public void getClass()
        {
            connection.cmd = new SqlCommand("select class_name,id from class where org_id=" + Int32.Parse(Session["org"].ToString()));
            connection.cmd.Connection = connection.con;

            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = connection.cmd;

            DataSet ds = new DataSet();
            da.Fill(ds);

            DropDownList2.DataSource = ds;
            DropDownList2.DataTextField = "class_name";
            DropDownList2.DataValueField = "id";
            DropDownList2.DataBind();
        }

        public void getCourse()
        {
            connection.cmd = new SqlCommand("select course_title,id from course where org_id=" + Int32.Parse(Session["org"].ToString()));
            connection.cmd.Connection = connection.con;

            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = connection.cmd;

            DataSet ds = new DataSet();
            da.Fill(ds);

            DropDownList3.DataSource = ds;
            DropDownList3.DataTextField = "course_title";
            DropDownList3.DataValueField = "id";
            DropDownList3.DataBind();
        }
        public void getteachers()
        {
            connection.cmd = new SqlCommand("select fristname,id from teacher_info where org_id=" + Int32.Parse(Session["org"].ToString()));
            connection.cmd.Connection = connection.con;

            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = connection.cmd;

            DataSet ds = new DataSet();
            da.Fill(ds);

            DropDownList4.DataSource = ds;
            DropDownList4.DataTextField = "fristname";
            DropDownList4.DataValueField = "id";
            DropDownList4.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            dt1.Rows.Add(DropDownList1.SelectedItem.ToString(), DropDownList2.SelectedItem.ToString(), DropDownList3.SelectedItem.ToString(), DropDownList4.SelectedItem.ToString());
            dt.Rows.Add(Int32.Parse(DropDownList1.SelectedValue.ToString()), Int32.Parse(DropDownList2.SelectedValue.ToString()), Int32.Parse(DropDownList3.SelectedValue.ToString()), Int32.Parse(DropDownList4.SelectedValue.ToString()));
            GridView1.DataSource = dt1;
            GridView1.DataBind();
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            foreach (DataRow row in dt.Rows)
            {
                connection.cmd = new SqlCommand("insert into assign_class(teacher_id,org_id,assign_date,status,prg_id,class_id,course_id) values(" + Int32.Parse(row[3].ToString()) + "," + Int32.Parse(Session["org"].ToString()) + "," + "'" + System.DateTime.Now + "'"+",'N'," + Int32.Parse(row[0].ToString()) + "," + Int32.Parse(row[1].ToString()) + "," + Int32.Parse(row[2].ToString()) + ")");
                connection.cmd.Connection = connection.con;
                connection.cmd.ExecuteNonQuery();


            }
        }
    }
}