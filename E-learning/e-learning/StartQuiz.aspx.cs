using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using e_learning.controller;
using System.Data.SqlClient;
using System.Data;
using System.Threading;
namespace e_learning
{
    public partial class WebForm22 : System.Web.UI.Page
    {
        public Thread t;
        public delegate void updatehandler();
        DataSet ds;
        static int count;
        static int tick = 0;
        static int right;
        static int wrong; 
        protected void Page_Load(object sender, EventArgs e)
        {
            getquestions();
            if (Page.IsPostBack == false)
            {
                tick = 0;
                count = 0;
                getnextquestion();
               
            }

        }
        public void settime()
        {

        }
        public void gettime()
        {
           

        }
        
        public void getquestions()
        {
            if (connection.con.State == System.Data.ConnectionState.Closed)
            {

                connection.connect();
            }
            connection.cmd = new SqlCommand("select question,ans from tureFalseQuiz where quizname='"+Session["quiz"]+"'");
            connection.cmd.Connection = connection.con;
            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = connection.cmd;
            ds = new DataSet();
            da.Fill(ds);

        }
        public void getnextquestion()
        {
            try
            {
                if (count == ds.Tables[0].Rows.Count)
                {
                    Label3.Visible = true;
                }
                else
                {
                    Label1.Text = ds.Tables[0].Rows[count][0].ToString();
                    count++;
                }
            }
            catch (Exception ex)
            {

                Label3.Visible = true;
                Timer1.Dispose();
                Button1.Enabled = false;
                Label4.Visible = true;
                Label4.Text = right.ToString();
                Label5.Visible = true;
                Label6.Visible = true; Label7.Visible = true;
                Label7.Text = ds.Tables[0].Rows.Count.ToString();
            }
        }
        
        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                if (ds.Tables[0].Rows[count][1].ToString() == DropDownList1.Text)
                {
                    
                    right++;
                    System.Diagnostics.Trace.WriteLine(right.ToString());
                }

                getnextquestion();
                count++;
                tick = 0;
            }
            catch (Exception ex)
            {

            }



        }

        protected void Timer1_Tick(object sender, EventArgs e)
        {
            tick++;
            Label2.Text = System.DateTime.Now.ToLongTimeString();
            if (tick == 5)
            {
                getnextquestion();
                count++;
                tick = 0;
            }
                
        }

    }
}