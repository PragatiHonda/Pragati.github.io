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
    public partial class Admin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        public void BindCartNumber()
        {
            if (Session["Username"] != null)
            {
                string UserIDD = Session["USERID"].ToString();

              // Button1.Text = "Welcome: " + Session["Username"].ToString().ToUpper();

            }
        }
                }
            }
        
