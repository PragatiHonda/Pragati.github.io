<%@ Page Title="" Language="C#" MasterPageFile="~/Defualt.Master" AutoEventWireup="true" CodeBehind="OldBikeReportView.aspx.cs" Inherits="hari.OldBikeReportView" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            height: 44px;
            width: 1817px;
            margin-top: 60px;
        }
        .auto-style7 {
            width: 100%;
            margin-bottom: 0px;
            background-color: #FF99FF;
        }
        .auto-style8 {
            width: 100px;
            height: 43px;
        }
        .auto-style9 {
            width: 296px;
            height: 43px;
        }
        .auto-style10 {
            width: 84px;
            height: 43px;
        }
        .auto-style12 {
            width: 157px;
            height: 43px;
        }
        .auto-style13 {
            width: 114px;
            height: 43px;
        }
        .auto-style14 {
            height: 43px;
        }
        .auto-style15 {
            width: 137px;
            height: 43px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
     <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="X-UA-Compatible" content="IE-edge">
    <link href="css/Custome.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
   
     <h2 class="auto-style1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Old Bike Reports</h2>
     
     <asp:Panel ID="Panel2" runat="server" BackColor="#00FFCC" Height="2574px" Width="1251px">
         &nbsp;&nbsp;<table class="auto-style7">
             <tr>
                 <td class="auto-style8">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                     <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Medium" ForeColor="#3333FF" Text="Date"></asp:Label>
                 </td>
                 <td class="auto-style9">
                     <asp:TextBox ID="TextBox3" runat="server" Height="30px" Width="140px"></asp:TextBox>
                     <asp:CustomValidator ID="CustomValidator5" runat="server" ControlToValidate="TextBox3" ErrorMessage="Invalide Date Format" ForeColor="#FFFFCC" OnServerValidate="CustomValidator1_ServerValidate"></asp:CustomValidator>
                 </td>
                 <td class="auto-style10">&nbsp;<asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="Medium" ForeColor="#3333FF" Text="To Date"></asp:Label>
                 </td>
                 <td class="auto-style12">
                     <asp:TextBox ID="TextBox4" runat="server" Height="30px" Width="140px"></asp:TextBox>
                 </td>
                 <td class="auto-style15">
                     <asp:CustomValidator ID="CustomValidator4" runat="server" ControlToValidate="TextBox4" ErrorMessage="Invalide Date formate" ForeColor="#FFFFCC" OnServerValidate="CustomValidator2_ServerValidate"></asp:CustomValidator>
                 </td>
                 <td class="auto-style13">
                     <asp:Button ID="Button1" runat="server" BackColor="#00FF99" Font-Bold="True" Font-Size="Large" ForeColor="#FF3300" Height="30px" OnClick="Button1_Click" Text="Search" Width="104px" />
                 </td>
                 <td class="auto-style14">
                     <asp:Button ID="Button3" runat="server" BackColor="#3333FF" Font-Bold="True" ForeColor="White" Height="30px" OnClick="Button2_Click" Text="Export To Excel" Width="126px" />
                     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                     <asp:Label ID="Label3" runat="server" BackColor="Yellow" Font-Bold="True" Font-Size="X-Large"></asp:Label>
                 </td>
                 <td class="auto-style14"></td>
             </tr>
         </table>
         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        
         <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Height="100px" Width="1109px" ShowFooter="True" EmptyDataText="Data Not Found">
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
                 <asp:BoundField DataField="REGISTRATION" HeaderText="REG.NO.">
                 <ControlStyle BackColor="#0099FF" ForeColor="#FF6699" />
                 <FooterStyle HorizontalAlign="Center" />
                 <ItemStyle HorizontalAlign="Center" />
                 </asp:BoundField>
                 <asp:BoundField DataField="DATE" HeaderText="DATE" >
                 <FooterStyle HorizontalAlign="Center" />
                 <ItemStyle HorizontalAlign="Center" />
                 </asp:BoundField>
                 <asp:BoundField DataField="PUR_AMOUNT" HeaderText="PURCHASE AMOUNT" >
                 <FooterStyle HorizontalAlign="Center" />
                 <ItemStyle HorizontalAlign="Center" />
                 </asp:BoundField>
                 <asp:BoundField DataField="REPAIRBIL" HeaderText="REPAIR BILL" >
                 <FooterStyle HorizontalAlign="Center" />
                 <ItemStyle HorizontalAlign="Center" />
                 </asp:BoundField>
                 <asp:BoundField DataField="COTTING" HeaderText="COTTING" >
                 <FooterStyle HorizontalAlign="Center" />
                 <ItemStyle HorizontalAlign="Center" />
                 </asp:BoundField>
                 <asp:BoundField DataField="TOTAL" HeaderText="TOTAL" >
                 <FooterStyle HorizontalAlign="Center" />
                 <ItemStyle HorizontalAlign="Center" />
                 </asp:BoundField>
                 <asp:BoundField DataField="SALE_AMOUNT" HeaderText="SALE AMOUNT" >
                 <FooterStyle HorizontalAlign="Center" />
                 <ItemStyle HorizontalAlign="Center" />
                 </asp:BoundField>
                 <asp:BoundField DataField="FILE_CHARGE" HeaderText="FILE CHARGE" >
                 <FooterStyle HorizontalAlign="Center" />
                 <ItemStyle HorizontalAlign="Center" />
                 </asp:BoundField>
                 <asp:BoundField DataField="TOTAL_AMOUNT" HeaderText="TOTAL AMOUNT" >
                 <FooterStyle HorizontalAlign="Center" />
                 <ItemStyle HorizontalAlign="Center" />
                 </asp:BoundField>
                 <asp:BoundField DataField="NET_PROFIT" HeaderText="NET PROFIT">
                 <FooterStyle HorizontalAlign="Center" />
                 <ItemStyle HorizontalAlign="Center" />
                 </asp:BoundField>
             </Columns>
             <FooterStyle BackColor="Yellow" Font-Bold="True" Font-Size="Medium" />
             <HeaderStyle Font-Bold="True" Font-Italic="False" ForeColor="Blue" />
         </asp:GridView>


       
         <br />
         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         

       
     </asp:Panel>
   
</asp:Content>
