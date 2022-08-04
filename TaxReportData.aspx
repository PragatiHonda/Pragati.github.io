<%@ Page Title="" Language="C#" MasterPageFile="~/Defualt.Master" AutoEventWireup="true" CodeBehind="TaxReportData.aspx.cs" Inherits="hari.TaxReportData" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
  
    <br />
    <br />
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      <h3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Tax Report Data</h3>
    <table class="auto-style1">
        <tr>
            <td class="auto-style2">
                <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Large" Text="DATE"></asp:Label>
            </td>
            <td class="auto-style5">
                <br />
                <br />
            </td>
            <td class="auto-style3">
                <asp:TextBox ID="TextBox1" runat="server" Height="25px"></asp:TextBox>
                <asp:CustomValidator ID="CustomValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Date Cheq" OnServerValidate="CustomValidator1_ServerValidate"></asp:CustomValidator>
            </td>
            <td class="auto-style6">
                <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="Large" Text="TO DATE"></asp:Label>
            </td>
            <td class="auto-style11">
                <asp:TextBox ID="TextBox2" runat="server" Height="24px" Width="128px"></asp:TextBox>
                <asp:CustomValidator ID="CustomValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Date Check" OnServerValidate="CustomValidator2_ServerValidate"></asp:CustomValidator>
            </td>
            <td class="auto-style10">
                &nbsp;
                <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Search" Width="116px" Font-Size="Medium" Height="30px" Font-Bold="True" />
            </td>
            <td class="auto-style9">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button3" runat="server" Height="30px" OnClick="Button3_Click" Text="Expert To Excell" Width="156px" BackColor="Lime" Font-Bold="True" ForeColor="White" />
            </td>
            <td class="auto-style4">
                <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Total&nbsp;
                <asp:Label ID="Label3" runat="server" BackColor="Yellow" Font-Bold="True" Font-Size="X-Large"></asp:Label>
            </td>
        </tr>
    </table>

         <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Height="129px" Width="1240px" ShowFooter="True" EmptyDataText="Data Not Found" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
             <Columns>
                 <asp:BoundField DataField="ID" HeaderText="ID" >
                 <FooterStyle HorizontalAlign="Center" />
                 <ItemStyle HorizontalAlign="Center" />
                 </asp:BoundField>
                 <asp:BoundField DataField="Aria" HeaderText="Aria" />
                 <asp:BoundField DataField="Frame" HeaderText="Frame" />
                 <asp:BoundField DataField="Application" HeaderText="Application" />
                 <asp:BoundField DataField="Name" HeaderText="Name" />
                 <asp:BoundField DataField="TaxPayDate" HeaderText="DATE" >
                 <FooterStyle HorizontalAlign="Center" />
                 <ItemStyle HorizontalAlign="Center" />
                 </asp:BoundField>
                 <asp:BoundField DataField="Contact" HeaderText="Contact" />
                 <asp:BoundField DataField="TaxAmount" HeaderText="TaxAmount" />
                 <asp:BoundField DataField="AdditionalFees" HeaderText="AdditionalFees" />
                 <asp:BoundField DataField="WDAmount" HeaderText="WDAmount" />
                 <asp:BoundField DataField="Total" HeaderText="TOTAL" >
                 <FooterStyle HorizontalAlign="Center" />
                 <ItemStyle HorizontalAlign="Center" />
                 </asp:BoundField>
                 <asp:BoundField DataField="TaxPayDate" HeaderText="TaxPayDate" />
             </Columns>
             <FooterStyle BackColor="Yellow" Font-Bold="True" Font-Size="Medium" />
             <HeaderStyle Font-Bold="True" Font-Italic="False" ForeColor="Blue" />
         </asp:GridView>


       
    <br />
        
    <p>&nbsp;</p>
</asp:Content>
