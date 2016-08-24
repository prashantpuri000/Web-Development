using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;
namespace e_learning.controller
{
    
    public class connection
    {
        public static SqlConnection con = new SqlConnection(@"data source=SHIV\SQLEXPRESS;initial catalog=elearning;integrated security=true;");
        public static SqlCommand cmd;
        public static int userid;
        public static void connect()
        {
            try
            {
                con.Open();
                cmd = new SqlCommand();
                cmd.Connection = con;
            }
            catch (Exception ex)
            {
                System.Diagnostics.Trace.WriteLine(ex.Message.ToString());
            }

        }
    }
}