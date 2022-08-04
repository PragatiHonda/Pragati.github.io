<%@ Page Title="" Language="C#" MasterPageFile="~/Man.Master" AutoEventWireup="true" CodeBehind="CallingList.aspx.cs" Inherits="hari.CallingList" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
        width: 90%;
        height: 43px;
        background-color: #FF66FF;
    }
    .auto-style3 {
        margin-bottom: 8;
    }
    .auto-style5 {
        width: 103px
    }
    .auto-style8 {
        width: 104px
    }
        .auto-style10 {
            width: 253px
        }
        .auto-style11 {
            width: 173px;
        }
        .auto-style12 {
            width: 196px;
        }
        .auto-style13 {
            width: 286px
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2>Calling List</h2>
<table class="auto-style2">
    <tr>
        <td class="auto-style8">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="Medium" ForeColor="White" Text="Date"></asp:Label>
        </td>
        <td class="auto-style10">
            <asp:TextBox ID="TextBox3" runat="server" CssClass="auto-style3" Height="28px" Width="128px"></asp:TextBox>
            <asp:CustomValidator ID="CustomValidator8" runat="server" ControlToValidate="TextBox3" ErrorMessage="Invalid Date " ForeColor="Yellow" OnServerValidate="CustomValidator8_ServerValidate"></asp:CustomValidator>
        </td>
        <td class="auto-style5">
            <asp:Label ID="Label4" runat="server" Font-Bold="True" ForeColor="White" Text="To Date"></asp:Label>
        </td>
        <td class="auto-style13">
            <asp:TextBox ID="TextBox4" runat="server" Height="28px"></asp:TextBox>
            &nbsp;<asp:CustomValidator ID="CustomValidator9" runat="server" ControlToValidate="TextBox4" ErrorMessage="Invalid Date " ForeColor="Yellow" OnServerValidate="CustomValidator9_ServerValidate"></asp:CustomValidator>
        </td>
        <td class="auto-style11">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button5" runat="server" BackColor="Lime" Font-Bold="True" Font-Size="Medium" ForeColor="White" Height="33px" OnClick="Button5_Click" Text="Search" Width="99px" />
        </td>
        <td class="auto-style12">
            <asp:Button ID="Button4" runat="server" BackColor="#6699FF" Font-Bold="True" ForeColor="White" Height="34px" OnClick="Button4_Click" Text="Expert To Excell" Width="136px" />
        </td>
        <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label5" runat="server" BackColor="Yellow" Font-Bold="True" Font-Size="X-Large"></asp:Label>
        </td>
        <td>&nbsp;</td>
    </tr>
</table>
      

   
         
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Height="206px" Width="969px" EmptyDataText="Data Not Found" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" OnRowCommand="GridView1_RowCommand" ShowFooter="True">
        <Columns>
     
        <asp:TemplateField>
              <HeaderTemplate>
                        S.No.
              </HeaderTemplate>
              <ItemTemplate>
                  <%# Container.DataItemIndex + 1 %>
              </ItemTemplate>
              <HeaderStyle BackColor="#FF3300" />
          </asp:TemplateField>
            <asp:BoundField DataField="CustomerName" HeaderText="Customer Name" >
            <HeaderStyle BackColor="Yellow" HorizontalAlign="Justify" />
            <ItemStyle HorizontalAlign="Left" />
            </asp:BoundField>
            <asp:BoundField DataField="RegistrationNo" HeaderText="Reg.N." >
            <FooterStyle HorizontalAlign="Justify" />
            <HeaderStyle BackColor="Yellow" HorizontalAlign="Justify" />
            <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="VARIANT" HeaderText="Model" >
            <HeaderStyle BackColor="Yellow" />
            </asp:BoundField>
            <asp:BoundField DataField="ContactNo" HeaderText="Mobile No." >
            <HeaderStyle BackColor="Yellow" HorizontalAlign="Center" />
            <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField HeaderText="Remark">
            <HeaderStyle BackColor="#3399FF" />
            </asp:BoundField>
        </Columns>
    </asp:GridView>
         </asp:Content>
