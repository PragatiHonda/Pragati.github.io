<%@ Page Title="" Language="C#" MasterPageFile="~/Defualt.Master" AutoEventWireup="true" CodeBehind="MhTax.aspx.cs" Inherits="hari.MhTax" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            border: 1px solid #0000FF;
            background-color: #66AFE9;
            height: 24px;
        }
        .auto-style2 {
            height: 34px;
        }
        .auto-style3 {
            height: 34px;
            width: 150px;
        }
        .auto-style6 {
            height: 34px;
            width: 234px;
        }
        .auto-style7 {
            height: 34px;
            width: 139px;
        }
        .auto-style8 {
            height: 34px;
            width: 241px;
        }
        .auto-style9 {
            height: 94px;
        }
        .auto-style12 {
            width: 102%;
            height: 245px;
            background-color: #FF00FF;
        }
        .auto-style13 {
            width: 149px
        }
        .auto-style15 {
            width: 235px
        }
        .auto-style16 {
            width: 149px;
            height: 37px;
        }
        .auto-style17 {
            width: 235px;
            height: 37px;
        }
        .auto-style19 {
            height: 37px;
        }
        .auto-style20 {
            height: 37px;
            width: 240px;
        }
        .auto-style24 {
            height: 37px;
            width: 138px;
        }
        .auto-style26 {
            width: 138px;
        }
        .auto-style27 {
            width: 240px;
        }
        .auto-style28 {
            width: 161px;
            height: 37px;
        }
        .auto-style29 {
            width: 161px
        }
        .auto-style30 {
            margin-left: 40;
        }
        .auto-style31 {
            height: 34px;
            width: 161px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
  
   <h4 class="auto-style9">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; MH Tex Detail</h4>
    <h4><table class="auto-style1">
        <tr>
            <td class="auto-style3">Regi. Aria</td>
            <td class="auto-style6">
                <asp:DropDownList ID="DropDownList1" runat="server" Height="30px" Width="220px" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                </asp:DropDownList>
            </td>
            <td class="auto-style7">ID NO</td>
            <td class="auto-style8">
                <asp:TextBox ID="TextBox1" runat="server" Height="34px" Width="216px"></asp:TextBox>
            </td>
            <td class="auto-style31">SR. No.</td>
            <td class="auto-style2">
                <asp:TextBox ID="TextBox2" runat="server" Height="34px" Width="212px" CssClass="auto-style30"></asp:TextBox>
            </td>
        </tr>
        </table>
        <table class="auto-style12">
                       
                            <br />
                <td class="auto-style16">Frame No.</td>
                <td class="auto-style17">
                    <asp:TextBox ID="TextBox3" runat="server" Height="31px" Width="216px" AutoPostBack="True" OnTextChanged="TextBox3_TextChanged"></asp:TextBox>
                </td>
                <td class="auto-style24">Engine No.</td>
                <td class="auto-style20">
                    <asp:TextBox ID="TextBox4" runat="server" Height="31px" Width="216px"></asp:TextBox>
                </td>
                <td class="auto-style28">Tax Amount</td>
                <td class="auto-style19">
                    <asp:TextBox ID="TextBox13" runat="server" Height="31px" Width="216px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style13">Application No.</td>
                <td class="auto-style15">
                    <asp:TextBox ID="TextBox5" runat="server" Height="31px" Width="216px"></asp:TextBox>
                </td>
                <td class="auto-style26">Invoice Date</td>
                <td class="auto-style27">
                    <asp:TextBox ID="TextBox6" runat="server" Height="31px" Width="110px"></asp:TextBox>
                    <asp:CustomValidator ID="CustomValidator1" runat="server" ControlToValidate="TextBox6" ErrorMessage="Invalide" OnServerValidate="CustomValidator1_ServerValidate"></asp:CustomValidator>
                </td>
                <td class="auto-style29">Additional Fees</td>
                <td>
                    <asp:TextBox ID="TextBox14" runat="server" Height="31px" Width="216px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style13">Name</td>
                <td class="auto-style15">
                    <asp:TextBox ID="TextBox7" runat="server" Height="31px" Width="216px"></asp:TextBox>
                </td>
                <td class="auto-style26">Contact No.</td>
                <td class="auto-style27">
                    <asp:TextBox ID="TextBox8" runat="server" Height="31px" Width="216px"></asp:TextBox>
                </td>
                <td class="auto-style29">WD Amount</td>
                <td>
                    <asp:TextBox ID="TextBox15" runat="server" Height="31px" Width="80px" AutoPostBack="True" OnTextChanged="TextBox15_TextChanged"></asp:TextBox>
                    <asp:Label ID="Label1" runat="server" Font-Bold="True" Text="Total"></asp:Label>
                    <asp:TextBox ID="TextBox18" runat="server" Font-Bold="True" Font-Size="Medium" Height="31px" Width="104px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style13">Address</td>
                <td class="auto-style15">
                    <asp:TextBox ID="TextBox9" runat="server" Height="31px" Width="216px"></asp:TextBox>
                </td>
                <td class="auto-style26">Model</td>
                <td class="auto-style27">
                    <asp:TextBox ID="TextBox10" runat="server" Height="31px" Width="216px"></asp:TextBox>
                </td>
                <td class="auto-style29">Tax Pay Date</td>
                <td>
                    <asp:TextBox ID="TextBox16" runat="server" Height="31px" Width="110px"></asp:TextBox>
                    <asp:CustomValidator ID="CustomValidator3" runat="server" ControlToValidate="TextBox16" ErrorMessage="Invalide" OnServerValidate="CustomValidator3_ServerValidate"></asp:CustomValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style13">Color</td>
                <td class="auto-style15">
                    <asp:TextBox ID="TextBox11" runat="server" Height="31px" Width="216px"></asp:TextBox>
                </td>
                <td class="auto-style26">MFG Date</td>
                <td class="auto-style27">
                    <asp:TextBox ID="TextBox12" runat="server" Height="31px" Width="110px"></asp:TextBox>
                    <asp:CustomValidator ID="CustomValidator2" runat="server" ControlToValidate="TextBox12" ErrorMessage="Invalide" OnServerValidate="CustomValidator2_ServerValidate"></asp:CustomValidator>
                </td>
                <td class="auto-style29">Camp Date</td>
                <td>
                    <asp:TextBox ID="TextBox17" runat="server" Height="31px" Width="110px"></asp:TextBox>
                    <asp:CustomValidator ID="CustomValidator4" runat="server" ControlToValidate="TextBox17" ErrorMessage="Inavalide" OnServerValidate="CustomValidator4_ServerValidate"></asp:CustomValidator>
                    <br />
                </td>
            </tr>
        </table>
    </h4>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Button1" runat="server" BackColor="#6600FF" Font-Bold="True" Font-Size="Medium" ForeColor="White" Height="42px" Text="SAVE DATA" Width="121px" OnClick="Button1_Click1" />
    &nbsp;&nbsp;&nbsp;&nbsp;  <a class="btn btn-lg btn-danger" href="TaxDetail.aspx" role="button" style="height: 40px; width: 155px;">Detail & UpDate</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  <a class="btn btn-lg btn-primary" href="TaxReportData.aspx" role="button" style="height: 40px; width: 155px;">Tax Data View </a>&nbsp;&nbsp;&nbsp;&nbsp; 
   <a class="btn btn-lg btn-primary" href="MHTaxReport.aspx" role="button" style="height: 40px; width: 171px;">All Data View </a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   
    <asp:GridView ID="GridView1" runat="server">
    </asp:GridView>
    <asp:View ID="View1" runat="server">
    </asp:View>
    <br />
</asp:Content>
