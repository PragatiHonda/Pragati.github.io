<%@ Page Title="" Language="C#" MasterPageFile="~/Defualt.Master" AutoEventWireup="true" CodeBehind="MHTaxReport.aspx.cs" Inherits="hari.MHTaxReport" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 99%;
            background-color: #00FF99;
            height: 32px;
        }
        .auto-style2 {
            width: 49px;
            height: 25px;
        }
        .auto-style3 {
            width: 242px;
            height: 25px;
        }
        .auto-style4 {
            height: 25px;
        }
        .auto-style5 {
            height: 25px;
            width: 72px;
        }
        .auto-style6 {
            height: 25px;
            width: 86px;
        }
        .auto-style9 {
            height: 25px;
            width: 127px;
        }
        .auto-style10 {
            width: 163px;
            height: 25px;
        }
        .auto-style11 {
            width: 214px;
            height: 25px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        RR</p>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    br/
    br/
    <h2>&nbsp;</h2>
    <h2>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; MH Tax Reports Detail All</h2>
    <table class="auto-style1">
        <tr>
            <td class="auto-style2">
                <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Large" Text="DATE"></asp:Label>
            </td>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style3">
                <asp:TextBox ID="TextBox1" runat="server" Height="25px" CssClass="col-xs-offset-0" Width="113px"></asp:TextBox>
                <asp:CustomValidator ID="CustomValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Date Not Valid" OnServerValidate="CustomValidator1_ServerValidate"></asp:CustomValidator>
            </td>
            <td class="auto-style6">
                <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="Large" Text="TO DATE"></asp:Label>
            </td>
            <td class="auto-style11">
                <asp:TextBox ID="TextBox2" runat="server" Height="25px" Width="113px"></asp:TextBox>
                <asp:CustomValidator ID="CustomValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Date Not Valid" OnServerValidate="CustomValidator2_ServerValidate"></asp:CustomValidator>
            </td>
            <td class="auto-style10">
                &nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Search" Width="134px" Font-Size="Medium" Height="30px" Font-Bold="True" />
            </td>
            <td class="auto-style9">
                <asp:Button ID="Button3" runat="server" Height="30px" OnClick="Button3_Click" Text="Expert To Excell" Width="140px" BackColor="Lime" Font-Bold="True" ForeColor="White" />
            </td>
            <td class="auto-style4">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Size="Medium" Text="Total ="></asp:Label>
&nbsp;
                <asp:Label ID="Label3" runat="server" BackColor="Yellow" Font-Bold="True" Font-Size="X-Large"></asp:Label>
            </td>
        </tr>
    </table>

         <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Height="100px" Width="1109px" ShowFooter="True" EmptyDataText="Data Not Found" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
             <Columns>
                 <asp:TemplateField>
              <HeaderTemplate>
                        S.No.
              </HeaderTemplate>
              <ItemTemplate>
                  <%# Container.DataItemIndex + 1 %>
              </ItemTemplate>
          </asp:TemplateField>
                 <asp:BoundField DataField="ID" HeaderText="Serial ID" >
                 <FooterStyle HorizontalAlign="Center" />
                 <ItemStyle HorizontalAlign="Center" />
                 </asp:BoundField>
                 <asp:BoundField DataField="Aria" HeaderText="Aria" />
                 <asp:BoundField DataField="SRNO" HeaderText="SRNO" />
                 <asp:BoundField DataField="Frame" HeaderText="Frame" />
                 <asp:BoundField DataField="Engine" HeaderText="Engine" />
                 <asp:BoundField DataField="Application" HeaderText="Application" />
                 <asp:BoundField DataField="Invoice" HeaderText="Invoice" />
                 <asp:BoundField DataField="Name" HeaderText="Name" />
                 <asp:BoundField DataField="TaxPayDate" HeaderText="DATE" >
                 <FooterStyle HorizontalAlign="Center" />
                 <ItemStyle HorizontalAlign="Center" />
                 </asp:BoundField>
                 <asp:BoundField DataField="Contact" HeaderText="Contact" />
                 <asp:BoundField DataField="Address" HeaderText="Address" />
                 <asp:BoundField DataField="Model" HeaderText="Model" />
                 <asp:BoundField DataField="Color" HeaderText="Color" />
                 <asp:BoundField DataField="MFGDate" HeaderText="MFGDate" />
                 <asp:BoundField DataField="TaxAmount" HeaderText="TAX AMOUNT" >
                 <FooterStyle HorizontalAlign="Center" />
                 <ItemStyle HorizontalAlign="Center" />
                 </asp:BoundField>
                 <asp:BoundField DataField="AdditionalFees" HeaderText="AdditionalFees" />
                 <asp:BoundField DataField="WDAmount" HeaderText="WDAmount" />
                 <asp:BoundField DataField="Total" HeaderText="TOTAL" >
                 <FooterStyle HorizontalAlign="Center" />
                 <ItemStyle HorizontalAlign="Center" />
                 </asp:BoundField>
                 <asp:BoundField DataField="TaxPayDate" HeaderText="TaxPayDate" />
                 <asp:BoundField DataField="CampDate" HeaderText="CampDate" />
                 <asp:BoundField DataField="RegNo" HeaderText="RegNo" />
                 <asp:BoundField DataField="RegDate" HeaderText="RegDate" />
             </Columns>
             <FooterStyle BackColor="Yellow" Font-Bold="True" Font-Size="Medium" />
             <HeaderStyle Font-Bold="True" Font-Italic="False" ForeColor="Blue" />
         </asp:GridView>


       
    <br />
        
</asp:Content>
