<%@ Page Title="" Language="C#" MasterPageFile="~/Defualt.Master" AutoEventWireup="true" CodeBehind="OldBikeDetail.aspx.cs" Inherits="hari.OldBikeDetail" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 101%;
            background-color: #33CCFF;
            height: 191px;
        }
        .auto-style3 {
            width: 142px;
        }
        .auto-style4 {
            width: 157px;
        }
        .auto-style5 {
            width: 265px;
        }
        .auto-style6 {
            width: 166px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    
    <h3>&nbsp;</h3>
    <h3>All Detail</h3>
    <p>Please Insert ID NO.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="TextBox31" runat="server" AutoPostBack="True" Height="30px" OnTextChanged="TextBox31_TextChanged" Width="110px"></asp:TextBox>
    &nbsp;&nbsp;&nbsp; DC NO.<asp:TextBox ID="TextBox32" runat="server" AutoPostBack="True" Height="30px" OnTextChanged="TextBox32_TextChanged"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button3" runat="server" Font-Bold="True" Font-Size="Medium" Height="38px" OnClick="Button3_Click" Text="Search" Width="97px" />
&nbsp;
        <asp:Button ID="Button1" runat="server" Font-Bold="True" Height="39px" OnClick="Button1_Click" Text="Clear Data" Width="96px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button2" runat="server" BackColor="#FF33CC" Font-Bold="True" ForeColor="White" Height="39px" OnClick="Button2_Click" Text="Update Data" Width="139px" />
    </p>
    <table class="auto-style1">
        <tr>
            <td class="auto-style6">DATE </td>
            <td class="auto-style5">
                <asp:TextBox ID="TextBox16" runat="server" Height="30px" Width="121px"></asp:TextBox>
            </td>
            <td class="auto-style3">OLD CUSTOMER</td>
            <td class="auto-style5">
                <asp:TextBox ID="TextBox17" runat="server" Height="30px" Width="251px"></asp:TextBox>
            </td>
            <td class="auto-style4">SALE AMOUNT</td>
            <td>
                <asp:TextBox ID="TextBox18" runat="server" Height="30px" Width="251px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style6">REGISTRATION NO.</td>
            <td class="auto-style5">
                <asp:TextBox ID="TextBox19" runat="server" Height="30px" Width="251px"></asp:TextBox>
            </td>
            <td class="auto-style3">PUR. AMOUNT</td>
            <td class="auto-style5">
                <asp:TextBox ID="TextBox20" runat="server" Height="30px" Width="251px"></asp:TextBox>
            </td>
            <td class="auto-style4">FILE CHARGE</td>
            <td>
                <asp:TextBox ID="TextBox21" runat="server" Height="30px" Width="251px" AutoPostBack="True" OnTextChanged="TextBox21_TextChanged"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style6">REPAIR BILL</td>
            <td class="auto-style5">
                <asp:TextBox ID="TextBox22" runat="server" Height="30px" Width="251px" AutoPostBack="True" OnTextChanged="TextBox22_TextChanged"></asp:TextBox>
            </td>
            <td class="auto-style3">COTTING BILL</td>
            <td class="auto-style5">
                <asp:TextBox ID="TextBox23" runat="server" Height="30px" Width="251px" AutoPostBack="True" OnTextChanged="TextBox23_TextChanged"></asp:TextBox>
            </td>
            <td class="auto-style4">TOTAL AMOUNT</td>
            <td>
                <asp:TextBox ID="TextBox24" runat="server" Height="30px" Width="251px" AutoPostBack="True"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style6">TOTAL AMOUNT</td>
            <td class="auto-style5">
                <asp:TextBox ID="TextBox25" runat="server" Height="30px" Width="251px"></asp:TextBox>
            </td>
            <td class="auto-style3">NEW CUSTOMR</td>
            <td class="auto-style5">
                <asp:TextBox ID="TextBox26" runat="server" Height="30px" Width="251px"></asp:TextBox>
            </td>
            <td class="auto-style4">NET PFOFIT</td>
            <td>
                <asp:TextBox ID="TextBox27" runat="server" Height="30px" Width="251px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style6">CONTACT NO.</td>
            <td class="auto-style5">
                <asp:TextBox ID="TextBox28" runat="server" Height="30px" Width="251px"></asp:TextBox>
            </td>
            <td class="auto-style3">ADDRESS</td>
            <td class="auto-style5">
                <asp:TextBox ID="TextBox29" runat="server" Height="30px" Width="251px"></asp:TextBox>
            </td>
            <td class="auto-style4">DC NO.</td>
            <td>
                <asp:TextBox ID="TextBox30" runat="server" Height="30px" Width="91px"></asp:TextBox>
            &nbsp;DCBOOK
                <asp:TextBox ID="TextBox33" runat="server" Height="31px" Width="84px"></asp:TextBox>
            </td>
        </tr>
    </table>
</asp:Content>
