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
    public partial class HsrpRecord : System.Web.UI.Page
    {
       static Boolean validdate;
        protected void Page_Load(object sender, EventArgs e)
        {
            btnSave.Enabled = true;
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
        protected void TextBox7_TextChanged(object sender, EventArgs e)
        {
            {
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["pragatihonda_DB"].ConnectionString);
                if (con.State == ConnectionState.Closed) { con.Open(); }
                SqlCommand cmd = new SqlCommand("select RegistrationNo,CustomerName,FrameNo,EngineNo,FrontLaserCode,RearLaserCode from Number where RegistrationNo=@ID1", con);
                cmd.Parameters.AddWithValue("@ID1", TextBox7.Text.Trim());
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataSet ds = new DataSet();
                DataTable dt = new DataTable();
                da.Fill(ds, "dt");
                con.Close();
                if (ds.Tables[0].Rows.Count > 0)
                {


                    //  btnSave.Enabled = true;
                    TextBox1.Text = ds.Tables[0].Rows[0]["RegistrationNo"].ToString();
                    TextBox2 .Text = ds.Tables[0].Rows[0]["CustomerName"].ToString();
                    TextBox3 .Text = ds.Tables[0].Rows[0]["FrameNo"].ToString();
                    TextBox4.Text = ds.Tables[0].Rows[0]["EngineNo"].ToString(); 
                    TextBox5.Text = ds.Tables[0].Rows[0]["FrontLaserCode"].ToString();
                    TextBox6.Text = ds.Tables[0].Rows[0]["RearLaserCode"].ToString();
                    // TextBox8.Text = ds.Tables[0].Rows[0]["ReceivedDate"].ToString();
                    // DropDownList1.Text = ds.Tables[0].Rows[0]["Box"].ToString();
                    // DropDownList2.Text = ds.Tables[0].Rows[0]["Status"].ToString();

                }
                else
                {
                   btnSave.Enabled = false;
                    TextBox1.Text = string.Empty;
                    TextBox2.Text = string.Empty;
                    TextBox3.Text = string.Empty;
                    TextBox4.Text = string.Empty;
                    TextBox5.Text = string.Empty;
                    TextBox6.Text = string.Empty;
                    TextBox7.Text = string.Empty;
                    TextBox8.Text = string.Empty;
                    DropDownList1.Text = string.Empty;
                    DropDownList2.Text = string.Empty;
                }
                con.Close();
            }
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
           // if (validdate == true)
               
                {
                    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["pragatihonda_DB"].ConnectionString);
            if (con.State == ConnectionState.Closed) { con.Open(); }
            SqlCommand cmd = new SqlCommand("update Number set FrontLaserCode=@FrontLaserCode,RearLaserCode=@RearLaserCode,ReceivedDate=@ReceivedDate,Status=@Status,Box=@Box where RegistrationNo=@ID1", con);
            // cmd.Parameters.AddWithValue("@ID1", Convert.ToInt32(txtID.Text));
            cmd.Parameters.AddWithValue("@ID1", TextBox7.Text.Trim());
            cmd.Parameters.AddWithValue("@FrontLaserCode", TextBox5.Text);
            cmd.Parameters.AddWithValue("@RearLaserCode", TextBox6.Text);
            cmd.Parameters.AddWithValue("@Status", DropDownList2.Text);
            cmd.Parameters.AddWithValue("@ReceivedDate", DateTime.ParseExact(TextBox8.Text, "dd/MM/yyyy", null).ToString("yyyy/MM/dd HH:mm:ss"));
                cmd.Parameters.AddWithValue("@Box", DropDownList1.Text);
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
            DropDownList1.Text = string.Empty;
            DropDownList2.Text = string.Empty;
        }
        }

        protected void TextBox8_TextChanged(object sender, EventArgs e)
        {

        }

        protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
        {
            DateTime d;
            args.IsValid = DateTime.TryParseExact(args.Value, "yyyy/MM/dd", CultureInfo.InvariantCulture, DateTimeStyles.None, out d);
           validdate = DateTime.TryParseExact(args.Value, "yyyy/MM/dd", CultureInfo.InvariantCulture, DateTimeStyles.None, out d);

        }
    }
    }
