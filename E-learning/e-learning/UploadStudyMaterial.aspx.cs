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
    public partial class WebForm13 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                getcourse();
            }
            catch (Exception ex)
            {

            }

        }
        public void getcourse()
        {
            connection.cmd = new SqlCommand("select distinct c.course_title as title,c.id as id from assign_course_teacher ast,course c  where ast.teacher_id=" + connection.userid);
            connection.cmd.Connection = connection.con;

            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = connection.cmd;
            DataSet ds = new DataSet();
            da.Fill(ds);
            DropDownList1.DataSource = ds;
            DropDownList1.DataTextField = "title";
            DropDownList1.DataValueField = "id";
            DropDownList1.DataBind();


        }
        protected void Button1_Click(object sender, EventArgs e)
        {
             string filename = FileUpload1.FileName;
            string path = Server.MapPath("/studymaterial/" + filename);
            if (FileUpload1.HasFile)
            {
                FileUpload1.SaveAs(path);
                connection.cmd = new SqlCommand("insert into studyMaterial values(" + connection.userid + "," + Int32.Parse(DropDownList1.SelectedValue.ToString()) + ",'" + filename + "')");
                connection.cmd.Connection = connection.con;
                connection.cmd.ExecuteNonQuery();
            }
        }
    }
}