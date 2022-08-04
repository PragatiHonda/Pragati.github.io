<%@ Page Title="" Language="C#" MasterPageFile="~/Defualt.Master" AutoEventWireup="true" CodeBehind="Search.aspx.cs" Inherits="hari.Search" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <br />
<asp:Label ID="Label2" runat="server"></asp:Label>
<br />
<br />
<div class="container">


<div class="row">
         
     </div>
         <div class ="col-md-4"> 

      
         <div class="form-group">
                        <label>Insert Reg No:</label>
 
                        <asp:TextBox ID="txtID" CssClass="form-control" runat="server" AutoPostBack="true"  ontextchanged="txtID_TextChanged"></asp:TextBox> 
           
                    <div class="form-group">
                   
                  
         
         <div class="col-md-6">
         <div class="form-group">
                        <label>Enter Box Name:</label>
                        <asp:TextBox ID="txtUpdateCatName" CssClass="form-control" runat="server" Font-Bold="True" Font-Size="Medium"></asp:TextBox>
                    </div>
          <label>Insert Date:</label>
            
                        <asp:TextBox ID="txtUpdateDate" CssClass="form-control" runat="server" Font-Bold="True" Font-Size="Medium"></asp:TextBox>
                    </div>
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="Yellow"></asp:Label>
          <div class="form-group">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="btnUpdateBrand" CssClass ="btn btn-primary " runat="server" 
                            Text="UPDATE" onclick="btnUpdateBrand_Click" Font-Bold="True" Font-Size="Medium" ForeColor="White"  />
                    </div>
         </div>
        </div>
         </div>
    </div>
         
          <div class="col-md-16">
          
             <div class="row">
               
                &nbsp;<asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="Medium" ForeColor="Blue" Text="Please Search Here"></asp:Label>
                 <asp:TextBox ID="txtFilterGrid1Record" style="border:2px solid blue" CssClass="form-control" runat="server" placeholder="Search Name/Number...." onkeyup="Search_Gridview(this)" Width="400px" Font-Bold="True" Font-Size="Medium" OnTextChanged="txtFilterGrid1Record_TextChanged1"></asp:TextBox>
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
