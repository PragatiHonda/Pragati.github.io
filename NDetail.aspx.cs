using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;
using System.Globalization;

namespace hari
{
    public partial class NDetail : System.Web.UI.Page
    {
        static Boolean validdate;
        protected void Page_Load(object sender, EventArgs e)
        {
            Button1.Enabled = true;
            {
                if (Session["UserName"] != null)
                {
                    if (!IsPostBack)
                    {
                       

                    }
                }
                else
                {
                    Response.Redirect("Default.aspx");

                }
            }
        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {
            {
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["pragatihonda_DB"].ConnectionString);
                if (con.State == ConnectionState.Closed) { con.Open(); }
                SqlCommand cmd = new SqlCommand("select ID,CustomerName,RegistrationNo,ContactNo,AdmitedTo,MfgDate,Model,Status,Box,FrontLaserCode,RearLaserCode,DeliveryDate,FrameNo,EngineNo,ModelName,IntryDate,Invoice,OrederType,ReceivedDate,VARIANT,COLOR,PlantCode,VehicleCatogary,RcRecieved,RcGiveCustomer from Number where RegistrationNo=@ID1", con);
                cmd.Parameters.AddWithValue("@ID1", TextBox1 .Text.Trim());
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataSet ds = new DataSet();
                DataTable dt = new DataTable();
                da.Fill(ds, "dt");
                con.Close();
                if (ds.Tables[0].Rows.Count > 0)
                {
                    Button1.Enabled = true;
                    TextBox2.Text = ds.Tables[0].Rows[0]["ID"].ToString();
                    TextBox3.Text = ds.Tables[0].Rows[0]["AdmitedTo"].ToString();
                    TextBox5.Text = ds.Tables[0].Rows[0]["CustomerName"].ToString();
                    TextBox7.Text = ds.Tables[0].Rows[0]["MfgDate"].ToString();
                    TextBox3.Text = ds.Tables[0].Rows[0]["RegistrationNo"].ToString();
                    TextBox6.Text = ds.Tables[0].Rows[0]["ContactNo"].ToString();
                    TextBox8.Text = ds.Tables[0].Rows[0]["VehicleCatogary"].ToString();
                    TextBox9.Text = ds.Tables[0].Rows[0]["Model"].ToString();
                    TextBox11.Text = ds.Tables[0].Rows[0]["FrameNo"].ToString();
                    TextBox12.Text = ds.Tables[0].Rows[0]["EngineNo"].ToString();
                    TextBox10.Text = ds.Tables[0].Rows[0]["ModelName"].ToString();
                    TextBox13.Text = ds.Tables[0].Rows[0]["VARIANT"].ToString();
                    TextBox14.Text = ds.Tables[0].Rows[0]["COLOR"].ToString();
                    TextBox15.Text = ds.Tables[0].Rows[0]["PlantCode"].ToString();
                    TextBox4.Text = ds.Tables[0].Rows[0]["Invoice"].ToString();
                    TextBox16.Text = ds.Tables[0].Rows[0]["OrederType"].ToString();
                    TextBox17.Text = ds.Tables[0].Rows[0]["IntryDate"].ToString();
                    TextBox18.Text = ds.Tables[0].Rows[0]["Status"].ToString();
                    TextBox19.Text = ds.Tables[0].Rows[0]["Box"].ToString();
                    TextBox20.Text = ds.Tables[0].Rows[0]["DeliveryDate"].ToString();
                    TextBox21.Text = ds.Tables[0].Rows[0]["FrontLaserCode"].ToString();
                    TextBox22.Text = ds.Tables[0].Rows[0]["RearLaserCode"].ToString();
                    TextBox23.Text = ds.Tables[0].Rows[0]["ReceivedDate"].ToString();
                    TextBox24.Text = ds.Tables[0].Rows[0]["RcRecieved"].ToString();
                    TextBox25.Text = ds.Tables[0].Rows[0]["RcGiveCustomer"].ToString();

                }
                else
                {
                    // Button1.Enabled = false;
                    TextBox2.Text = string.Empty;
                    TextBox3.Text = string.Empty;
                }
                con.Close();
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            {
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["pragatihonda_DB"].ConnectionString);
                if (con.State == ConnectionState.Closed) { con.Open(); }
                SqlCommand cmd = new SqlCommand("update Number set CustomerName=@CustomerName,RegistrationNo=@RegistrationNo,ContactNo=@ContactNo,MfgDate=@MfgDate,Model=@Model,Status=@Status,Box=@Box,FrontLaserCode=@FrontLaserCode,RearLaserCode=@RearLaserCode,DeliveryDate=@DeliveryDate,FrameNo=@FrameNo,EngineNo=@EngineNo,ModelName=@ModelName,IntryDate=@IntryDate,Invoice=@Invoice,OrederType=@OrederType,ReceivedDate=@ReceivedDate,VARIANT=@VARIANT,COLOR=@COLOR,PlantCode=@PlantCode,VehicleCatogary=@VehicleCatogary,RcRecieved=@RcRecieved,RcGiveCustomer=@RcGiveCustomer where RegistrationNo=@ID1", con);
             
                cmd.Parameters.AddWithValue("@ID1", TextBox1.Text.Trim());
              
                cmd.Parameters.AddWithValue("@RegistrationNo", TextBox3.Text);
                cmd.Parameters.AddWithValue("@Invoice", TextBox4.Text);
                cmd.Parameters.AddWithValue("@CustomerName", TextBox5.Text);
                cmd.Parameters.AddWithValue("@ContactNo", TextBox6.Text);
                cmd.Parameters.AddWithValue("@MfgDate", TextBox7.Text);
                cmd.Parameters.AddWithValue("@VehicleCatogary", TextBox8.Text);
                cmd.Parameters.AddWithValue("@Model", TextBox9.Text);
                cmd.Parameters.AddWithValue("@ModelName", TextBox10.Text);
                cmd.Parameters.AddWithValue("@FrameNo", TextBox11.Text);
                cmd.Parameters.AddWithValue("@EngineNo", TextBox12.Text);
                cmd.Parameters.AddWithValue("@VARIANT", TextBox13.Text);
                cmd.Parameters.AddWithValue("@COLOR", TextBox14.Text);
                cmd.Parameters.AddWithValue("@PlantCode", TextBox15.Text);
                cmd.Parameters.AddWithValue("@OrederType", TextBox16.Text);
                cmd.Parameters.AddWithValue("@IntryDate", DateTime.ParseExact(TextBox17.Text, "dd/MM/yyyy", null).ToString("yyyy/MM/dd HH:mm:ss"));
                cmd.Parameters.AddWithValue("@Status", TextBox18.Text);
                cmd.Parameters.AddWithValue("@Box", TextBox19.Text);
                cmd.Parameters.AddWithValue("@DeliveryDate", TextBox20.Text);
                cmd.Parameters.AddWithValue("@FrontLaserCode", TextBox21.Text);
                cmd.Parameters.AddWithValue("@RearLaserCode", TextBox22.Text);
               // cmd.Parameters.AddWithValue("@ReceivedDate", TextBox23.Text);
                cmd.Parameters.AddWithValue("@RcRecieved", TextBox24.Text);
                cmd.Parameters.AddWithValue("@RcGiveCustomer", TextBox25.Text);
           
                cmd.Parameters.AddWithValue("@ReceivedDate", DateTime.ParseExact(TextBox23.Text, "dd/MM/yyyy", null).ToString("yyyy/MM/dd HH:mm:ss"));
            
                cmd.ExecuteNonQuery();
                con.Close();
                // DateTime.ParseExact(TextBox8.Text, "dd/MM/yyyy", null).ToString("yyyy/MM/dd HH:mm:ss"));
                Response.Write("<script>alert('Update successfully')</script>");

                TextBox1.Text = string.Empty;
                TextBox2.Text = string.Empty;
                TextBox3.Text = string.Empty;
                TextBox4.Text = string.Empty;
                TextBox5.Text = string.Empty;
                TextBox6.Text = string.Empty;
                TextBox7.Text = string.Empty;
                TextBox8.Text = string.Empty;
                TextBox9.Text = string.Empty;
                TextBox10.Text = string.Empty;
                TextBox11.Text = string.Empty;
                TextBox12.Text = string.Empty;
                TextBox13.Text = string.Empty;
                TextBox14.Text = string.Empty;
                TextBox15.Text = string.Empty;
                TextBox16.Text = string.Empty;
                TextBox17.Text = string.Empty;
                TextBox18.Text = string.Empty;
                TextBox19.Text = string.Empty;
                TextBox20.Text = string.Empty;
                TextBox21.Text = string.Empty;
                TextBox22.Text = string.Empty;
                TextBox23.Text = string.Empty;
                TextBox24.Text = string.Empty;
                TextBox25.Text = string.Empty;

            }
        }

        protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
        {
            DateTime d;
            args.IsValid = DateTime.TryParseExact(args.Value, "yyyy/MM/dd", CultureInfo.InvariantCulture, DateTimeStyles.None, out d);
            validdate = DateTime.TryParseExact(args.Value, "yyyy/MM/dd", CultureInfo.InvariantCulture, DateTimeStyles.None, out d);

        }

        protected void CustomValidator2_ServerValidate(object source, ServerValidateEventArgs args)
        {
            DateTime d;
            args.IsValid = DateTime.TryParseExact(args.Value, "yyyy/MM/dd", CultureInfo.InvariantCulture, DateTimeStyles.None, out d);
            validdate = DateTime.TryParseExact(args.Value, "yyyy/MM/dd", CultureInfo.InvariantCulture, DateTimeStyles.None, out d);

        }

       
    }
}