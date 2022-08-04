<%@ Page Title="" Language="C#" MasterPageFile="~/Defualt.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="hari.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
<br />
<asp:Panel ID="Panel1" runat="server" BackColor="Red" ForeColor="White" Height="149px" Width="918px">
    
    <asp:Label ID="Label4" runat="server" Text="Welcome Pragati Automobile" Font-Bold="True" Font-Size="XX-Large"></asp:Label>
</asp:Panel>
<asp:Panel ID="Panel2" runat="server" BackColor="Lime" Height="318px" Width="918px">
    <asp:Label ID="Label5" runat="server" Text="User Name"></asp:Label>
    <asp:TextBox ID="TextBox1" runat="server" Width="182px"></asp:TextBox>
    <asp:Label ID="Label6" runat="server" Text="Password"></asp:Label>
    <asp:TextBox ID="TextBox2" runat="server" Width="203px" TextMode="Password"></asp:TextBox>
    <asp:Button ID="Button3" runat="server" Text="Login" OnClick="Button3_Click" />
    <asp:Button ID="Button4" runat="server" Text="SinUp" />
    <asp:CheckBox ID="CheckBox1" runat="server" />
    <asp:Label ID="lblError" runat="server" Text="Label"></asp:Label>
</asp:Panel>
<br />
<br />
<br />

<p>

</p>

<br />
</asp:Content>
