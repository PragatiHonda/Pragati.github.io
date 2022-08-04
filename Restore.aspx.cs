using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.IO;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;


namespace hari
{
    public partial class Restore : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
         
            }
        

        protected void Button1_Click(object sender, EventArgs e)
        {
           
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            try
            {
                string backlocation = Server.MapPath("~/BackupFolder/");
                String query = "backup database Number to disk='" + backlocation + DateTime.Now.ToString("ddMMyyyy_HHmmss") + ".Bak'";
               using (SqlConnection con   = new SqlConnection(ConfigurationManager.ConnectionStrings["pragatihonda_DB"].ConnectionString))
                    con.Open();
                 //SqlConnection con = new SqlConnection(con);


                SqlCommand cmd = new SqlCommand();
                cmd.CommandText = query;
                
                cmd.ExecuteNonQuery();
                
                Label2.Text = "Backup of Database Has Been Done Successfully";
            }
             
            catch (Exception ex)
            {
                Label2.Text = "Error Occured While Creating Backup of Database Error Code" + ex.ToString();

            }
        }
    }
}