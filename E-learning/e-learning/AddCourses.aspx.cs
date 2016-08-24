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
    public partial class WebForm6 : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
            getcat();
            getprg();
            
        }
        public int cid()
        {
            connection.cmd = new SqlCommand("select max(id) from course");
            connection.cmd.Connection = connection.con;
            int c = Int32.Parse(connection.cmd.ExecuteScalar().ToString());
            return c;
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                int cId = cid();
                string file = FileUpload1.FileName;
                string path = Server.MapPath(file);
                connection.cmd = new SqlCommand();
                connection.cmd.Connection = connection.con;
                connection.cmd.CommandText = "addcourse";
                connection.cmd.CommandType = CommandType.StoredProcedure;
                connection.cmd.Parameters.AddWithValue("@price", double.Parse(TextBox1.Text));
                connection.cmd.Parameters.AddWithValue("@title", TextBox2.Text);
                connection.cmd.Parameters.AddWithValue("@no", Int32.Parse(TextBox3.Text));
                connection.cmd.Parameters.AddWithValue("@path", path);
                connection.cmd.Parameters.AddWithValue("@start", Calendar1.SelectedDate);
                connection.cmd.Parameters.AddWithValue("@duration", (DropDownList1.SelectedItem.ToString()));
                connection.cmd.Parameters.AddWithValue("@cat", Int32.Parse(drpCat.SelectedValue.ToString()));
                connection.cmd.Parameters.AddWithValue("@prg", Int32.Parse(drpPrg.SelectedValue.ToString()));
                connection.cmd.Parameters.AddWithValue("@org", Int32.Parse(Session["org"].ToString()));
                connection.cmd.Parameters.AddWithValue("@date", System.DateTime.Now);
                connection.cmd.Parameters.AddWithValue("@id", (cId+1));
                connection.cmd.ExecuteNonQuery();
                Server.Transfer("OrgHome.aspx");
            }
            catch (Exception ex)
            {
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {

        }

        protected void Button3_Click(object sender, EventArgs e)
        {

        }
        public void getprg()
        {
            connection.cmd = new SqlCommand("select cat_name,id from course_cat where org_id=" + Int32.Parse(Session["org"].ToString()));
            connection.cmd.Connection = connection.con;

            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = connection.cmd;

            DataSet ds = new DataSet();
            da.Fill(ds);

            drpCat.DataSource = ds;
            drpCat.DataTextField = "cat_name";
            drpCat.DataValueField = "id";
            drpCat.DataBind();
        }
        public void getcat()
        {
            connection.cmd = new SqlCommand("select prg_name,id from program where org_id=" + Int32.Parse(Session["org"].ToString()));
            connection.cmd.Connection = connection.con;

            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = connection.cmd;

            DataSet ds = new DataSet();
            da.Fill(ds);

            drpPrg.DataSource = ds;
            drpPrg.DataTextField = "prg_name";
            drpPrg.DataValueField = "id";
            drpPrg.DataBind();

        }
    }
}