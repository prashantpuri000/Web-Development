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
    public partial class home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            getCoursecat();
            getnews();
            getcourse();
        }

        public void getCoursecat()
        {
            try
            {
                connection.connect();
                connection.cmd = new SqlCommand();
                connection.cmd.Connection = connection.con;
                connection.cmd.CommandText = "getcoursecat";
                connection.cmd.CommandType = CommandType.StoredProcedure;
                connection.cmd.ExecuteNonQuery();
                SqlDataAdapter da = new SqlDataAdapter();
                da.SelectCommand = connection.cmd;
                DataSet ds = new DataSet();
                da.Fill(ds);
                GridView1.DataSource = ds.Tables[0];

                GridView1.DataBind();

                connection.con.Close();
            }
            catch (Exception ex)
            {
            }
          
          
           
        }
        public void getnews()
        {
            try
            {
                connection.connect();
                connection.cmd.CommandText = "getnews";
                connection.cmd.CommandType = CommandType.StoredProcedure;

                SqlDataAdapter da = new SqlDataAdapter();
                da.SelectCommand = connection.cmd;
                DataSet ds = new DataSet();
                da.Fill(ds);
                for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
                {
                    ListBox1.Items.Add(ds.Tables[0].Rows[i][0].ToString());
                }


                ListBox1.DataBind();

                connection.con.Close();
            }
            catch (Exception ex)
            {
            }
          

        }
        public void getcourse()
        {
            connection.connect();
            connection.cmd = new SqlCommand("select course_title,price,CONVERT(varchar, start_date, 107) as start_date from course");
            connection.cmd.Connection = connection.con;
            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = connection.cmd;
            DataSet ds = new DataSet();
            da.Fill(ds);
            GridView2.DataSource = ds.Tables[0];

            GridView2.DataBind();


        }
        protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GridView1.PageIndex = e.NewPageIndex;

        }
        public string getuseraccId()
        {
            connection.connect();
            connection.cmd = new SqlCommand("select userid from Acc where username='" + TextBox1.Text+"'");
            connection.cmd.Connection = connection.con;
            string id = connection.cmd.ExecuteScalar().ToString();
            return id;
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                connection.connect();
                connection.cmd.CommandText = "userlogin";
                connection.cmd.CommandType = CommandType.StoredProcedure;
                connection.cmd.Parameters.AddWithValue("@user", TextBox1.Text);
                connection.cmd.Parameters.AddWithValue("@pass", TextBox2.Text);
                SqlDataAdapter da = new SqlDataAdapter();
                da.SelectCommand = connection.cmd;
                DataSet ds = new DataSet();
                da.Fill(ds);

                int i = Int32.Parse(ds.Tables[0].Rows[0][0].ToString());
                if (i == 1)
                {
                    Session["org"] = i.ToString();
                    connection.userid = Int32.Parse(getuseraccId());
                    Server.Transfer("../OrgHome.aspx");
                }
                else if (i == 2)
                {
                    Session["std"] = TextBox1.Text;
                    connection.userid = Int32.Parse(getuseraccId());

                    Server.Transfer("../StudentHome.aspx");

                }
                else if (i == 3)
                {

                    Session["teacher"] = TextBox1.Text;
                    connection.userid = Int32.Parse(getuseraccId());
                    Server.Transfer("../TeacherHome.aspx");

                }
            }
            catch (Exception ex)
            {
            }
        }
    }
}