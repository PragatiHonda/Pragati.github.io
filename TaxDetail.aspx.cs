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
    public partial class WebForm2 : System.Web.UI.Page
    {
        static Boolean validdate;
        protected void Page_Load(object sender, EventArgs e)
        {
          
            {
                if (Session["UserName"] != null)
                {
                    if (!IsPostBack)
                    {
                      //  CustomValidator1.Text = string.Empty;
                       // CustomValidator2.Text = string.Empty;
                       // CustomValidator3.Text = string.Empty;
                       // CustomValidator4.Text = string.Empty;

                    }
                }
                else
                {
                    Response.Redirect("Default.aspx");

                }
            }
        }
        protected void TextBox22_TextChanged(object sender, EventArgs e)
        
            {
      {
                    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["pragatihonda_DB"].ConnectionString);
                    if (con.State == ConnectionState.Closed) { con.Open(); }
                      SqlCommand cmd = new SqlCommand("select  ID,Aria,SRNO,Frame,Engine,Application,Invoice,Name,Contact,Address,cc,Color,MFGDate,TaxAmount,AdditionalFees,WDAmount,TaxPayDate,CampDate,RegNO from RtoData where Application=@ID1", con);

                    cmd.Parameters.AddWithValue("@ID1", TextBox22.Text.Trim());
                    SqlDataAdapter da = new SqlDataAdapter(cmd);
                    DataSet ds = new DataSet();
                    DataTable dt = new DataTable();
                    da.Fill(ds, "dt");
                    con.Close();
                    if (ds.Tables[0].Rows.Count > 0)
                    {
                       
                        TextBox1.Text = ds.Tables[0].Rows[0]["ID"].ToString();
                        TextBox2.Text = ds.Tables[0].Rows[0]["Aria"].ToString();
                        TextBox3.Text = ds.Tables[0].Rows[0]["SRNO"].ToString();
                        TextBox4.Text = ds.Tables[0].Rows[0]["Frame"].ToString();
                        TextBox5.Text = ds.Tables[0].Rows[0]["Engine"].ToString();
                        TextBox6.Text = ds.Tables[0].Rows[0]["Application"].ToString();
                        TextBox7.Text = ds.Tables[0].Rows[0]["Invoice"].ToString();
                        TextBox8.Text = ds.Tables[0].Rows[0]["Name"].ToString();
                        TextBox9.Text = ds.Tables[0].Rows[0]["Contact"].ToString();
                        TextBox10.Text = ds.Tables[0].Rows[0]["Address"].ToString();
                        TextBox11.Text = ds.Tables[0].Rows[0]["Model"].ToString();
                        TextBox12.Text = ds.Tables[0].Rows[0]["Color"].ToString();
                        TextBox13.Text = ds.Tables[0].Rows[0]["MFGDate"].ToString();
                        TextBox14.Text = ds.Tables[0].Rows[0]["TaxAmount"].ToString();
                        TextBox15.Text = ds.Tables[0].Rows[0]["AdditionalFees"].ToString();
                        TextBox16.Text = ds.Tables[0].Rows[0]["WDAmount"].ToString();
                        TextBox17.Text = ds.Tables[0].Rows[0]["TaxPayDate"].ToString();
                        TextBox18.Text = ds.Tables[0].Rows[0]["CampDate"].ToString();
                        TextBox19.Text = ds.Tables[0].Rows[0]["RegNo"].ToString();
                    TextBox20.Text = ds.Tables[0].Rows[0]["Total"].ToString();
                    double res0 = double.Parse(TextBox14.Text) + double.Parse(TextBox15.Text) + double.Parse(TextBox16.Text);
                    TextBox20.Text = res0.ToString();
                }
                    else
                    {
                   
                }
                    con.Close();
                }

            }

        protected void TextBox23_TextChanged(object sender, EventArgs e)
        
            {
          
            {
                    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["pragatihonda_DB"].ConnectionString);
                    if (con.State == ConnectionState.Closed) { con.Open(); }
                    SqlCommand cmd = new SqlCommand("select  ID,Aria,SRNO,Frame,Engine,Application,Invoice,Name,Contact,Address,Model,Color,MFGDate,TaxAmount,AdditionalFees,WDAmount,Total,TaxPayDate,CampDate,RegDate,RegNO from RtoData where Frame=@ID2", con);

                    cmd.Parameters.AddWithValue("@ID2", TextBox23.Text.Trim());
                    SqlDataAdapter da = new SqlDataAdapter(cmd);
                    DataSet ds = new DataSet();
                    DataTable dt = new DataTable();
                    da.Fill(ds, "dt");
                    con.Close();
                    if (ds.Tables[0].Rows.Count > 0)
                    {
                      
                        TextBox1.Text = ds.Tables[0].Rows[0]["ID"].ToString();
                        TextBox2.Text = ds.Tables[0].Rows[0]["Aria"].ToString();
                        TextBox3.Text = ds.Tables[0].Rows[0]["SRNO"].ToString();
                        TextBox4.Text = ds.Tables[0].Rows[0]["Frame"].ToString();
                        TextBox5.Text = ds.Tables[0].Rows[0]["Engine"].ToString();
                        TextBox6.Text = ds.Tables[0].Rows[0]["Application"].ToString();
                        TextBox7.Text = ds.Tables[0].Rows[0]["Invoice"].ToString();
                        TextBox8.Text = ds.Tables[0].Rows[0]["Name"].ToString();
                        TextBox9.Text = ds.Tables[0].Rows[0]["Contact"].ToString();
                        TextBox10.Text = ds.Tables[0].Rows[0]["Address"].ToString();
                        TextBox11.Text = ds.Tables[0].Rows[0]["Model"].ToString();
                        TextBox12.Text = ds.Tables[0].Rows[0]["Color"].ToString();
                        TextBox13.Text = ds.Tables[0].Rows[0]["MFGDate"].ToString();
                        TextBox14.Text = ds.Tables[0].Rows[0]["TaxAmount"].ToString();
                        TextBox15.Text = ds.Tables[0].Rows[0]["AdditionalFees"].ToString();
                        TextBox16.Text = ds.Tables[0].Rows[0]["WDAmount"].ToString();
                        TextBox17.Text = ds.Tables[0].Rows[0]["TaxPayDate"].ToString();
                        TextBox18.Text = ds.Tables[0].Rows[0]["CampDate"].ToString();
                    TextBox19.Text = ds.Tables[0].Rows[0]["RegDate"].ToString();
                    TextBox21.Text = ds.Tables[0].Rows[0]["RegNo"].ToString();
                        TextBox20.Text = ds.Tables[0].Rows[0]["Total"].ToString();
                        double res0 = double.Parse(TextBox14.Text) + double.Parse(TextBox15.Text) + double.Parse(TextBox16.Text);
                        TextBox20.Text = res0.ToString();
                    }
                    else
                    {
                       
                    }
                    con.Close();
                }

            }
        

        protected void TextBox14_TextChanged(object sender, EventArgs e)
        {
            double res0 = double.Parse(TextBox14.Text) + double.Parse(TextBox15.Text) + double.Parse(TextBox16.Text);
            TextBox20.Text = res0.ToString();
        }

        protected void TextBox16_TextChanged(object sender, EventArgs e)
        {
            double res0 = double.Parse(TextBox14.Text) + double.Parse(TextBox15.Text) + double.Parse(TextBox16.Text);
            TextBox20.Text = res0.ToString();
        }

        protected void TextBox4_TextChanged(object sender, EventArgs e)
        {
            double res0 = double.Parse(TextBox14.Text) + double.Parse(TextBox15.Text) + double.Parse(TextBox16.Text);
            TextBox20.Text = res0.ToString();
        }

        protected void TextBox15_TextChanged(object sender, EventArgs e)
        {
            double res0 = double.Parse(TextBox14.Text) + double.Parse(TextBox15.Text) + double.Parse(TextBox16.Text);
            TextBox20.Text = res0.ToString();
        }

        protected void TextBox24_TextChanged(object sender, EventArgs e)
        
            {
           {
                    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["pragatihonda_DB"].ConnectionString);
                    if (con.State == ConnectionState.Closed) { con.Open(); }
                    SqlCommand cmd = new SqlCommand("select  ID,Aria,SRNO,Frame,Engine,Application,Invoice,Name,Contact,Address,Model,Color,MFGDate,TaxAmount,AdditionalFees,WDAmount,Total,TaxPayDate,CampDate,RegNO from RtoData where ID=@ID2", con);

                    cmd.Parameters.AddWithValue("@ID2", TextBox24.Text.Trim());
                    SqlDataAdapter da = new SqlDataAdapter(cmd);
                    DataSet ds = new DataSet();
                    DataTable dt = new DataTable();
                    da.Fill(ds, "dt");
                    con.Close();
                    if (ds.Tables[0].Rows.Count > 0)
                    {

                        TextBox1.Text = ds.Tables[0].Rows[0]["ID"].ToString();
                        TextBox2.Text = ds.Tables[0].Rows[0]["Aria"].ToString();
                        TextBox3.Text = ds.Tables[0].Rows[0]["SRNO"].ToString();
                        TextBox4.Text = ds.Tables[0].Rows[0]["Frame"].ToString();
                        TextBox5.Text = ds.Tables[0].Rows[0]["Engine"].ToString();
                        TextBox6.Text = ds.Tables[0].Rows[0]["Application"].ToString();
                        TextBox7.Text = ds.Tables[0].Rows[0]["Invoice"].ToString();
                        TextBox8.Text = ds.Tables[0].Rows[0]["Name"].ToString();
                        TextBox9.Text = ds.Tables[0].Rows[0]["Contact"].ToString();
                        TextBox10.Text = ds.Tables[0].Rows[0]["Address"].ToString();
                        TextBox11.Text = ds.Tables[0].Rows[0]["Model"].ToString();
                        TextBox12.Text = ds.Tables[0].Rows[0]["Color"].ToString();
                        TextBox13.Text = ds.Tables[0].Rows[0]["MFGDate"].ToString();
                        TextBox14.Text = ds.Tables[0].Rows[0]["TaxAmount"].ToString();
                        TextBox15.Text = ds.Tables[0].Rows[0]["AdditionalFees"].ToString();
                        TextBox16.Text = ds.Tables[0].Rows[0]["WDAmount"].ToString();
                        TextBox17.Text = ds.Tables[0].Rows[0]["TaxPayDate"].ToString();
                        TextBox18.Text = ds.Tables[0].Rows[0]["CampDate"].ToString();
                        TextBox19.Text = ds.Tables[0].Rows[0]["RegNo"].ToString();
                    TextBox20.Text = ds.Tables[0].Rows[0]["Total"].ToString();
                    double res0 = double.Parse(TextBox14.Text) + double.Parse(TextBox15.Text) + double.Parse(TextBox16.Text);
                    TextBox20.Text = res0.ToString();
                }
                    else
                    {
                  
                }
                    con.Close();
                }

            }

        protected void TextBox25_TextChanged(object sender, EventArgs e)
        
            {
            TextBox22.Text = string.Empty;
            TextBox24.Text = string.Empty;
            TextBox23.Text = string.Empty;
            {
                    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["pragatihonda_DB"].ConnectionString);
                    if (con.State == ConnectionState.Closed) { con.Open(); }
                    SqlCommand cmd = new SqlCommand("select  ID,Aria,SRNO,Frame,Engine,Application,Invoice,Name,Contact,Address,Model,Color,MFGDate,TaxAmount,AdditionalFees,WDAmount,Total,TaxPayDate,CampDate,RegNO from RtoData where RegNO=@ID2", con);

                    cmd.Parameters.AddWithValue("@ID2", TextBox25.Text.Trim());
                    SqlDataAdapter da = new SqlDataAdapter(cmd);
                    DataSet ds = new DataSet();
                    DataTable dt = new DataTable();
                    da.Fill(ds, "dt");
                    con.Close();
                    if (ds.Tables[0].Rows.Count > 0)
                    {

                        TextBox1.Text = ds.Tables[0].Rows[0]["ID"].ToString();
                        TextBox2.Text = ds.Tables[0].Rows[0]["Aria"].ToString();
                        TextBox3.Text = ds.Tables[0].Rows[0]["SRNO"].ToString();
                        TextBox4.Text = ds.Tables[0].Rows[0]["Frame"].ToString();
                        TextBox5.Text = ds.Tables[0].Rows[0]["Engine"].ToString();
                        TextBox6.Text = ds.Tables[0].Rows[0]["Application"].ToString();
                        TextBox7.Text = ds.Tables[0].Rows[0]["Invoice"].ToString();
                        TextBox8.Text = ds.Tables[0].Rows[0]["Name"].ToString();
                        TextBox9.Text = ds.Tables[0].Rows[0]["Contact"].ToString();
                        TextBox10.Text = ds.Tables[0].Rows[0]["Address"].ToString();
                        TextBox11.Text = ds.Tables[0].Rows[0]["Model"].ToString();
                        TextBox12.Text = ds.Tables[0].Rows[0]["Color"].ToString();
                        TextBox13.Text = ds.Tables[0].Rows[0]["MFGDate"].ToString();
                        TextBox14.Text = ds.Tables[0].Rows[0]["TaxAmount"].ToString();
                        TextBox15.Text = ds.Tables[0].Rows[0]["AdditionalFees"].ToString();
                        TextBox16.Text = ds.Tables[0].Rows[0]["WDAmount"].ToString();
                        TextBox17.Text = ds.Tables[0].Rows[0]["TaxPayDate"].ToString();
                        TextBox18.Text = ds.Tables[0].Rows[0]["CampDate"].ToString();
                        TextBox19.Text = ds.Tables[0].Rows[0]["RegNo"].ToString();
                    TextBox20.Text = ds.Tables[0].Rows[0]["Total"].ToString();
                    double res0 = double.Parse(TextBox14.Text) + double.Parse(TextBox15.Text) + double.Parse(TextBox16.Text);
                    TextBox20.Text = res0.ToString();
                }
                    else
                    {
                  
                }
                    con.Close();
                }

            }

        protected void CustomValidator2_ServerValidate(object source, ServerValidateEventArgs args)
        {
            DateTime d;
            args.IsValid = DateTime.TryParseExact(args.Value, "yyyy/MM/dd", CultureInfo.InvariantCulture, DateTimeStyles.None, out d);
            validdate = DateTime.TryParseExact(args.Value, "yyyy/MM/dd", CultureInfo.InvariantCulture, DateTimeStyles.None, out d);

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            {
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["pragatihonda_DB"].ConnectionString);
                if (con.State == ConnectionState.Closed) { con.Open(); }
                 SqlCommand cmd = new SqlCommand("update RtoData Set ID=@ID,Aria=@Aria,SRNO=@SRNO,Frame=@Frame,Engine=@Engine,Application=@Application,Invoice=@Invoice,Name=@Name,Contact=@Contact,Address=@Address,Model=@Model,Color=@Color,MFGDate=@MFGDate,TaxAmount=@TaxAmount,AdditionalFees=@AdditionalFees,WDAmount=@WDAmount,Total=@Total,TaxPayDate=@TaxPayDate,CampDate=@CampDate,RegDate=@RegDate,RegNO=@RegNO from RtoData where Frame=@ID3", con);

                cmd.Parameters.AddWithValue("@ID3", TextBox23.Text.Trim());
                cmd.Parameters.AddWithValue("@ID", TextBox1.Text);
                cmd.Parameters.AddWithValue("@Aria", TextBox2.Text);
                cmd.Parameters.AddWithValue("@SRNO", TextBox3.Text);
                cmd.Parameters.AddWithValue("@Frame", TextBox4.Text);
                cmd.Parameters.AddWithValue("@Engine", TextBox5.Text);       
                cmd.Parameters.AddWithValue("@Application", TextBox6.Text);
                cmd.Parameters.AddWithValue("@Invoice", TextBox7.Text);
                cmd.Parameters.AddWithValue("@Name", TextBox8.Text);
                cmd.Parameters.AddWithValue("@Contact", TextBox9.Text);
                cmd.Parameters.AddWithValue("@Address", TextBox10.Text);
                cmd.Parameters.AddWithValue("@Model", TextBox11.Text);
                cmd.Parameters.AddWithValue("@Color", TextBox12.Text);
                cmd.Parameters.AddWithValue("@MFGDate", TextBox13.Text);
                cmd.Parameters.AddWithValue("@TaxAmount", TextBox14.Text);
                cmd.Parameters.AddWithValue("@AdditionalFees", TextBox15.Text);
                cmd.Parameters.AddWithValue("@WDAmount", TextBox16.Text);
                cmd.Parameters.AddWithValue("@TaxPayDate", DateTime.ParseExact(TextBox17.Text, "dd/MM/yyyy", null).ToString("yyyy/MM/dd HH:mm:ss"));
                cmd.Parameters.AddWithValue("@CampDate", DateTime.ParseExact(TextBox18.Text, "dd/MM/yyyy", null).ToString("yyyy/MM/dd HH:mm:ss"));
                cmd.Parameters.AddWithValue("@RegDate", TextBox19.Text);
                cmd.Parameters.AddWithValue("@Total", TextBox20.Text);
                cmd.Parameters.AddWithValue("@RegNO", TextBox21.Text);
                               
                cmd.ExecuteNonQuery();
                con.Close();
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

        protected void TextBox7_TextChanged(object sender, EventArgs e)
        {

        }

        protected void CustomValidator4_ServerValidate(object source, ServerValidateEventArgs args)
        {
            DateTime d;
            args.IsValid = DateTime.TryParseExact(args.Value, "yyyy/MM/dd", CultureInfo.InvariantCulture, DateTimeStyles.None, out d);
            validdate = DateTime.TryParseExact(args.Value, "yyyy/MM/dd", CultureInfo.InvariantCulture, DateTimeStyles.None, out d);

        }

     

        protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
        {
            DateTime d;
            args.IsValid = DateTime.TryParseExact(args.Value, "yyyy/MM/dd", CultureInfo.InvariantCulture, DateTimeStyles.None, out d);
            validdate = DateTime.TryParseExact(args.Value, "yyyy/MM/dd", CultureInfo.InvariantCulture, DateTimeStyles.None, out d);

        }

        protected void CustomValidator3_ServerValidate(object source, ServerValidateEventArgs args)
        {
            DateTime d;
            args.IsValid = DateTime.TryParseExact(args.Value, "yyyy/MM/dd", CultureInfo.InvariantCulture, DateTimeStyles.None, out d);
            validdate = DateTime.TryParseExact(args.Value, "yyyy/MM/dd", CultureInfo.InvariantCulture, DateTimeStyles.None, out d);

        }
    }
    }
    
