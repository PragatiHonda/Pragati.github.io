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
    public partial class AddNewData : System.Web.UI.Page
    {
        static Boolean validdate;
        public static String CS = ConfigurationManager.ConnectionStrings["pragatihonda_DB"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["UserName"] != null)
            {
                if (!IsPostBack)
                {


                  
                    BindMainNumber();
                    TextBox25.Text = " Pragati Automobiles";
                    TextBox26.Text = "MP15SG01 ";
                    TextBox27.Text = "MADHYA PRADESH";
                    TextBox28.Text = ("MR.RAVINDRA WASKALE 9407478425");
                    TextBox34.Text = ("PRIVATE");
                }
            }
            else
            {
                Response.Redirect("Default.aspx");

            }


            {

            }
        }
        private void BindNumberReapter()
        {
            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["pragatihonda_DB"].ConnectionString))
            {
                using (SqlCommand cmd = new SqlCommand("select * from Number", con))
                {
                    using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                    {
                        DataTable dt = new DataTable();
                        sda.Fill(dt);

                    }
                }
            }
        }
        private void BindMainNumber()
        {
            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["pragatihonda_DB"].ConnectionString))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("Select ID from Number", con);

                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataSet ds = new DataSet();
                DataTable dt = new DataTable();

                da.Fill(ds, "dt");
                con.Close();
                if (ds.Tables[0].Rows.Count < 1)
                {
                    TextBox24.Text = "SR00001";

                }
                else
                {



                    using (SqlConnection con1 = new SqlConnection(ConfigurationManager.ConnectionStrings["pragatihonda_DB"].ConnectionString))
                    {
                        con.Open();
                        SqlCommand cmd1 = new SqlCommand("Select ID from Number", con1);

                        SqlDataAdapter da1 = new SqlDataAdapter(cmd1);
                        DataSet ds1 = new DataSet();
                        DataTable dt1 = new DataTable();

                        da1.Fill(ds1, "dt1");
                        con1.Close();
                        da1.Fill(ds1);
                        int maxsno = 00;
                        var part1 = "0";
                        var part2 = "0";

                        foreach (DataRow dr in ds.Tables[0].Rows)
                        {

                            var ID = dr["ID"].ToString();
                            part1 = ID.Substring(0, 2);


                            part2 = ID.Substring(2, (ID.Length) - 2);


                            if (maxsno < Convert.ToInt16(part2))

                            {
                                maxsno = Convert.ToInt16(part2);

                            }


                        }

                        maxsno = maxsno + 1;

                        var newserial = part1 + maxsno.ToString("00000");


                        TextBox24.Text = newserial.ToString();

                        con1.Close();

                    }

                }
            }
        }

       

        protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
        {
            
        }

        protected void CustomValidator2_ServerValidate(object source, ServerValidateEventArgs args)
        {
            
        }

        protected void CustomValidator3_ServerValidate(object source, ServerValidateEventArgs args)
        {
             }

        protected void TextBox25_TextChanged(object sender, EventArgs e)
        {
          //  TextBox25.Text = "hai";
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            // if (validdate == true)
            try
            {

                SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["pragatihonda_DB"].ConnectionString);
                SqlCommand cmd = new SqlCommand("INSERT INTO Number(ID,DealerName,Dealercode,State,DealerPerson,Invoice,FrameNo,EngineNo,PlantCode,OrederType,VehicleCatogary,ModelName,Model,MfgDate,RegistrationNo,DateOfRegistration,CustomerName,ContactNo,EmailId,Status,IntryDate,VARIANT,COLOR) Values (@ID,@DealerName,@Dealercode,@State,@DealerPerson,@Invoice,@FrameNo,@EngineNo,@PlantCode,@OrederType,@VehicleCatogary,@ModelName,@Model,@MfgDate,@RegistrationNo,@DateOfRegistration,@CustomerName,@ContactNo,@EmailId,@Status,@IntryDate,@VARIANT,@COLOR)", con);
              

                cmd.Parameters.AddWithValue("ID", TextBox24.Text);
                cmd.Parameters.AddWithValue("DealerName", TextBox25.Text);
                cmd.Parameters.AddWithValue("Dealercode", TextBox26.Text);
                cmd.Parameters.AddWithValue("State", TextBox27.Text);
                cmd.Parameters.AddWithValue("DealerPerson", TextBox28.Text);
                cmd.Parameters.AddWithValue("Invoice", TextBox29.Text);
                cmd.Parameters.AddWithValue("FrameNo", TextBox30.Text);
                cmd.Parameters.AddWithValue("EngineNo", TextBox31.Text);
                cmd.Parameters.AddWithValue("PlantCode", TextBox32.Text);
                cmd.Parameters.AddWithValue("OrederType", TextBox33.Text);
                cmd.Parameters.AddWithValue("ModelName", TextBox36.Text);
                cmd.Parameters.AddWithValue("Model", TextBox45.Text);
                cmd.Parameters.AddWithValue("MfgDate", TextBox35.Text);
                cmd.Parameters.AddWithValue("RegistrationNo", TextBox37.Text);
                cmd.Parameters.AddWithValue("DateOfRegistration", TextBox38.Text);
                cmd.Parameters.AddWithValue("CustomerName", TextBox39.Text);
                cmd.Parameters.AddWithValue("ContactNo", TextBox40.Text);
                cmd.Parameters.AddWithValue("EmailId", TextBox41.Text);
                  cmd.Parameters.AddWithValue("VARIANT", TextBox42.Text);
                 cmd.Parameters.AddWithValue("COLOR", TextBox43.Text);
                cmd.Parameters.AddWithValue("VehicleCatogary", TextBox34.Text);
                cmd.Parameters.AddWithValue("IntryDate", DateTime.ParseExact(TextBox44.Text, "dd/MM/yyyy", null).ToString("yyyy/MM/dd HH:mm:ss"));

               cmd.Parameters.AddWithValue("Status", DropDownList1.Text);

                try
                {
                    con.Open();
                    cmd.ExecuteNonQuery();

                    Response.Write("<script> alert('DATA Added Successfully ');  </script>");
                    TextBox24.Text = string.Empty;
                    TextBox25.Text = string.Empty;
                    TextBox26.Text = string.Empty;
                    TextBox27.Text = string.Empty;
                    TextBox28.Text = string.Empty;
                    TextBox29.Text = string.Empty;
                    TextBox30.Text = string.Empty;
                    TextBox31.Text = string.Empty;
                    TextBox32.Text = string.Empty;
                    TextBox33.Text = string.Empty;
                    TextBox34.Text = string.Empty;
                    TextBox35.Text = string.Empty;
                    TextBox36.Text = string.Empty;
                    TextBox37.Text = string.Empty;
                    TextBox38.Text = string.Empty;
                    TextBox39.Text = string.Empty;
                    TextBox40.Text = string.Empty;
                    TextBox41.Text = string.Empty;
                    TextBox42.Text = string.Empty;
                    TextBox43.Text = string.Empty;
                    TextBox44.Text = string.Empty;
                    TextBox45.Text = string.Empty;

                    con.Close();
                    BindMainNumber();

                }
                catch (Exception ex)
                {

                }
                finally
                {
                    con.Close();
                }


            }
            catch (Exception ex)
            {

            }
        }

        protected void CustomValidator4_ServerValidate(object source, ServerValidateEventArgs args)
        {

            DateTime d;
            args.IsValid = DateTime.TryParseExact(args.Value, "dd/MM/yyyy", CultureInfo.InvariantCulture, DateTimeStyles.None, out d);
            validdate = DateTime.TryParseExact(args.Value, "dd/MM/yyyy", CultureInfo.InvariantCulture, DateTimeStyles.None, out d);

        }

        protected void TextBox30_TextChanged(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["pragatihonda_DB"].ConnectionString);
            string query = "select FrameNo from [Number] where FrameNo = '" + ((TextBox)View1.FindControl("TextBox30")).Text + "'";
            SqlCommand cmd = new SqlCommand(query, con); con.Open();
            SqlDataReader dr = cmd.ExecuteReader();
            dr.Read();
            if (dr.HasRows == true)
            {
                Response.Write("<script>alert('Fram Already Exists')</script>");
                TextBox30.Text = string.Empty;
              
                BindMainNumber();
            }
            else
            {

                SqlConnection con1 = new SqlConnection(ConfigurationManager.ConnectionStrings["pragatihonda_DB"].ConnectionString);
                if (con1.State == ConnectionState.Closed) { con1.Open(); }
                SqlCommand cmd1 = new SqlCommand("select Name,Engine,Contact,Invoice,Color,MFGDate,Model from RtoData where Frame=@ID2", con1);
                cmd1.Parameters.AddWithValue("@ID2", TextBox30.Text.Trim());
                SqlDataAdapter da1 = new SqlDataAdapter(cmd1);
                DataSet ds1 = new DataSet();
                DataTable dt1 = new DataTable();
                da1.Fill(ds1, "dt1");
                con1.Close();
                if (ds1.Tables[0].Rows.Count > 0)

                {

                    TextBox39.Text = ds1.Tables[0].Rows[0]["Name"].ToString();
                    TextBox35.Text = ds1.Tables[0].Rows[0]["MFGDate"].ToString();
                     TextBox36.Text = ds1.Tables[0].Rows[0]["Model"].ToString();
                    TextBox40.Text = ds1.Tables[0].Rows[0]["Contact"].ToString();
                    TextBox31.Text = ds1.Tables[0].Rows[0]["Engine"].ToString();
                    TextBox29.Text = ds1.Tables[0].Rows[0]["Invoice"].ToString();
                    TextBox43.Text = ds1.Tables[0].Rows[0]["Color"].ToString();


                }

                else
                {
                    TextBox31.Text = string.Empty;
                    TextBox32.Text = string.Empty;
                   TextBox33.Text = string.Empty;
                  
                   TextBox35.Text = string.Empty;
                    TextBox36.Text = string.Empty;
                   TextBox37.Text = string.Empty;
                    TextBox38.Text = string.Empty;
                    TextBox39.Text = string.Empty;
                    TextBox40.Text = string.Empty;
                    TextBox41.Text = string.Empty;
                   TextBox42.Text = string.Empty;
                   TextBox43.Text = string.Empty;
                    TextBox44.Text = string.Empty;


                }
                con1.Close();
            }
        }

    

    protected void TextBox31_TextChanged(object sender, EventArgs e)
        {
           
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["pragatihonda_DB"].ConnectionString);
            string query = "select FrameNo from [Number] where EngineNo = '" + ((TextBox)View1.FindControl("TextBox31")).Text + "'";
            SqlCommand cmd = new SqlCommand(query, con); con.Open();
            SqlDataReader dr = cmd.ExecuteReader();
            dr.Read();
            if (dr.HasRows == true)
            {
                Response.Write("<script>alert('EngineNo Already Exists')</script>");
                TextBox31.Text = string.Empty;
                
                BindMainNumber();
            }
            else
            {
            }
            con.Close();
        }

        protected void TextBox37_TextChanged(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["pragatihonda_DB"].ConnectionString);
            string query = "select FrameNo from [Number] where RegistrationNo = '" + ((TextBox)View1.FindControl("TextBox37")).Text + "'";
            SqlCommand cmd = new SqlCommand(query, con); con.Open();
            SqlDataReader dr = cmd.ExecuteReader();
            dr.Read();
            if (dr.HasRows == true)
            {
                Response.Write("<script>alert('Registration No. Already Exists')</script>");
                TextBox37.Text = string.Empty;

                BindMainNumber();
            }
            else
            {
            }
            con.Close();
        }

        protected void TextBox27_TextChanged(object sender, EventArgs e)
        {

        }
    }
    }
    
    
    




