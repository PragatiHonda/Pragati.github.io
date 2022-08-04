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
    public partial class View : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["UserName"] != null)
            {
                if (!IsPostBack)
                {
                    txtID.Focus ();
                }
            }
            else
            {
                Response.Redirect("Default.aspx");

            }


            {
               
            }
        }
        protected void txtID_TextChanged (object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["pragatihonda_DB"].ConnectionString);
            if (con.State == ConnectionState.Closed) { con.Open(); }
            SqlCommand cmd = new SqlCommand("select Rollno,CustomerName,RegistrationNo,ContactNo,AdmitedTo,MfgDate,Model,Status,Box,FrontLaserCode,RearLaserCode,DeliveryDate,FrameNo,EngineNo,ModelName,IntryDate,Invoice,OrederType,ReceivedDate,VARIANT,COLOR,PlantCode,VehicleCatogary from Number where RegistrationNo=@ID1", con);
            cmd.Parameters.AddWithValue("@ID1", txtID.Text.Trim());


            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            DataTable dt = new DataTable();
            da.Fill(ds, "dt");
            con.Close();
            if (ds.Tables[0].Rows.Count > 0)
            {
                // btnUpdateBrand.Enabled = true;
                
                TextBox2 .Text = ds.Tables[0].Rows[0]["Rollno"].ToString();
                TextBox3.Text = ds.Tables[0].Rows[0]["AdmitedTo"].ToString();
                TextBox4.Text = ds.Tables[0].Rows[0]["CustomerName"].ToString();
                TextBox5.Text = ds.Tables[0].Rows[0]["MfgDate"].ToString();
                TextBox6.Text = ds.Tables[0].Rows[0]["RegistrationNo"].ToString();
                TextBox7.Text = ds.Tables[0].Rows[0]["ContactNo"].ToString();
                TextBox8.Text = ds.Tables[0].Rows[0]["VehicleCatogary"].ToString();
                TextBox9.Text = ds.Tables[0].Rows[0]["Model"].ToString();
                TextBox10.Text = ds.Tables[0].Rows[0]["FrameNo"].ToString();
                TextBox11.Text = ds.Tables[0].Rows[0]["EngineNo"].ToString();
                TextBox12.Text = ds.Tables[0].Rows[0]["ModelName"].ToString();
                TextBox13.Text = ds.Tables[0].Rows[0]["VARIANT"].ToString();
                TextBox14.Text = ds.Tables[0].Rows[0]["COLOR"].ToString();
                TextBox15.Text = ds.Tables[0].Rows[0]["PlantCode"].ToString();
                TextBox16.Text = ds.Tables[0].Rows[0]["Invoice"].ToString();
                TextBox17.Text = ds.Tables[0].Rows[0]["OrederType"].ToString();
                TextBox18.Text = ds.Tables[0].Rows[0]["IntryDate"].ToString();
                TextBox19.Text = ds.Tables[0].Rows[0]["Status"].ToString();
                TextBox20.Text = ds.Tables[0].Rows[0]["Box"].ToString();
                TextBox21.Text = ds.Tables[0].Rows[0]["DeliveryDate"].ToString();
                TextBox22.Text = ds.Tables[0].Rows[0]["FrontLaserCode"].ToString();
                TextBox23.Text = ds.Tables[0].Rows[0]["RearLaserCode"].ToString();
                TextBox24.Text = ds.Tables[0].Rows[0]["ReceivedDate"].ToString();

            }
            else
            {
                // btnUpdateBrand.Enabled = false;
                TextBox2.Text = string.Empty;
                TextBox3.Text = string.Empty;
            }
            con.Close();
        }
        
        }
    }
