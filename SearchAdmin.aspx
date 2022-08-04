<%@ Page Title="" Language="C#" MasterPageFile="~/Man.Master" AutoEventWireup="true" CodeBehind="SearchAdmin.aspx.cs" Inherits="hari.SearchAdmin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
<asp:Label ID="Label2" runat="server"></asp:Label>

<div class="container">

<div class="row">      
     </div>
         <div class ="col-md-4"> 
   <div class="form-group">
                        <label>Please Insert Registration Number :</label>
                  <asp:TextBox ID="txtID" CssClass="form-control" runat="server" AutoPostBack="true"  ontextchanged="txtID_TextChanged" Width="300px"></asp:TextBox> 
                 <div class="form-group">
                    <div class="col-md-8">
                     <div class="form-group">
                        <label>Enter Box Name:</label>
                        <asp:TextBox ID="txtUpdateCatName" CssClass="form-control" runat="server" Font-Bold="True" Font-Size="Medium"></asp:TextBox>
                    </div>
          <label>Insert Date:</label>
            
                        <asp:TextBox ID="txtUpdateDate" CssClass="form-control" runat="server" Font-Bold="True" Font-Size="Medium"></asp:TextBox>
                    </div>
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="Blue"></asp:Label>
          <div class="form-group">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="btnUpdateBrand" CssClass ="btn btn-primary " runat="server" 
                            Text="UPDATE" onclick="btnUpdateBrand_Click" Font-Bold="True" Font-Size="Medium" ForeColor="White"  />
                    </div>
         </div>
        </div>
         </div>
    </div>
         
         
         <div class="col-md-12">
         <div class="form-group">
               
                &nbsp;<asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="Medium" ForeColor="Blue" Text="Please Search Here"></asp:Label>
              <p />
                 <asp:TextBox ID="txtFilterGrid1Record" style="border:2px solid blue" CssClass="form-control" runat="server" placeholder="Search Name/Number/Chesis..." onkeyup="Search_Gridview(this)" Width="399px" Font-Bold="True" Font-Size="Medium"></asp:TextBox>
                <hr />
                   <div class="table table-responsive">
                       <asp:GridView ID="GridView1" CssClass="table table-condensed table-hover" runat="server" EmptyDataText="Record not found..." BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3">
                           <FooterStyle BackColor="White" ForeColor="#000066" />
                           <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                           <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                           <RowStyle ForeColor="#000066" />
                           <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                           <SortedAscendingCellStyle BackColor="#F1F1F1" />
                           <SortedAscendingHeaderStyle BackColor="#007DBB" />
                           <SortedDescendingCellStyle BackColor="#CAC9C9" />
                           <SortedDescendingHeaderStyle BackColor="#00547E" />
                       </asp:GridView>
                   </div>
                </div>
             </div>
        





 <script type="text/javascript">
     function Search_Gridview(strKey) {
         var strData = strKey.value.toLowerCase().split(" ");
         var tblData = document.getElementById("<%=GridView1.ClientID %>");
         var rowData;
         for (var i = 1; i < tblData.rows.length; i++) {
             rowData = tblData.rows[i].innerHTML;
             var styleDisplay = 'none';
             for (var j = 0; j < strData.length; j++) {
                 if (rowData.toLowerCase().indexOf(strData[j]) >= 0)
                     styleDisplay = '';
                 else {
                     styleDisplay = 'none';
                     break;
                 }
             }
             tblData.rows[i].style.display = styleDisplay;
         }
     }  
        </script>


</asp:Content>
