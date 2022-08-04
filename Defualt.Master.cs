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
    public partial class Defualt : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Username"] != null)
            {
                //lblSuccess.Text = "Login Success, Welcome <b>" + Session["Username"].ToString() + "</b>";
                 // btnlogout.Visible = true;
                // btnLogin.Visible = false;
                // BindCartNumber22();
                Button1.Text = "Welcome: " + Session["Username"].ToString().ToUpper();

            }
            else
            {
               // btnlogout.Visible = false;
               // btnLogin.Visible = true;
                //Response.Redirect("~/Default.aspx");

            }
        }
    }
}