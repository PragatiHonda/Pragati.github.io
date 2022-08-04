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
    public partial class MhTax : System.Web.UI.Page
    {
        static Boolean validdate;
        public static String CS = ConfigurationManager.ConnectionStrings["pragatihonda_DB"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["UserName"] != null)
            {
                if (!IsPostBack)
                {
                    BindRtoData();

                   SqlConnection con = new SqlConnection(CS);
                    string com = "Select * from Class";
                   SqlDataAdapter adpt = new SqlDataAdapter(com, con);
                    DataTable dt = new DataTable();
                    adpt.Fill(dt);
                    DropDownList1.DataSource = dt;
                    DropDownList1.DataBind();
                     DropDownList1.DataValueField = "CNAME";
                    DropDownList1.DataBind();
                  



                }
            }
            else
            {
                Response.Redirect("Default.aspx");

            }


            {

            }
        }
        private void BindRtoData ()
        {
            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["pragatihonda_DB"].ConnectionString))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("Select ID from RtoData", con);

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
                        SqlCommand cmd1 = new SqlCommand("Select ID from RtoData", con1);

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
                using (SqlCommand cmd = new SqlCommand("select * from RtoData", con))
                {
                    using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                    {
                        DataTable dt = new DataTable();
                        sda.Fill(dt);

                    }
                }
            }
        }
       

        protected void Button1_Click1(object sender, EventArgs e)
        { 
           
            { 
                using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["pragatihonda_DB"].ConnectionString))
                {
                     SqlCommand cmd = new SqlCommand("INSERT INTO RtoData(ID,Aria,SRNO,Frame,Engine,Application,Invoice,Name,Contact,Address,Model,Color,MFGDate,TaxAmount,AdditionalFees,WDAmount,Total,TaxPayDate) Values (@ID,@Aria,@SRNO,@Frame,@Engine,@Application,@Invoice,@Name,@Contact,@Address,@Model,@Color,@MFGDate,@TaxAmount,@AdditionalFees,@WDAmount,@Total,@TaxPayDate)", con);

                    cmd.Parameters.AddWithValue("ID", TextBox1.Text);
                    cmd.Parameters.AddWithValue("Aria", DropDownList1.Text);
                    cmd.Parameters.AddWithValue("SRNO", TextBox2.Text);
                    cmd.Parameters.AddWithValue("Frame", TextBox3.Text);
                    cmd.Parameters.AddWithValue("Engine", TextBox4.Text);
                    cmd.Parameters.AddWithValue("Application", TextBox5.Text);
                    cmd.Parameters.AddWithValue("Invoice", DateTime.ParseExact(TextBox6.Text, "dd/MM/yyyy", null).ToString("yyyy/MM/dd HH:mm:ss"));
                    cmd.Parameters.AddWithValue("Name", TextBox7.Text);
                    cmd.Parameters.AddWithValue("Contact", TextBox8.Text);
                    cmd.Parameters.AddWithValue("Address", TextBox9.Text);
                    cmd.Parameters.AddWithValue("Model", TextBox10.Text);
                    cmd.Parameters.AddWithValue("Color", TextBox11.Text);
                    cmd.Parameters.AddWithValue("MFGDate", DateTime.ParseExact(TextBox12.Text, "dd/MM/yyyy", null).ToString("yyyy/MM/dd HH:mm:ss"));
                    cmd.Parameters.AddWithValue("TaxAmount", TextBox13.Text);
                    cmd.Parameters.AddWithValue("AdditionalFees", TextBox14.Text);
                    cmd.Parameters.AddWithValue("WDAmount", TextBox15.Text);
                    cmd.Parameters.AddWithValue("Total", TextBox18.Text);
                    cmd.Parameters.AddWithValue("TaxPayDate", DateTime.ParseExact(TextBox16.Text, "dd/MM/yyyy", null).ToString("yyyy/MM/dd HH:mm:ss"));
                  


                    {
                        con.Open();
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
                        TextBox18.Text = string.Empty;
                        con.Close();
                    BindRtoData();
                    TextBox1.Focus();

                    }
                  

                }
            }
        }
        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
          //  using (SqlConnection con1 = new SqlConnection(ConfigurationManager.ConnectionStrings["pragatihonda_DB"].ConnectionString))

                SqlConnection con = new SqlConnection(CS);
            SqlCommand cmd = new SqlCommand("select * from RtoData where Aria = '" + DropDownList1.SelectedValue + "'", con);
            SqlDataAdapter Adpt = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();

            Adpt.Fill(dt);
            con.Close();

          
            



                using (SqlConnection con1 = new SqlConnection(ConfigurationManager.ConnectionStrings["pragatihonda_DB"].ConnectionString))
                    {
                       con.Open();
                        SqlCommand cmd1 = new SqlCommand("Select * SRNO where Aria", con1);

       SqlDataAdapter da1 = new SqlDataAdapter(cmd);
        DataSet ds1 = new DataSet();
        DataTable dt1 = new DataTable();

                da1.Fill(ds1, "dt1");
                con1.Close();
                da1.Fill(ds1);
                int maxsno = 00;
                var part1 = "0";
                var part2 = "0";

                foreach (DataRow dr in ds1.Tables[0].Rows)
                {

                    var ID = dr["SRNO"].ToString();
                    part1 = ID.Substring(0, 2);


                    part2 = ID.Substring(2, (ID.Length) - 2);


                    if (maxsno < Convert.ToInt16(part2))

                    {
                        maxsno = Convert.ToInt16(part2);

                    }


                }

                maxsno = maxsno + 1;

                var newserial = part1 + maxsno.ToString("00000");


                TextBox2.Text = newserial.ToString();

                con1.Close();
            }
        }

        protected void TextBox2_TextChanged(object sender, EventArgs e)
        {
          

        }

        protected void TextBox3_TextChanged(object sender, EventArgs e)
        {
            {
                
            SqlConnection con1 = new SqlConnection(ConfigurationManager.ConnectionStrings["pragatihonda_DB"].ConnectionString);
            string query = "select Frame from [RtoData] where Frame = '" + ((TextBox)View1.FindControl("TextBox3")).Text + "'";
            SqlCommand cmd1 = new SqlCommand(query, con1); con1.Open();
            SqlDataReader dr = cmd1.ExecuteReader();
            dr.Read();
            if (dr.HasRows == true)
            {
                Response.Write("<script>alert('Fram Already Exists')</script>");

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
                

            }


            else
            {
               
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["pragatihonda_DB"].ConnectionString);
                if (con.State == ConnectionState.Closed) { con.Open(); }
                SqlCommand cmd = new SqlCommand("select CustomerName,ContactNo,MfgDate,Model,FrameNo,EngineNo,Invoice,COLOR from Number where FrameNo=@ID2", con);
                cmd.Parameters.AddWithValue("@ID2", TextBox3.Text.Trim());
                    SqlDataAdapter da = new SqlDataAdapter(cmd);
                    DataSet ds = new DataSet();
                    DataTable dt = new DataTable();
                    da.Fill(ds, "dt");
                    con.Close();
                    if (ds.Tables[0].Rows.Count > 0)

                    {

                        TextBox7.Text = ds.Tables[0].Rows[0]["CustomerName"].ToString();
                         TextBox12.Text = ds.Tables[0].Rows[0]["MfgDate"].ToString();
                          TextBox3.Text = ds.Tables[0].Rows[0]["FrameNo"].ToString();
                          TextBox8.Text = ds.Tables[0].Rows[0]["ContactNo"].ToString();
                          TextBox10.Text = ds.Tables[0].Rows[0]["Model"].ToString();
                           TextBox4.Text = ds.Tables[0].Rows[0]["EngineNo"].ToString();
                          TextBox6.Text = ds.Tables[0].Rows[0]["Invoice"].ToString();
                          TextBox11.Text = ds.Tables[0].Rows[0]["COLOR"].ToString();


                    }


                    

                    else
                    {
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
                      

                    }
                    con.Close();
                }
            }

        }

        protected void TextBox18_TextChanged(object sender, EventArgs e)
        {
            


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

        protected void CustomValidator3_ServerValidate(object source, ServerValidateEventArgs args)
        {
            DateTime d;
            args.IsValid = DateTime.TryParseExact(args.Value, "yyyy/MM/dd", CultureInfo.InvariantCulture, DateTimeStyles.None, out d);
            validdate = DateTime.TryParseExact(args.Value, "yyyy/MM/dd", CultureInfo.InvariantCulture, DateTimeStyles.None, out d);

        }

        protected void CustomValidator4_ServerValidate(object source, ServerValidateEventArgs args)
        {

            DateTime d;
            args.IsValid = DateTime.TryParseExact(args.Value, "yyyy/MM/dd", CultureInfo.InvariantCulture, DateTimeStyles.None, out d);
            validdate = DateTime.TryParseExact(args.Value, "yyyy/MM/dd", CultureInfo.InvariantCulture, DateTimeStyles.None, out d);

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("MHTax.aspx");
        }

        protected void TextBox15_TextChanged(object sender, EventArgs e)
        {
            double res0 = double.Parse(TextBox13.Text) + double.Parse(TextBox14.Text) + double.Parse(TextBox15.Text);
            TextBox18.Text = res0.ToString();
        }
    }

}

























