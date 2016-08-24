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
    public partial class WebForm10 : System.Web.UI.Page
    {
        public static DataTable dt=new DataTable();

        
        protected void Page_Load(object sender, EventArgs e)
        {
            getPrograms();
            if (Page.IsPostBack == false)
            {
                dt.Columns.Add("prgname", typeof(string));
                dt.Columns.Add("pid", typeof(int));
                dt.Columns.Add("name", typeof(string));
                dt.Columns.Add("start_date", typeof(DateTime));

               
            }

        }
        public void getPrograms()
        {
            connection.connect();
            connection.cmd = new SqlCommand("select * from program where org_id=" + Int32.Parse(Session["org"].ToString()));
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

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {

               dt.Rows.Add(DropDownList1.SelectedItem.ToString(),Int32.Parse(DropDownList1.SelectedValue.ToString()), txtname.Text, Calendar1.SelectedDate);

                GridView1.DataSource = dt;
                GridView1.DataBind();
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
            foreach (DataRow row in dt.Rows)
            {
                connection.cmd = new SqlCommand("insert into class(prg_id,class_name,start_date,org_id) values(" + Int32.Parse(row[1].ToString()) + "," +"'"+ row[2].ToString()+ "'"+ "," +"'"+ System.DateTime.Parse(row[3].ToString())+"'"+"," + Int32.Parse(Session["org"].ToString())+")");
                connection.cmd.Connection = connection.con;
                connection.cmd.ExecuteNonQuery();


            }
        }
    }
}