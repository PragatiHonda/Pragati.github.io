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
   
    public partial class AllDataExpertToExcel : System.Web.UI.Page
    {
        static Boolean validdate;
        private SqlConnection con;
        private SqlCommand com;
        private string constr, query;

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
        private void OrderSheetGridToExcel()
        {

            Response.Clear();
            Response.Buffer = true;
            Response.ClearContent();
            Response.ClearHeaders();
            Response.Charset = "";
            string FileName = "Number Plate Record" + DateTime.Now + ".xls";
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
        private void ExportGridToExcel()
        {

            Response.Clear();
            Response.Buffer = true;
            Response.ClearContent();
            Response.ClearHeaders();
            Response.Charset = "";
            string FileName = "Number Plate Record Date " + DateTime.Now + ".xls";
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
        protected void Button2_Click(object sender, EventArgs e)
        {
            ExportGridToExcel();
        }
        
    
        protected void Button3_Click(object sender, EventArgs e)
        {
            

            {
                if (validdate == true)
                {


                    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["pragatihonda_DB"].ConnectionString);
                    if (con.State == ConnectionState.Closed) { con.Open(); }
                    SqlDataAdapter da = new SqlDataAdapter("select  ID,DealerName,Dealercode,State,DealerPerson,Invoice,FrameNo, EngineNo,PlantCode,OrederType,VehicleCatogary,Model,MfgDate,RegistrationNo,DateOfRegistration,CustomerName,ContactNo,EmailId  from Number where IntryDate between CONVERT(datetime, '" + TextBox1.Text + "',105) AND CONVERT(datetime, '" + TextBox2.Text + "',105)", con);


                    {
                        DataTable dt = new DataTable();
                        da.Fill(dt);
                        con.Close();
                        if (dt.Rows.Count > 0)
                        {
                            Label3.Text = dt.Rows.Count.ToString();
                            GridView1.DataSource = dt;
                            GridView1.DataBind();
                            //  GridView1.FooterRow.Cells[2].Text = "Total Amount";
                            //  GridView1.FooterRow.Cells[3].Text = dt.Compute("Sum(PUR_AMOUNT)", "").ToString();
                            //  GridView1.FooterRow.Cells[4].Text = dt.Compute("Sum(REPAIRBIL)", "").ToString();
                            //  GridView1.FooterRow.Cells[5].Text = dt.Compute("Sum(COTTING)", "").ToString();
                            //  GridView1.FooterRow.Cells[6].Text = dt.Compute("Sum(TOTAL)", "").ToString();
                            //  GridView1.FooterRow.Cells[7].Text = dt.Compute("Sum(SALE_AMOUNT)", "").ToString();
                            //   GridView1.FooterRow.Cells[8].Text = dt.Compute("Sum(FILE_CHARGE)", "").ToString();
                            //   GridView1.FooterRow.Cells[9].Text = dt.Compute("Sum(TOTAL_AMOUNT)", "").ToString();
                            //   GridView1.FooterRow.Cells[10].Text = dt.Compute("Sum(NET_PROFIT)", "").ToString();


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

        protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (validdate == true)
            {


                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["pragatihonda_DB"].ConnectionString);
                if (con.State == ConnectionState.Closed) { con.Open(); }
                SqlDataAdapter da = new SqlDataAdapter("select  ID,DealerName,Dealercode,State,DealerPerson,Invoice,FrameNo, EngineNo,PlantCode,OrederType,VehicleCatogary,Model,MfgDate,RegistrationNo,DateOfRegistration,CustomerName,ContactNo,EmailId,Status,IntryDate,AdmitedTo,Rollno,ReceivedDate,Box,DeliveryDate,ModelName,VARIANT,COLOR,FrontLaserCode,RearLaserCode,RcRecieved,RcGiveCustomer  from Number where IntryDate between CONVERT(datetime, '" + TextBox1.Text + "',105) AND CONVERT(datetime, '" + TextBox2.Text + "',105)", con);
           


                {
                    DataTable dt = new DataTable();
                    da.Fill(dt);
                    con.Close();
                    if (dt.Rows.Count > 0)
                    {
                        Label3.Text = dt.Rows.Count.ToString();
                        GridView2.DataSource = dt;
                        GridView2.DataBind();
                        //  GridView1.FooterRow.Cells[2].Text = "Total Amount";
                        //  GridView1.FooterRow.Cells[3].Text = dt.Compute("Sum(PUR_AMOUNT)", "").ToString();
                        //  GridView1.FooterRow.Cells[4].Text = dt.Compute("Sum(REPAIRBIL)", "").ToString();
                        //  GridView1.FooterRow.Cells[5].Text = dt.Compute("Sum(COTTING)", "").ToString();
                        //  GridView1.FooterRow.Cells[6].Text = dt.Compute("Sum(TOTAL)", "").ToString();
                        //  GridView1.FooterRow.Cells[7].Text = dt.Compute("Sum(SALE_AMOUNT)", "").ToString();
                        //   GridView1.FooterRow.Cells[8].Text = dt.Compute("Sum(FILE_CHARGE)", "").ToString();
                        //   GridView1.FooterRow.Cells[9].Text = dt.Compute("Sum(TOTAL_AMOUNT)", "").ToString();
                        //   GridView1.FooterRow.Cells[10].Text = dt.Compute("Sum(NET_PROFIT)", "").ToString();


                    }

                    else
                    {
                        GridView2.DataSource = null;
                        GridView2.DataBind();


                        //  ExportGridToExcel();

                    }
                }

            }
        }
    }
}




