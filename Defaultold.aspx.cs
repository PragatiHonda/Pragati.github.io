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
    public partial class SinIn : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            {
                if (!IsPostBack)
                {
                    if (Request.Cookies["UNAME"] != null && Request.Cookies["UPWD"] != null)
                    {
                        TextBox1.Text = Request.Cookies["UNAME"].Value;
                        TextBox2.Text = Request.Cookies["UPWD"].Value;
                        CheckBox1.Checked = true;

                    }
                }

            }
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["pragatihonda_DB"].ConnectionString))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("Select * from tblUsers where Username=@username and Password=@pwd", con);
                cmd.Parameters.AddWithValue("@username", TextBox1.Text);

                cmd.Parameters.AddWithValue("@pwd", TextBox2.Text);
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                sda.Fill(dt);
                if (dt.Rows.Count != 0)
                {
                    Session["USERID"] = dt.Rows[0]["Uid"].ToString();
                    Session["USEREMAIL"] = dt.Rows[0]["Email"].ToString();
                    Response.Cookies["UNAME"].Expires = DateTime.Now.AddDays(-1);
                    Response.Cookies["UPWD"].Expires = DateTime.Now.AddDays(-1);

                    if (CheckBox1.Checked)
                    {
                        Response.Cookies["UNAME"].Value = TextBox1.Text;
                        Response.Cookies["UPWD"].Value = TextBox2.Text;

                        Response.Cookies["UNAME"].Expires = DateTime.Now.AddDays(10);

                        Response.Cookies["UPWD"].Expires = DateTime.Now.AddDays(10);

                    }
                    else
                    {
                        Response.Cookies["UNAME"].Expires = DateTime.Now.AddDays(-1);

                        Response.Cookies["UPWD"].Expires = DateTime.Now.AddDays(-1);
                    }

                    string Utype;
                    Utype = dt.Rows[0][5].ToString().Trim();

                    if (Utype == "User")
                    {
                        Session["Username"] = TextBox1.Text;
                        Session["USEREMAIL"] = dt.Rows[0]["Email"].ToString();
                        Session["getFullName"] = dt.Rows[0]["name"].ToString();
                        //Session["Mobile"] = dt.Rows[0]["Mobile"].ToString();
                        Session["LoginType"] = "User";
                        if (Request.QueryString["rurl"] != null)
                        {
                            if (Request.QueryString["rurl"] == "cart")
                            {
                                Response.Redirect("Cart.aspx");
                            }

                            if (Request.QueryString["rurl"] == "PID")
                            {
                                string myPID = Session["ReturnPID"].ToString();
                                Response.Redirect("ProductView.aspx?PID=" + myPID + "");
                            }
                        }

                        else
                        {
                            Response.Redirect("Home.aspx?UserLogin=YES");
                        }



                    }
                    if (Utype == "Admin")
                    {
                        Session["Username"] = TextBox1.Text;
                        Session["LoginType"] = "Admin";
                        Response.Redirect("~/Admin.aspx");
                    }
                }
                else
                {
                    lblError.Text = "Invalid Username and password";
                }

                //Response.Write("<script> alert('Login Successfully done');  </script>");
                clr();
                con.Close();
                //lblMsg.Text = "Registration Successfully done";
                //lblMsg.ForeColor = System.Drawing.Color.Green;

            }
        }

        private void clr()
        {
            TextBox2.Text = string.Empty;
            TextBox1.Text = string.Empty;
            TextBox1.Focus();

        }


    }
}