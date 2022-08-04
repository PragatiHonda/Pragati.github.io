RR<%@ Page Title="" Language="C#" MasterPageFile="~/Man.Master" AutoEventWireup="true" CodeBehind="Restore.aspx.cs" Inherits="hari.Restore" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 270px;
        }
        .auto-style4 {
            width: 394px;
        }
        .auto-style5 {
            width: 270px;
            height: 20px;
        }
        .auto-style6 {
            width: 394px;
            height: 20px;
        }
        .auto-style7 {
            width: 72%;
            height: 247px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:Panel ID="Panel1" runat="server" BackColor="Fuchsia" Height="309px">
        <asp:Label ID="Label1" runat="server" Text="Restore Data Base" Font-Bold="True" Font-Size="X-Large" ForeColor="#3333CC"></asp:Label>
        <table class="auto-style7">
            <tr>
                <td class="auto-style1">
                    <asp:Label ID="Label2" runat="server" Text="Click"></asp:Label>
                </td>
                <td class="auto-style4">
                    <asp:ListBox ID="ListBox1" runat="server" Height="180px" Width="532px"></asp:ListBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style5"></td>
                <td class="auto-style6">
                    <asp:Button ID="Button1" runat="server" Font-Bold="True" Font-Size="Medium" ForeColor="#003366" Height="35px" OnClick="Button1_Click" Text="Restore" Width="157px" />
                    <asp:Button ID="Button2" runat="server" BackColor="Lime" Font-Bold="True" Font-Size="Medium" Height="35px" OnClick="Button2_Click" Text="Backup File" Width="163px" />
                </td>
            </tr>
        </table>
    </asp:Panel>

</asp:Content>
