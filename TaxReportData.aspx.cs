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
    public partial class TaxReportData : System.Web.UI.Page
    {
        static Boolean validdate;
        private SqlConnection con;
        private SqlCommand com;
        private string constr, query;
        private void connection()
        {
            constr = ConfigurationManager.ConnectionStrings["pragatihonda_DB"].ToString();
            con = new SqlConnection(constr);
            con.Open();
        }

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
                Response.Redirect("Default.aspx");

            }

        }

        protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
        {
            DateTime d;
            args.IsValid = DateTime.TryParseExact(args.Value, "dd/MM/yyyy", CultureInfo.InvariantCulture, DateTimeStyles.None, out d);
            validdate = DateTime.TryParseExact(args.Value, "dd/MM/yyyy", CultureInfo.InvariantCulture, DateTimeStyles.None, out d);

        }

        protected void CustomValidator2_ServerValidate(object source, ServerValidateEventArgs args)
        {
            DateTime d;
            args.IsValid = DateTime.TryParseExact(args.Value, "dd/MM/yyyy", CultureInfo.InvariantCulture, DateTimeStyles.None, out d);
            validdate = DateTime.TryParseExact(args.Value, "dd/MM/yyyy", CultureInfo.InvariantCulture, DateTimeStyles.None, out d);

        }
        public override void VerifyRenderingInServerForm(Control control)
        {
            //required to avoid the runtime error "  
            //Control 'GridView1' of type 'GridView' must be placed inside a form tag with runat=server."  
        }

        private void Bindgrid()
        {
            connection();
            query = "select *from RtoData";//not recommended this i have wrtten just for example,write stored procedure for security  
            com = new SqlCommand(query, con);
            SqlDataReader dr = com.ExecuteReader();
            GridView1.DataSource = dr;
            GridView1.DataBind();
            con.Close();

        }
        private void ExportGridToExcel()
        {

            Response.Clear();
            Response.Buffer = true;
            Response.ClearContent();
            Response.ClearHeaders();
            Response.Charset = "";
            string FileName = "RTO Tax File Date " + DateTime.Now + ".xls";
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
        private void BindGrid()
        {
            string strConnString = ConfigurationManager.ConnectionStrings["pragatihonda_DB"].ConnectionString;
            using (SqlConnection con = new SqlConnection(strConnString))
            {
                using (SqlCommand cmd = new SqlCommand("SELECT * FROM RtoData"))
                {
                    using (SqlDataAdapter sda = new SqlDataAdapter())
                    {
                        cmd.Connection = con;
                        sda.SelectCommand = cmd;
                        using (DataTable dt = new DataTable())
                        {
                            sda.Fill(dt);
                            GridView1.DataSource = dt;
                            GridView1.DataBind();
                        }
                    }
                }
            }
        }
        protected void Button3_Click(object sender, EventArgs e)
        {
            ExportGridToExcel();
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            {
                if (validdate == true)
                {


                    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["pragatihonda_DB"].ConnectionString);
                    if (con.State == ConnectionState.Closed) { con.Open(); }

                    SqlDataAdapter da = new SqlDataAdapter("select ID,convert(varchar, cast(convert(varchar(10), TaxPayDate, 101) as datetime) , 106)  as ID,Name,TaxAmount,Total,WDAmount,Aria,Frame,Application,Contact,TaxPayDate,AdditionalFees  from RtoData where TaxPayDate between CONVERT(datetime, '" + TextBox1.Text + "',105) AND CONVERT(datetime, '" + TextBox2.Text + "',105)", con);


                    {
                        DataTable dt = new DataTable();
                        da.Fill(dt);
                        con.Close();
                        if (dt.Rows.Count > 0)
                        {
                            Label3.Text = dt.Rows.Count.ToString();
                          //  GridView1.FooterRow.Cells[1].Text = dt.Rows.Count.ToString();
                            GridView1.DataSource = dt;
                            GridView1.DataBind();
                            GridView1.FooterRow.Cells[6].Text = ("Total");
                            GridView1.FooterRow.Cells[7].Text = dt.Compute("Sum(TaxAmount)", "").ToString();
                            GridView1.FooterRow.Cells[8].Text = dt.Compute("Sum(AdditionalFees)", "").ToString();
                            GridView1.FooterRow.Cells[9].Text = dt.Compute("Sum(WDAmount)", "").ToString();
                            GridView1.FooterRow.Cells[10].Text = dt.Compute("Sum(Total)", "").ToString();
                           
                          

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
        }
    }
    }
