using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Globalization;
using System.Drawing;
using System.IO;

namespace hari
{
    public partial class CallingList : System.Web.UI.Page
    {
        static Boolean validdate;
     //   private SqlConnection con;
     //   private SqlCommand com;
     //   private string constr, query;
        protected void Page_Load(object sender, EventArgs e)
        {
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
        private void ExportGridToExcel()
        {

            Response.Clear();
            Response.Buffer = true;
            Response.ClearContent();
            Response.ClearHeaders();
            Response.Charset = "";
            string FileName = "Calling List Date " + DateTime.Now + ".xls";
            StringWriter strwritter = new StringWriter();
            HtmlTextWriter htmltextwrtter = new HtmlTextWriter(strwritter);
            Response.Cache.SetCacheability(HttpCacheability.NoCache);
            Response.ContentType = "application/vnd.ms-excel";
            Response.AddHeader("Content-Disposition", "attachment;filename=" + FileName);
            GridView1.GridLines = GridLines.Both;
            GridView1.HeaderStyle.Font.Bold = true;
            GridView1.RenderControl(htmltextwrtter);
            Response.Write(strwritter.ToString());
            Response.End();

        }
        protected void Button5_Click(object sender, EventArgs e)
        {
            if (validdate == true)
            {


                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["pragatihonda_DB"].ConnectionString);
                if (con.State == ConnectionState.Closed) { con.Open(); }
                SqlDataAdapter da = new SqlDataAdapter("select ID,convert(varchar, cast(convert(varchar(10), ReceivedDate, 101) as datetime) , 106)  as ReceivedDate,CustomerName, RegistrationNo,VARIANT,ContactNo  from Number where ReceivedDate between CONVERT(datetime, '" + TextBox3.Text + "',105) AND CONVERT(datetime, '" + TextBox4.Text + "',105)", con);
              

                {
                    DataTable dt = new DataTable();
                    da.Fill(dt);
                    con.Close();
                    if (dt.Rows.Count > 0)
                    {
                        Label5.Text = dt.Rows.Count.ToString();
                        GridView1.DataSource = dt;
                        GridView1.DataBind();
                       //  GridView1.FooterRow.Cells[0].Text = dt.Rows.Count.ToString();

                       
                    }

                    else
                    {
                        GridView1.DataSource = null;
                        GridView1.DataBind();


                        //  ExportGridToExcel();

                    }
                }

            }
        }

        protected void OnRowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                (e.Row.FindControl("SR") as Label).Text = (e.Row.RowIndex + 1).ToString();


        }
        }
        public override void VerifyRenderingInServerForm(Control control)
        {
            //required to avoid the runtime error "  
            //Control 'GridView1' of type 'GridView' must be placed inside a form tag with runat=server."  
        }

        protected void CustomValidator8_ServerValidate(object source, ServerValidateEventArgs args)
        {
            DateTime d;
            args.IsValid = DateTime.TryParseExact(args.Value, "dd/MM/yyyy", CultureInfo.InvariantCulture, DateTimeStyles.None, out d);
            validdate = DateTime.TryParseExact(args.Value, "dd/MM/yyyy", CultureInfo.InvariantCulture, DateTimeStyles.None, out d);

        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            ExportGridToExcel();
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void CustomValidator9_ServerValidate(object source, ServerValidateEventArgs args)
        {
            DateTime d;
            args.IsValid = DateTime.TryParseExact(args.Value, "dd/MM/yyyy", CultureInfo.InvariantCulture, DateTimeStyles.None, out d);
            validdate = DateTime.TryParseExact(args.Value, "dd/MM/yyyy", CultureInfo.InvariantCulture, DateTimeStyles.None, out d);

        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {

        }
    }
    }
