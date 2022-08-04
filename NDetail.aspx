 <%@ Page Title="" Language="C#" MasterPageFile="~/Defualt.Master" AutoEventWireup="true" CodeBehind="NDetail.aspx.cs" Inherits="hari.NDetail" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
      <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="X-UA-Compatible" content="IE-edge">
    <link href="css/Custome.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    
    <style type="text/css">
        .auto-style1 {
            width: 99%;
            height: 30px;
            background-color: #66FF99;
        }
        .auto-style2 {
            width: 357px;
        }
        .auto-style3 {
            width: 99%;
            height: 325px;
            background-color: #FF9900;
        }
        .auto-style4 {
            width: 157px;
        }
        .auto-style5 {
            width: 174px;
        }
        .auto-style6 {
            width: 254px;
        }
        .auto-style8 {
            width: 224px;
            font-weight: bold;
            color: #FFFFFF;
        }
        .auto-style9 {
            margin-left: 14;
        }
        .auto-style10 {
            width: 224px;
        }
        .auto-style12 {
            width: 228px;
        }
        .auto-style13 {
            width: 227px;
        }
        .auto-style14 {
            margin-left: 22;
        }
    </style>
 </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        &nbsp;</p>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <h2>&nbsp;</h2>
    <h4>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; All Detail</h4>
    <table class="auto-style1">
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Medium" ForeColor="#0000CC" Text="Please Insert Reg.Number"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" Height="35px" AutoPostBack="True" Width="140px" Font-Bold="True" Font-Size="Medium" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
            </td>
        </tr>
    </table>

    <br />
    <table class="auto-style3">
        <tr>
            <td class="auto-style4">
                <asp:Label ID="Label2" runat="server" Font-Bold="True" ForeColor="White" Text="ID Number"></asp:Label>
            </td>
            <td class="auto-style13">
                <asp:TextBox ID="TextBox2" runat="server" Height="28px" Width="130px"></asp:TextBox>
            </td>
            <td class="auto-style5">
                <asp:Label ID="Label3" runat="server" Font-Bold="True" ForeColor="White" Text="Reg. Number"></asp:Label>
            </td>
            <td class="auto-style12">
                <asp:TextBox ID="TextBox3" runat="server" Height="28px" Width="130px" Font-Bold="True" Font-Size="Large" ForeColor="Blue"></asp:TextBox>
            </td>
            <td class="auto-style10">
                <asp:Label ID="Label4" runat="server" Font-Bold="True" ForeColor="White" Text="Invoice Date"></asp:Label>
            </td>
            <td class="auto-style6">
                <asp:TextBox ID="TextBox4" runat="server" Height="28px" Width="130px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">
                <asp:Label ID="Label5" runat="server" Font-Bold="True" ForeColor="White" Text="Customer Name"></asp:Label>
            </td>
            <td class="auto-style13">
                <asp:TextBox ID="TextBox5" runat="server" Height="28px" Width="211px" Font-Bold="False" Font-Size="Medium"></asp:TextBox>
            </td>
            <td class="auto-style5">
                <asp:Label ID="Label6" runat="server" Font-Bold="True" ForeColor="White" Text="Contact Number"></asp:Label>
            </td>
            <td class="auto-style12">
                <asp:TextBox ID="TextBox6" runat="server" Height="28px" Width="211px"></asp:TextBox>
            </td>
            <td class="auto-style10">
                <asp:Label ID="Label7" runat="server" Font-Bold="True" ForeColor="White" Text="MFG Date"></asp:Label>
            </td>
            <td class="auto-style6">
                <asp:TextBox ID="TextBox7" runat="server" Height="28px" Width="130px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">
                <asp:Label ID="Label8" runat="server" Font-Bold="True" ForeColor="White" Text="Vehicle Category"></asp:Label>
            </td>
            <td class="auto-style13">
                <asp:TextBox ID="TextBox8" runat="server" Height="28px" Width="211px"></asp:TextBox>
            </td>
            <td class="auto-style5">
                <asp:Label ID="Label9" runat="server" Font-Bold="True" ForeColor="White" Text="Model Type"></asp:Label>
            </td>
            <td class="auto-style12">
                <asp:TextBox ID="TextBox9" runat="server" Height="28px" Width="211px"></asp:TextBox>
            </td>
            <td class="auto-style10">
                <asp:Label ID="Label10" runat="server" Font-Bold="True" ForeColor="White" Text="Model Name"></asp:Label>
            </td>
            <td class="auto-style6">
                <asp:TextBox ID="TextBox10" runat="server" Height="28px" Width="211px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">
                <asp:Label ID="Label11" runat="server" Font-Bold="True" ForeColor="White" Text="Fram Number"></asp:Label>
            </td>
            <td class="auto-style13">
                <asp:TextBox ID="TextBox11" runat="server" Height="28px" Width="211px"></asp:TextBox>
            </td>
            <td class="auto-style5">
                <asp:Label ID="Label12" runat="server" Font-Bold="True" ForeColor="White" Text="Engine Number"></asp:Label>
            </td>
            <td class="auto-style12">
                <asp:TextBox ID="TextBox12" runat="server" Height="28px" Width="211px"></asp:TextBox>
            </td>
            <td class="auto-style10">
                <asp:Label ID="Label13" runat="server" Font-Bold="True" ForeColor="White" Text="Model Variant"></asp:Label>
            </td>
            <td class="auto-style6">
                <asp:TextBox ID="TextBox13" runat="server" Height="28px" Width="211px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">
                <asp:Label ID="Label14" runat="server" Font-Bold="True" ForeColor="White" Text="Color"></asp:Label>
            </td>
            <td class="auto-style13">
                <asp:TextBox ID="TextBox14" runat="server" Height="28px" Width="211px"></asp:TextBox>
            </td>
            <td class="auto-style5">
                <asp:Label ID="Label15" runat="server" Font-Bold="True" ForeColor="White" Text="Plant Code"></asp:Label>
            </td>
            <td class="auto-style12">
                <asp:TextBox ID="TextBox15" runat="server" Height="28px" Width="211px"></asp:TextBox>
            </td>
            <td class="auto-style8">Order Type</td>
            <td class="auto-style6">
                <asp:TextBox ID="TextBox16" runat="server" Height="28px" Width="211px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">
                <asp:Label ID="Label17" runat="server" Font-Bold="True" ForeColor="White" Text="Intry Date"></asp:Label>
            </td>
            <td class="auto-style13">
                <asp:TextBox ID="TextBox17" runat="server" Height="28px" Width="117px"></asp:TextBox>
                <asp:CustomValidator ID="CustomValidator2" runat="server" ControlToValidate="TextBox17" ErrorMessage="Invalid" OnServerValidate="CustomValidator2_ServerValidate"></asp:CustomValidator>
            </td>
            <td class="auto-style5">
                <asp:Label ID="Label18" runat="server" Font-Bold="True" ForeColor="White" Text="NP Status"></asp:Label>
            </td>
            <td class="auto-style12">
                <asp:TextBox ID="TextBox18" runat="server" Height="28px" Width="211px"></asp:TextBox>
            </td>
            <td class="auto-style10">
                <asp:Label ID="Label19" runat="server" Font-Bold="True" ForeColor="White" Text="Box No."></asp:Label>
            </td>
            <td class="auto-style6">
                <asp:TextBox ID="TextBox19" runat="server" Height="28px" Width="211px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">
                <asp:Label ID="Label20" runat="server" Font-Bold="True" ForeColor="White" Text="NP Give Date"></asp:Label>
            </td>
            <td class="auto-style13">
                <asp:TextBox ID="TextBox20" runat="server" Height="28px" Width="117px"></asp:TextBox>
                  </td>
            <td class="auto-style5">
                <asp:Label ID="Label21" runat="server" Font-Bold="True" ForeColor="White" Text="Front Laser Code"></asp:Label>
            </td>
            <td class="auto-style12">
                <asp:TextBox ID="TextBox21" runat="server" Height="28px" Width="211px"></asp:TextBox>
            </td>
            <td class="auto-style10">
                <asp:Label ID="Label22" runat="server" Font-Bold="True" ForeColor="White" Text="Rear Laser Code"></asp:Label>
            </td>
            <td class="auto-style6">
                <asp:TextBox ID="TextBox22" runat="server" Height="28px" Width="211px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">
                <asp:Label ID="Label23" runat="server" Font-Bold="True" ForeColor="White" Text="Recieved Date"></asp:Label>
            </td>
            <td class="auto-style13">
                <asp:TextBox ID="TextBox23" runat="server" Height="28px" Width="117px"></asp:TextBox>
            </td>
            <td class="auto-style5">
                <asp:Label ID="Label24" runat="server" Font-Bold="True" ForeColor="White" Text="Rc Recieved Date"></asp:Label>
            </td>
            <td class="auto-style12">
                <asp:TextBox ID="TextBox24" runat="server" Height="28px" Width="211px" CssClass="auto-style14"></asp:TextBox>
            </td>
            <td class="auto-style10">
                <asp:Label ID="Label25" runat="server" Font-Bold="True" ForeColor="White" Text="Rc Customer Give date"></asp:Label>
            </td>
            <td class="auto-style6">
                <asp:TextBox ID="TextBox25" runat="server" Height="28px" Width="210px" CssClass="auto-style9"></asp:TextBox>
            </td>
        </tr>
    </table>

    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Button1" runat="server" BackColor="#0099FF" Font-Bold="True" ForeColor="White" Height="35px" OnClick="Button1_Click" Text="UPDATE" Width="89px" />

</asp:Content>
