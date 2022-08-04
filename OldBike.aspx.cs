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
    public partial class OldBike : System.Web.UI.Page
    {
        static Boolean validdate;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["UserName"] != null)
            {
                if (!IsPostBack)
                {
                    BindMainNumber();
                   
                }
            }
            else
            {
                Response.Redirect("Default.aspx");

            }


            {

            }
        }


        private void BindMainNumber()
        {
            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["pragatihonda_DB"].ConnectionString))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("Select ID from OldBike", con);

                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataSet ds = new DataSet();
                DataTable dt = new DataTable();

                da.Fill(ds, "dt");
                con.Close();
                if (ds.Tables[0].Rows.Count < 1)
                {
                    TextBox1.Text = "ID00001";

                }
                else
                {



                    using (SqlConnection con1 = new SqlConnection(ConfigurationManager.ConnectionStrings["pragatihonda_DB"].ConnectionString))
                    {
                        con.Open();
                        SqlCommand cmd1 = new SqlCommand("Select ID from OldBike", con1);

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


                        TextBox1.Text = newserial.ToString();

                        con1.Close();

                    }

                }
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
        protected void Button1_Click(object sender, EventArgs e)
        {
            if (validdate == true)
                try
            {
                SqlConnection conn = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["pragatihonda_DB"].ConnectionString);
                SqlCommand cmd = new SqlCommand("INSERT INTO OldBike (ID,DATE,OLD_CUSTOMER,REGISTRATION,PUR_AMOUNT,REPAIRBIL,COTTING,TOTAL,NEW_CUSTOMER,CONTACT,ADDRESS,SALE_AMOUNT,FILE_CHARGE,TOTAL_AMOUNT,NET_PROFIT,DCNO,DCBOOK) Values (@ID,@DATE,@OLD_CUSTOMER,@REGISTRATION,@PUR_AMOUNT,@REPAIRBIL,@COTTING,@TOTAL,@NEW_CUSTOMER,@CONTACT,@ADDRESS,@SALE_AMOUNT,@FILE_CHARGE,@TOTAL_AMOUNT,@NET_PROFIT,@DCNO,@DCBOOK)", conn);

                cmd.Parameters.AddWithValue("ID", TextBox1.Text);


                cmd.Parameters.AddWithValue("DATE", DateTime.ParseExact(TextBox2.Text, "dd/MM/yyyy", null).ToString("yyyy/MM/dd HH:mm:ss"));
                cmd.Parameters.AddWithValue("OLD_CUSTOMER", TextBox3.Text);
                cmd.Parameters.AddWithValue("REGISTRATION", TextBox4.Text);
                cmd.Parameters.AddWithValue("PUR_AMOUNT", TextBox5.Text);
                cmd.Parameters.AddWithValue("REPAIRBIL", TextBox6.Text);
                cmd.Parameters.AddWithValue("COTTING", TextBox7.Text);
                cmd.Parameters.AddWithValue("TOTAL", TextBox8.Text);
                cmd.Parameters.AddWithValue("NEW_CUSTOMER", TextBox9.Text);
                cmd.Parameters.AddWithValue("CONTACT", TextBox10.Text);
                cmd.Parameters.AddWithValue("ADDRESS", TextBox11.Text);
                cmd.Parameters.AddWithValue("SALE_AMOUNT", TextBox12.Text);
                cmd.Parameters.AddWithValue("FILE_CHARGE", TextBox13.Text);
                cmd.Parameters.AddWithValue("TOTAL_AMOUNT", TextBox14.Text);
                cmd.Parameters.AddWithValue("NET_PROFIT", TextBox15.Text);
                cmd.Parameters.AddWithValue("DCNO", TextBox16.Text);
                    cmd.Parameters.AddWithValue("DCBOOK", TextBox17.Text);
                    try
                {
                    conn.Open();
                    cmd.ExecuteNonQuery();
                    Response.Write("<script> alert('DATA Added Successfully ');  </script>");
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
                        BindMainNumber();
                  //  TextBox1.Focus();

                }
                catch (Exception ex)
                {

                }
                finally
                {
                    conn.Close();
                }


            }
            catch (Exception ex)
            {

            }
        }
        protected void TextBox15_TextChanged(object sender, EventArgs e)
        {
                    }

        protected void TextBox8_TextChanged(object sender, EventArgs e)
        {
          
        }

        protected void TextBox7_TextChanged(object sender, EventArgs e)
        {
            double res0 = double.Parse(TextBox5.Text) + double.Parse(TextBox6.Text)+ double.Parse(TextBox7.Text);
            TextBox8.Text = res0.ToString();
        }

        protected void TextBox13_TextChanged(object sender, EventArgs e)
        {
            double res = double.Parse(TextBox12.Text) + double.Parse(TextBox13.Text);
            TextBox14.Text = res.ToString();

            double res1 = double.Parse(TextBox14.Text) - double.Parse(TextBox8.Text);
            TextBox15.Text = res1.ToString();
        }

        protected void TextBox15_TextChanged1(object sender, EventArgs e)
        {

        }

        protected void TextBox14_TextChanged(object sender, EventArgs e)
        {
           
        }

        protected void TextBox6_TextChanged(object sender, EventArgs e)
        {
            double res2 = double.Parse(TextBox5.Text) + double.Parse(TextBox6.Text);
            TextBox8.Text = res2.ToString();
        }

        protected void txtDate_TextChanged(object sender, EventArgs e)
        {

        }

        protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
        {

            DateTime d;
            args.IsValid = DateTime.TryParseExact(args.Value, "dd/MM/yyyy", CultureInfo.InvariantCulture, DateTimeStyles.None, out d);
            validdate = DateTime.TryParseExact(args.Value, "dd/MM/yyyy", CultureInfo.InvariantCulture, DateTimeStyles.None, out d);

        }

        protected void Insert(object sender, EventArgs e)
        {
            string constr = ConfigurationManager.ConnectionStrings["pragatihonda_DB"].ConnectionString;
            using (SqlConnection con = new SqlConnection(constr))
            {
                using (SqlCommand cmd = new SqlCommand("Insert_OldBike"))
                {
                    //cmd.CommandType = CommandType.StoredProcedure;
                   // cmd.Parameters.AddWithValue("@ID", txtName.Text.Trim());
                  //  cmd.Parameters.AddWithValue("@DATE", txtMfgDate.Text.Trim());
                   // cmd.Parameters.AddWithValue("@OLD_CUSTOMER", txtExpDate.Text.Trim());
                   // cmd.Connection = con;
                   // con.Open();
                    //cmd.ExecuteNonQuery();
                  //  con.Close();
                }
            }

           
        }

        protected void txtMfgDate_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {

        }

        protected void CustomValidator1_ServerValidate1(object source, ServerValidateEventArgs args)
        {
            DateTime d;
            args.IsValid = DateTime.TryParseExact(args.Value, "dd/MM/yyyy", CultureInfo.InvariantCulture, DateTimeStyles.None, out d);
            validdate = DateTime.TryParseExact(args.Value, "dd/MM/yyyy", CultureInfo.InvariantCulture, DateTimeStyles.None, out d);

        }

        protected void TextBox4_TextChanged(object sender, EventArgs e)
        {
          
            }

        protected void TextBox12_TextChanged(object sender, EventArgs e)
        {

        }

        protected void TextBox2_TextChanged(object sender, EventArgs e)
        {

        }

        protected void TextBox5_TextChanged(object sender, EventArgs e)
        {

        }
    }
    }






