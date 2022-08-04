<%@ Page Title="" Language="C#" MasterPageFile="~/Defualt.Master" AutoEventWireup="true" CodeBehind="HsrpRecord.aspx.cs" Inherits="hari.HsrpRecord" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
  
    <style type="text/css">
    .auto-style1 {
        width: 91%;
        height: 266px;
        background-color: #0000CC;
    }
        .auto-style2 {
            width: 350px;
        }
        .auto-style3 {
            height: 40px;
        }
        .auto-style4 {
            width: 350px;
            height: 40px;
        }
        .auto-style5 {
            height: 44px;
        }
        .auto-style6 {
            width: 350px;
            height: 44px;
        }
        .auto-style7 {
            height: 46px;
        }
        .auto-style8 {
            width: 350px;
            height: 46px;
        }
        .auto-style9 {
            height: 49px;
        }
        .auto-style10 {
            width: 350px;
            height: 49px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <div>HSRP DATA UPDATE<br />
        <br />
        <br />
        <br />
        <table class="auto-style1">
            <tr>
                <td class="auto-style3">
                    &nbsp;
                    </td>
                <td class="auto-style4">
                    <asp:Label ID="Label11" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="White" Text="Please Insert Registration Number" BackColor="#00CC00"></asp:Label>
                    <br />
                </td>
                <td class="auto-style3">
                    <asp:TextBox ID="TextBox7" runat="server" Height="40px" Width="167px" AutoPostBack="True" OnTextChanged="TextBox7_TextChanged" Font-Bold="True" Font-Size="Large"></asp:TextBox>
                    <br />
                </td>
                <td class="auto-style3"></td>
            </tr>
            <tr>
                <td class="auto-style5">
                    &nbsp;
                    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Medium" ForeColor="White" Text="Reg.Number"></asp:Label>
                </td>
                <td class="auto-style6">
                    <asp:TextBox ID="TextBox1" runat="server" Height="28px" Width="150px" ReadOnly="True" BackColor="White" Font-Bold="True" Font-Size="Large" ForeColor="Red"></asp:TextBox>
                </td>
                <td class="auto-style5">
                    <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="Medium" ForeColor="White" Text="Customer Name"></asp:Label>
                </td>
                <td class="auto-style5">
                    <asp:TextBox ID="TextBox2" runat="server" Height="28px" Width="260px" ReadOnly="True" Font-Bold="True"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style7">
                    &nbsp;
                    <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="Medium" ForeColor="White" Text="Fram Number"></asp:Label>
                </td>
                <td class="auto-style8">
                    <asp:TextBox ID="TextBox3" runat="server" Height="28px" Width="260px" ReadOnly="True" Font-Bold="True"></asp:TextBox>
                </td>
                <td aria-orientation="horizontal" aria-setsize="Center" class="auto-style7">
                    <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Size="Medium" ForeColor="White" Text="Engine Number"></asp:Label>
                </td>
                <td class="auto-style7">
                    <asp:TextBox ID="TextBox4" runat="server" Height="28px" Width="260px" ReadOnly="True" Font-Bold="True"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style9">
                    &nbsp;
                    <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Size="Medium" ForeColor="White" Text="Front Laser Code"></asp:Label>
                </td>
                <td class="auto-style10">
                    <asp:TextBox ID="TextBox5" runat="server" Height="28px" Width="260px" Font-Bold="True"></asp:TextBox>
                </td>
                <td class="auto-style9">
                    <asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Size="Medium" ForeColor="White" Text="Rear Laser Code"></asp:Label>
                </td>
                <td class="auto-style9">
                    <asp:TextBox ID="TextBox6" runat="server" Height="28px" Width="260px" Font-Bold="True"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    &nbsp;
                    <asp:Label ID="Label7" runat="server" Font-Bold="True" Font-Size="Medium" ForeColor="White" Text="Box Number"></asp:Label>
                </td>
                <td class="auto-style4">
                    <asp:DropDownList ID="DropDownList1" runat="server" Height="28px" Width="102px" Font-Bold="True" ForeColor="Black">
                        <asp:ListItem>Select</asp:ListItem>
                        <asp:ListItem>1</asp:ListItem>
                        <asp:ListItem>2</asp:ListItem>
                        <asp:ListItem>3</asp:ListItem>
                        <asp:ListItem>4</asp:ListItem>
                        <asp:ListItem>5</asp:ListItem>
                        <asp:ListItem>6</asp:ListItem>
                        <asp:ListItem>7</asp:ListItem>
                        <asp:ListItem>8</asp:ListItem>
                        <asp:ListItem>9</asp:ListItem>
                        <asp:ListItem>10</asp:ListItem>
                        <asp:ListItem>11</asp:ListItem>
                        <asp:ListItem>12</asp:ListItem>
                        <asp:ListItem>13</asp:ListItem>
                        <asp:ListItem>14</asp:ListItem>
                        <asp:ListItem>15</asp:ListItem>
                        <asp:ListItem>16</asp:ListItem>
                        <asp:ListItem>17</asp:ListItem>
                        <asp:ListItem>18</asp:ListItem>
                        <asp:ListItem>19</asp:ListItem>
                        <asp:ListItem>20</asp:ListItem>
                        <asp:ListItem>21</asp:ListItem>
                        <asp:ListItem>22</asp:ListItem>
                        <asp:ListItem>23</asp:ListItem>
                        <asp:ListItem>24</asp:ListItem>
                        <asp:ListItem>25</asp:ListItem>
                        <asp:ListItem>26</asp:ListItem>
                        <asp:ListItem>27</asp:ListItem>
                        <asp:ListItem>28</asp:ListItem>
                        <asp:ListItem>29</asp:ListItem>
                        <asp:ListItem>30</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="auto-style3">
                    <asp:Label ID="Label8" runat="server" Font-Bold="True" Font-Size="Medium" ForeColor="White" Text="Rec/Not Recieved"></asp:Label>
                </td>
                <td class="auto-style3">
                    <asp:DropDownList ID="DropDownList2" runat="server" Height="28px" Width="150px" Font-Bold="True" ForeColor="#CC0000">
                        <asp:ListItem>Recieved-OK</asp:ListItem>
                        <asp:ListItem>Not Recieved</asp:ListItem>
                        <asp:ListItem>Damage</asp:ListItem>
                        <asp:ListItem>Print Misteck</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;
                    <asp:Label ID="Label9" runat="server" Font-Bold="True" Font-Size="Medium" ForeColor="White" Text="Rec. Date"></asp:Label>
                </td>
                <td class="auto-style2">  
                   



    
<asp:TextBox ID="TextBox8" runat="server" Height="28px" Font-Bold="True" OnTextChanged="TextBox8_TextChanged" Width="100px"></asp:TextBox>
                    <asp:CustomValidator ID="CustomValidator1" runat="server" ControlToValidate="TextBox8" ErrorMessage="Invalid Date Formate" Font-Bold="True" Font-Size="Medium" ForeColor="White" OnServerValidate="CustomValidator1_ServerValidate"></asp:CustomValidator>
   

                <td>
<asp:Button ID="btnSave" runat="server" Text="Save" onclick="btnSave_Click" Height="31px" Width="110px" Font-Bold="True" Font-Size="Medium" BackColor="#00CC00" ForeColor="White" />
   

                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
</div>

</asp:Content>
