 <%@ Page Title="" Language="C#" MasterPageFile="~/Defualt.Master" AutoEventWireup="true" CodeBehind="TaxDetail.aspx.cs" Inherits="hari.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            height: 327px;
            background-color: #66FF99;
        }
        .auto-style11 {
            width: 230px
        }
        .auto-style13 {
            width: 185px
        }
        .auto-style14 {
            width: 185px;
            height: 33px;
        }
        .auto-style15 {
            width: 230px;
            height: 33px;
        }
        .auto-style16 {
            height: 33px;
        }
        .auto-style17 {
            width: 100%;
            height: 44px;
            background-color: #0066FF;
        }
        .auto-style18 {
            width: 119px;
        }
        .auto-style19 {
            width: 185px;
            height: 26px;
        }
        .auto-style20 {
            width: 230px;
            height: 26px;
        }
        .auto-style21 {
            height: 26px;
        }
        .auto-style22 {
            width: 211px
        }
        .auto-style23 {
            width: 185px;
            height: 45px;
        }
        .auto-style24 {
            width: 230px;
            height: 45px;
        }
        .auto-style25 {
            height: 45px;
        }
        .auto-style26 {
            width: 156px;
        }
        .auto-style27 {
            margin-left: 18;
        }
        .auto-style28 {
            width: 186px;
            height: 26px;
        }
        .auto-style29 {
            width: 186px
        }
        .auto-style30 {
            width: 186px;
            height: 33px;
        }
        .auto-style31 {
            width: 186px;
            height: 45px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <br />
    <br />
    <br />
   <h2>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Customer Detail</h2>
    <table class="auto-style17">
        <tr>
            <td class="auto-style18">
                <asp:Label ID="Label22" runat="server" Font-Bold="True" Font-Size="Medium" ForeColor="White" Text="Application No"></asp:Label>
            </td>
            <td class="auto-style26">
                <asp:TextBox ID="TextBox22" runat="server" Height="30px" Width="130px" OnTextChanged="TextBox22_TextChanged" AutoPostBack="True" Font-Bold="True"></asp:TextBox>
            </td>
            <td>
                <asp:Label ID="Label23" runat="server" Font-Bold="True" ForeColor="White" Text="Frame Number"></asp:Label>
            </td>
            <td class="auto-style22">
                <asp:TextBox ID="TextBox23" runat="server" Height="30px" Width="175px" AutoPostBack="True" OnTextChanged="TextBox23_TextChanged" Font-Bold="True"></asp:TextBox>
            </td>
            <td>
                <asp:Label ID="Label24" runat="server" Font-Bold="True" Font-Size="Medium" ForeColor="White" Text="ID Number"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox24" runat="server" Height="30px" Width="111px" AutoPostBack="True" CssClass="auto-style27" Font-Bold="True" OnTextChanged="TextBox24_TextChanged"></asp:TextBox>
            </td>
            <td>
                <asp:Label ID="Label25" runat="server" Font-Bold="True" Font-Size="Medium" ForeColor="White" Text="Reg. No."></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox25" runat="server" Height="30px" AutoPostBack="True" Font-Bold="True" OnTextChanged="TextBox25_TextChanged"></asp:TextBox>
            </td>
        </tr>
    </table>
    <table class="auto-style1">
        <tr>
            
            <td class="auto-style19"></td>
            <td class="auto-style20"></td>
            <td class="auto-style28"></td>
            <td class="auto-style20"></td>
            <td class="auto-style19"></td>
            
            <td class="auto-style21"></td>
             
        </tr>
        <tr>
            <td class="auto-style13">
                <asp:Label ID="Label1" runat="server" Text="ID" Font-Bold="True" ForeColor="#3333CC"></asp:Label>
            </td>
            <td class="auto-style11">
                <asp:TextBox ID="TextBox1" runat="server" Height="28px" Width="210px"></asp:TextBox>
            </td>
            <td class="auto-style29">
                <asp:Label ID="Label2" runat="server" Text="Aria" Font-Bold="True" ForeColor="#3333CC"></asp:Label>
            </td>
            <td class="auto-style11">
                <asp:TextBox ID="TextBox2" runat="server" Height="28px" Width="210px"></asp:TextBox>
            </td>
            <td class="auto-style13">
                <asp:Label ID="Label3" runat="server" Text="SR NO" Font-Bold="True" ForeColor="#3333CC"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server" Height="28px" Width="210px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style13">
                <asp:Label ID="Label4" runat="server" Text="Frame No." Font-Bold="True" ForeColor="#3333CC"></asp:Label>
            </td>
            <td class="auto-style11">
                <asp:TextBox ID="TextBox4" runat="server" Height="28px" Width="210px" OnTextChanged="TextBox4_TextChanged"></asp:TextBox>
            </td>
            <td class="auto-style29">
                <asp:Label ID="Label5" runat="server" Text="Engine No." Font-Bold="True" ForeColor="#3333CC"></asp:Label>
            </td>
            <td class="auto-style11">
                <asp:TextBox ID="TextBox5" runat="server" Height="28px" Width="210px"></asp:TextBox>
            </td>
            <td class="auto-style13">
                <asp:Label ID="Label6" runat="server" Text="Application No." Font-Bold="True" ForeColor="#3333CC"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox6" runat="server" Height="28px" Width="210px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style14">
                <asp:Label ID="Label7" runat="server" Text="Invoice Date" Font-Bold="True" ForeColor="#3333CC"></asp:Label>
            </td>
            <td class="auto-style15">
                <asp:TextBox ID="TextBox7" runat="server" Height="28px" Width="210px" OnTextChanged="TextBox7_TextChanged"></asp:TextBox>
            </td>
            <td class="auto-style30">
                <asp:Label ID="Label8" runat="server" Text="Customer Name" Font-Bold="True" ForeColor="#3333CC"></asp:Label>
            </td>
            <td class="auto-style15">
                <asp:TextBox ID="TextBox8" runat="server" Height="28px" Width="210px"></asp:TextBox>
            </td>
            <td class="auto-style14">
                <asp:Label ID="Label9" runat="server" Text="Contact No." Font-Bold="True" ForeColor="#3333CC"></asp:Label>
            </td>
            <td class="auto-style16">
                <asp:TextBox ID="TextBox9" runat="server" Height="28px" Width="210px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style13">
                <asp:Label ID="Label10" runat="server" Text="Address" Font-Bold="True" ForeColor="#3333CC"></asp:Label>
            </td>
            <td class="auto-style11">
                <asp:TextBox ID="TextBox10" runat="server" Height="28px" Width="210px"></asp:TextBox>
            </td>
            <td class="auto-style29">
                <asp:Label ID="Label11" runat="server" Text="Model" Font-Bold="True" ForeColor="#3333CC"></asp:Label>
            </td>
            <td class="auto-style11">
                <asp:TextBox ID="TextBox11" runat="server" Height="28px" Width="210px"></asp:TextBox>
            </td>
            <td class="auto-style13">
                <asp:Label ID="Label12" runat="server" Text="Color" Font-Bold="True" ForeColor="#3333CC"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox12" runat="server" Height="28px" Width="210px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style23">
                <asp:Label ID="Label13" runat="server" Text="MFG Date" Font-Bold="True" ForeColor="#3333CC"></asp:Label>
            </td>
            <td class="auto-style24">
                <asp:TextBox ID="TextBox13" runat="server" Height="28px" Width="100px"></asp:TextBox>
                <asp:CustomValidator ID="CustomValidator4" runat="server" ControlToValidate="TextBox13" ErrorMessage="Not Valide" Font-Bold="True" ForeColor="#FF6699" OnServerValidate="CustomValidator4_ServerValidate"></asp:CustomValidator>
            </td>
            <td class="auto-style31">
                <asp:Label ID="Label14" runat="server" Text="Tax Amount " Font-Bold="True" ForeColor="#3333CC"></asp:Label>
            </td>
            <td class="auto-style24">
                <asp:TextBox ID="TextBox14" runat="server" Height="28px" Width="210px" OnTextChanged="TextBox14_TextChanged"></asp:TextBox>
            </td>
            <td class="auto-style23">
                <asp:Label ID="Label15" runat="server" Text="Additional Fees" Font-Bold="True" ForeColor="#3333CC"></asp:Label>
            </td>
            <td class="auto-style25">
                <asp:TextBox ID="TextBox15" runat="server" Height="28px" Width="210px" OnTextChanged="TextBox15_TextChanged"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style13">
                <asp:Label ID="Label16" runat="server" Text="WD Amount" Font-Bold="True" ForeColor="#3333CC"></asp:Label>
            </td>
            <td class="auto-style11">
                <asp:TextBox ID="TextBox16" runat="server" Height="28px" Width="210px" AutoPostBack="True" OnTextChanged="TextBox16_TextChanged"></asp:TextBox>
            </td>
            <td class="auto-style29">
                <asp:Label ID="Label17" runat="server" Text="Tax Pay Date" Font-Bold="True" ForeColor="#3333CC"></asp:Label>
            </td>
            <td class="auto-style11">
                <asp:TextBox ID="TextBox17" runat="server" Height="28px" Width="100px"></asp:TextBox>
                <asp:CustomValidator ID="CustomValidator1" runat="server" ControlToValidate="TextBox17" ErrorMessage="Not Valide" Font-Bold="True" ForeColor="#FF3399" OnServerValidate="CustomValidator1_ServerValidate"></asp:CustomValidator>
            </td>
            <td class="auto-style13">
                <asp:Label ID="Label18" runat="server" Text="Camp Date" Font-Bold="True" ForeColor="#3333CC"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox18" runat="server" Height="28px" Width="100px"></asp:TextBox>
                <asp:CustomValidator ID="CustomValidator2" runat="server" ControlToValidate="TextBox18" ErrorMessage="Not Valide" Font-Bold="True" ForeColor="#FF6699" OnServerValidate="CustomValidator2_ServerValidate"></asp:CustomValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style13">
                <asp:Label ID="Label19" runat="server" Text="Registration Date" Font-Bold="True" ForeColor="#3333CC"></asp:Label>
            </td>
            <td class="auto-style11">
                <asp:TextBox ID="TextBox19" runat="server" Height="28px" Width="100px"></asp:TextBox>
            </td>
            <td class="auto-style29">
                <asp:Label ID="Label20" runat="server" Text="Total Amount" Font-Bold="True" ForeColor="#000099"></asp:Label>
            </td>
            <td class="auto-style11">
                <asp:TextBox ID="TextBox20" runat="server" Height="28px" Width="210px" Font-Bold="True" Font-Size="Large" ForeColor="Red"></asp:TextBox>
            </td>
            <td class="auto-style13">
                <asp:Label ID="Label21" runat="server" Text="Reg. No." Font-Bold="True" ForeColor="#6600FF"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox21" runat="server" Height="28px" Width="100px"></asp:TextBox>
                <asp:CustomValidator ID="CustomValidator3" runat="server" ControlToValidate="TextBox21" ErrorMessage="Not Valide" Font-Bold="True" ForeColor="#FF6699" OnServerValidate="CustomValidator3_ServerValidate"></asp:CustomValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style13">
                &nbsp;</td>
            <td class="auto-style11">
                &nbsp;</td>
            <td class="auto-style29">
                <asp:Button ID="Button2" runat="server" BackColor="#FF66FF" Font-Bold="True" Font-Size="Large" ForeColor="White" Height="32px" OnClick="Button2_Click" Text="Update" Width="112px" />
            </td>
            <td class="auto-style11">
                &nbsp;</td>
            <td class="auto-style13">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
    
</asp:Content>
