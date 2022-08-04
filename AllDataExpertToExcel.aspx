<%@ Page Title="" Language="C#" MasterPageFile="~/Man.Master" AutoEventWireup="true" CodeBehind="AllDataExpertToExcel.aspx.cs" Inherits="hari.AllDataExpertToExcel" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            height: 68px;
            margin-bottom: 14px;
            background-color: #00CC00;
        }
        .auto-style2 {
            height: 40px;
        width: 704px;
    }
        .auto-style3 {
            height: 40px;
            width: 144px;
        }
    .auto-style4 {
        height: 40px;
        width: 133px;
    }
    .auto-style5 {
        height: 40px;
        width: 65px;
    }
    .auto-style6 {
        height: 40px;
        width: 87px;
    }
    .auto-style7 {
        height: 40px;
        width: 147px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <h4>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; All Data Expert To Excel</h4>
    <table class="auto-style1">
        <tr>

            <td class="auto-style6">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

                <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Medium" ForeColor="White" Text="Date"></asp:Label>
            </td>

            <td class="auto-style4">

                <br />
                <asp:TextBox ID="TextBox1" runat="server" Height="30px" Font-Bold="True"></asp:TextBox>
                <asp:CustomValidator ID="CustomValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Invalid Date" OnServerValidate="CustomValidator1_ServerValidate"></asp:CustomValidator>
            </td>
            <td class="auto-style5">
                <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="Medium" ForeColor="White" Text="ToDate"></asp:Label>
            </td>
            <td class="auto-style3">
               
           
                       
    
                <br />
                <asp:TextBox ID="TextBox2" runat="server" Height="30px" Font-Bold="True"></asp:TextBox>
                <asp:CustomValidator ID="CustomValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Invalid Date" OnServerValidate="CustomValidator2_ServerValidate"></asp:CustomValidator>
            </td>
            <td class="auto-style7">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button1" runat="server" BackColor="#0000CC" Font-Bold="True" Font-Size="Medium" ForeColor="White" Height="34px" OnClick="Button1_Click" Text="Search" Width="100px" />
            </td>
            <td class="auto-style2">
                &nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button3" runat="server" BackColor="Yellow" Font-Bold="True" Font-Size="Medium" ForeColor="#0000CC" Height="34px" OnClick="Button3_Click" Text="View Order Sheet" Width="155px" />
&nbsp;<asp:Button ID="Button2" runat="server" Font-Bold="True" Font-Size="Medium" ForeColor="White" Height="34px" Text="Expert To Excel" BackColor="#FF0066" OnClick="Button2_Click" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label3" runat="server" BackColor="Yellow" Font-Bold="True" Font-Size="X-Large"></asp:Label>
            </td>
        </tr>
    </table>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" EmptyDataText="Data Not Found" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
        <Columns>
            <asp:TemplateField>
              <HeaderTemplate>
                        S.No.
              </HeaderTemplate>
              <ItemTemplate>
                  <%# Container.DataItemIndex + 1 %>
              </ItemTemplate>
              <HeaderStyle BackColor="#0066FF" />
          </asp:TemplateField>
            <asp:BoundField DataField="DealerName" HeaderText="Dealer Name" >
            <HeaderStyle BackColor="#0066FF" />
            </asp:BoundField>
            <asp:BoundField DataField="Dealercode" HeaderText=" Dealer code" >
            <HeaderStyle BackColor="#0066FF" />
            </asp:BoundField>
            <asp:BoundField DataField="State" HeaderText="State" >
            <HeaderStyle BackColor="#0066FF" />
            </asp:BoundField>
            <asp:BoundField DataField="Invoice" HeaderText="Invoice Date" >
            <HeaderStyle BackColor="#0066FF" />
            </asp:BoundField>
            <asp:BoundField DataField="EngineNo" HeaderText="Engine No" >
            <HeaderStyle BackColor="#0066FF" />
            </asp:BoundField>
            <asp:BoundField DataField="PlantCode" HeaderText="Plant Code" >
            <HeaderStyle BackColor="#0066FF" />
            </asp:BoundField>
            <asp:BoundField DataField="OrederType" HeaderText="Oreder Type" >
            <HeaderStyle BackColor="#0066FF" />
            </asp:BoundField>
            <asp:BoundField DataField="VehicleCatogary" HeaderText="Vehicle Catogary" >
            <HeaderStyle BackColor="#0066FF" />
            </asp:BoundField>
            <asp:BoundField DataField="Model" HeaderText="Model" >
            <HeaderStyle BackColor="#0066FF" />
            </asp:BoundField>
            <asp:BoundField DataField="MfgDate" HeaderText="Mfg Date" >
            <HeaderStyle BackColor="#0066FF" />
            </asp:BoundField>
            <asp:BoundField DataField="RegistrationNo" HeaderText="Registration No" >
            <HeaderStyle BackColor="#0066FF" />
            </asp:BoundField>
            <asp:BoundField DataField="DateOfRegistration" HeaderText="Date Of Registration" >
            <HeaderStyle BackColor="#0066FF" />
            </asp:BoundField>
            <asp:BoundField DataField="CustomerName" HeaderText="Customer Name" >
            <HeaderStyle BackColor="#0066FF" />
            </asp:BoundField>
            <asp:BoundField DataField="ContactNo" HeaderText="Contact No" >
            <HeaderStyle BackColor="#0066FF" />
            </asp:BoundField>
            <asp:BoundField DataField="EmailId" HeaderText="Email Id" >
            <HeaderStyle BackColor="#0066FF" />
            </asp:BoundField>
        </Columns>

    </asp:GridView>

    <asp:GridView ID="GridView2" runat="server" EmptyDataText="Data Not Found">
        <Columns>
            <asp:TemplateField>
              <HeaderTemplate>
                        S.No.
              </HeaderTemplate>
              <ItemTemplate>
                  <%# Container.DataItemIndex + 1 %>
              </ItemTemplate>
             
          </asp:TemplateField>
        </Columns>

    </asp:GridView>

    <br />
    </asp:Content>

