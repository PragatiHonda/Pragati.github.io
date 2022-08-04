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

namespace hari
{
    public partial class OldBikeDetail : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["UserName"] != null)
            {
                if (!IsPostBack)
                {

                }
            }
            else
            {
                //  Response.Redirect("Default.aspx");

            }


            {

            }
        }

        protected void TextBox31_TextChanged(object sender, EventArgs e)
        {
            {
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["pragatihonda_DB"].ConnectionString);
                if (con.State == ConnectionState.Closed) { con.Open(); }
                SqlCommand cmd = new SqlCommand("select DATE,OLD_CUSTOMER,REGISTRATION,PUR_AMOUNT,REPAIRBIL,COTTING,TOTAL,NEW_CUSTOMER,CONTACT,ADDRESS,SALE_AMOUNT,FILE_CHARGE,TOTAL_AMOUNT,NET_PROFIT,DCNO,DCBOOK from OldBike where ID=@ID1", con);
                cmd.Parameters.AddWithValue("@ID1", TextBox31.Text.Trim());
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataSet ds = new DataSet();
                DataTable dt = new DataTable();
                da.Fill(ds, "dt");
                con.Close();
                if (ds.Tables[0].Rows.Count > 0)
                {
                    // btnUpdateBrand.Enabled = true;
                    TextBox16.Text = ds.Tables[0].Rows[0]["DATE"].ToString();
                    TextBox17.Text = ds.Tables[0].Rows[0]["OLD_CUSTOMER"].ToString();
                    TextBox18.Text = ds.Tables[0].Rows[0]["SALE_AMOUNT"].ToString();
                    TextBox19.Text = ds.Tables[0].Rows[0]["REGISTRATION"].ToString();
                    TextBox20.Text = ds.Tables[0].Rows[0]["PUR_AMOUNT"].ToString();

                    TextBox21.Text = ds.Tables[0].Rows[0]["FILE_CHARGE"].ToString();
                    TextBox22.Text = ds.Tables[0].Rows[0]["REPAIRBIL"].ToString();

                    TextBox23.Text = ds.Tables[0].Rows[0]["COTTING"].ToString();
                    TextBox25.Text = ds.Tables[0].Rows[0]["TOTAL"].ToString();
                    TextBox26.Text = ds.Tables[0].Rows[0]["NEW_CUSTOMER"].ToString();
                    TextBox28.Text = ds.Tables[0].Rows[0]["CONTACT"].ToString();
                    TextBox29.Text = ds.Tables[0].Rows[0]["ADDRESS"].ToString();
                  
                    
                    TextBox24.Text = ds.Tables[0].Rows[0]["TOTAL_AMOUNT"].ToString();
                    TextBox27.Text = ds.Tables[0].Rows[0]["NET_PROFIT"].ToString();
                    TextBox30.Text = ds.Tables[0].Rows[0]["DCNO"].ToString();
                    TextBox33.Text = ds.Tables[0].Rows[0]["DCBOOK"].ToString();
                }
                else
                {
                    // btnUpdateBrand.Enabled = false;

                }
                con.Close();
            }
        }
      
        protected void TextBox32_TextChanged(object sender, EventArgs e)
        {
            {
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["pragatihonda_DB"].ConnectionString);
                if (con.State == ConnectionState.Closed) { con.Open(); }
                SqlCommand cmd = new SqlCommand("select DATE,OLD_CUSTOMER,REGISTRATION,PUR_AMOUNT,REPAIRBIL,COTTING,TOTAL,NEW_CUSTOMER,CONTACT,ADDRESS,SALE_AMOUNT,FILE_CHARGE,TOTAL_AMOUNT,NET_PROFIT,ID,DCNO,DCBOOK from OldBike where DCNO=@ID2", con);
                cmd.Parameters.AddWithValue("@ID2", TextBox32 .Text.Trim());
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataSet ds = new DataSet();
                DataTable dt = new DataTable();
                da.Fill(ds, "dt");
                con.Close();
                if (ds.Tables[0].Rows.Count > 0)
                {
                    // btnUpdateBrand.Enabled = true;
                    TextBox16.Text = ds.Tables[0].Rows[0]["DATE"].ToString();
                    TextBox17.Text = ds.Tables[0].Rows[0]["OLD_CUSTOMER"].ToString();
                    TextBox18.Text = ds.Tables[0].Rows[0]["SALE_AMOUNT"].ToString();
                    TextBox19.Text = ds.Tables[0].Rows[0]["REGISTRATION"].ToString();
                    TextBox20.Text = ds.Tables[0].Rows[0]["PUR_AMOUNT"].ToString();
                    TextBox21.Text = ds.Tables[0].Rows[0]["FILE_CHARGE"].ToString();
                    TextBox22.Text = ds.Tables[0].Rows[0]["REPAIRBIL"].ToString();
                    TextBox23.Text = ds.Tables[0].Rows[0]["COTTING"].ToString();
                    TextBox25.Text = ds.Tables[0].Rows[0]["TOTAL"].ToString();
                    TextBox26.Text = ds.Tables[0].Rows[0]["NEW_CUSTOMER"].ToString();
                    TextBox28.Text = ds.Tables[0].Rows[0]["CONTACT"].ToString();
                    TextBox29.Text = ds.Tables[0].Rows[0]["ADDRESS"].ToString();
                    TextBox24.Text = ds.Tables[0].Rows[0]["TOTAL_AMOUNT"].ToString();
                    TextBox27.Text = ds.Tables[0].Rows[0]["NET_PROFIT"].ToString();
                    TextBox31.Text = ds.Tables[0].Rows[0]["ID"].ToString();
                    TextBox30.Text = ds.Tables[0].Rows[0]["DCNO"].ToString();
                    TextBox33.Text = ds.Tables[0].Rows[0]["DCBOOK"].ToString();
                }
                else
                {
                    // btnUpdateBrand.Enabled = false;

                }
                con.Close();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
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
            TextBox26.Text = string.Empty;
            TextBox27.Text = string.Empty;
            TextBox28.Text = string.Empty;
            TextBox29.Text = string.Empty;
            TextBox30.Text = string.Empty;
            TextBox31.Text = string.Empty;
            TextBox32.Text = string.Empty;
            TextBox33.Text = string.Empty;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            {

                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["pragatihonda_DB"].ConnectionString);
                if (con.State == ConnectionState.Closed) { con.Open(); }
                SqlCommand cmd = new SqlCommand("Update OldBike set DATE=@DATE,OLD_CUSTOMER=@OLD_CUSTOMER,REGISTRATION=@REGISTRATION,PUR_AMOUNT=@PUR_AMOUNT,REPAIRBIL=@REPAIRBIL,COTTING=@COTTING,TOTAL=@TOTAL,NEW_CUSTOMER=@NEW_CUSTOMER,CONTACT=@CONTACT,ADDRESS=@ADDRESS,SALE_AMOUNT=@SALE_AMOUNT,FILE_CHARGE=@FILE_CHARGE,TOTAL_AMOUNT=@TOTAL_AMOUNT,NET_PROFIT=@NET_PROFIT,DCNO=@DCNO,DCBOOK=@DCBOOK  where ID=@ID1",  con);
                cmd.Parameters.AddWithValue("@ID1", TextBox31.Text.Trim());
                cmd.Parameters.AddWithValue("@DATE", DateTime.ParseExact(TextBox16.Text, "dd/MM/yyyy", null).ToString("yyyy/MM/dd HH:mm:ss"));
                cmd.Parameters.AddWithValue("@OLD_CUSTOMER", TextBox17 .Text);
                cmd.Parameters.AddWithValue("@SALE_AMOUNT", TextBox18.Text);
                cmd.Parameters.AddWithValue("@REGISTRATION", TextBox19.Text);
                cmd.Parameters.AddWithValue("@PUR_AMOUNT", TextBox20.Text);
                cmd.Parameters.AddWithValue("@FILE_CHARGE", TextBox21.Text);
                cmd.Parameters.AddWithValue("@REPAIRBIL", TextBox22.Text);
                cmd.Parameters.AddWithValue("@COTTING", TextBox23.Text);
                cmd.Parameters.AddWithValue("@TOTAL_AMOUNT", TextBox24.Text);
                cmd.Parameters.AddWithValue("@TOTAL", TextBox25.Text);
                cmd.Parameters.AddWithValue("@NEW_CUSTOMER", TextBox26.Text);
                cmd.Parameters.AddWithValue("@NET_PROFIT", TextBox27.Text);
                cmd.Parameters.AddWithValue("@CONTACT", TextBox28.Text);
                cmd.Parameters.AddWithValue("@ADDRESS", TextBox29.Text);
                cmd.Parameters.AddWithValue("@DCBOOK", TextBox33.Text);
                cmd.Parameters.AddWithValue("@DCNO", TextBox30.Text);
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Update successfully')</script>");
               
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
                TextBox26.Text = string.Empty;
                TextBox27.Text = string.Empty;
                TextBox28.Text = string.Empty;
                TextBox29.Text = string.Empty;
                TextBox30.Text = string.Empty;
                TextBox31.Text = string.Empty;
                TextBox32.Text = string.Empty;
                TextBox33.Text = string.Empty;
            }

        }

        protected void TextBox22_TextChanged(object sender, EventArgs e)
        {
            double res2 = double.Parse(TextBox20.Text) + double.Parse(TextBox22.Text);
            TextBox25.Text = res2.ToString();
        }

        protected void TextBox23_TextChanged(object sender, EventArgs e)
        {
            double res0 = double.Parse(TextBox20.Text) + double.Parse(TextBox22.Text) + double.Parse(TextBox23.Text);
            TextBox25.Text = res0.ToString();
        }

        protected void TextBox21_TextChanged(object sender, EventArgs e)
        {
            double res = double.Parse(TextBox18.Text) + double.Parse(TextBox21.Text);
            TextBox24.Text = res.ToString();

            double res1 = double.Parse(TextBox24.Text) - double.Parse(TextBox25.Text);
            TextBox27.Text = res1.ToString();
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
           
            }
        }
    }
    
    
    
    
