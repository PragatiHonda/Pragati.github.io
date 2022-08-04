using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
namespace hari
{
    public partial class Search : System.Web.UI.Page
    {
      
            protected void Page_Load(object sender, EventArgs e)
            {
                if (Session["UserName"] != null)
                {
                    if (!IsPostBack)
                    {
                        BindGridview();
                    }
                }
                else
                {
                    Response.Redirect("Default.aspx");
               
            }
        
         
                {
              
                }
        }
        protected void txtID_TextChanged(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["pragatihonda_DB"].ConnectionString);
            if (con.State == ConnectionState.Closed) { con.Open(); }
            SqlCommand cmd = new SqlCommand("select Box,DeliveryDate,RegistrationNo from Number where RegistrationNo=@ID1", con);
            cmd.Parameters.AddWithValue("@ID1", txtID.Text.Trim());
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            DataTable dt = new DataTable();
            da.Fill(ds, "dt");
            con.Close();
            if (ds.Tables[0].Rows.Count > 0)
            {
                btnUpdateBrand.Enabled = true;
                txtUpdateCatName.Text = ds.Tables[0].Rows[0]["Box"].ToString();
                txtUpdateDate.Text = ds.Tables[0].Rows[0]["DeliveryDate"].ToString();
                Label1.Text = ds.Tables[0].Rows[0]["RegistrationNo"].ToString();
            }
            else
            {
                btnUpdateBrand.Enabled = false;
                txtUpdateCatName.Text = string.Empty;
                txtUpdateDate.Text = string.Empty; 
            }
            con.Close();
        }
        protected void btnUpdateBrand_Click(object sender, EventArgs e)
        {

            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["pragatihonda_DB"].ConnectionString);
            if (con.State == ConnectionState.Closed) { con.Open(); }
            SqlCommand cmd = new SqlCommand("update Number set Box=@Name,DeliveryDate=@Date where RegistrationNo=@ID1", con);
            cmd.Parameters.AddWithValue("@ID1", txtID.Text.Trim());
            cmd.Parameters.AddWithValue("@Name", txtUpdateCatName.Text);
            cmd.Parameters.AddWithValue("@Date", txtUpdateDate.Text);
           
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Write("<script>alert('Update successfully')</script>");
            BindGridview();
            txtID.Text = string.Empty;
            txtUpdateCatName.Text = string.Empty;
            txtUpdateDate.Text = string.Empty;
        }

        private void BindGridview()
        {

            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["pragatihonda_DB"].ConnectionString);
            if (con.State == ConnectionState.Closed) { con.Open(); }
            SqlDataAdapter da = new SqlDataAdapter("select ID,RegistrationNo,CustomerName,FrameNo,Box,Status,DeliveryDate from Number", con);
            DataTable dt = new DataTable();
            da.Fill(dt);
            con.Close();
            if (dt.Rows.Count > 0)
            {
                GridView1.DataSource = dt;
                GridView1.DataBind();
            }

            else
            {
                GridView1.DataSource = null;
                GridView1.DataBind();
            }
        }

        protected void txtUpdateCatName_TextChanged(object sender, EventArgs e)
        {

        }

        protected void txtFilterGrid1Record_TextChanged(object sender, EventArgs e)
        {

        }

        protected void txtFilterGrid1Record_TextChanged1(object sender, EventArgs e)
        {

        }
    }
}
