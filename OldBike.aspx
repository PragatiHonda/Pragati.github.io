<%@ Page Title="" Language="C#" MasterPageFile="~/Defualt.Master" AutoEventWireup="true" CodeBehind="OldBike.aspx.cs" Inherits="hari.OldBike" %>
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
            height: 30px;
        }
        .auto-style2 {
            width: 98%;
            background-color: #FF0066;
            margin-bottom: 0px;
        }
        .auto-style3 {
            width: 64px;
        }
        .auto-style4 {
            width: 299px;
        }
        .auto-style5 {
            width: 98%;
            height: 249px;
            background-color: #FF00FF;
        }
        .auto-style16 {
            margin-left: 15;
        }
        .auto-style29 {
            width: 564px;
            height: 54px;
        }
        .auto-style30 {
            width: 564px;
            height: 48px;
        }
        .auto-style36 {
            width: 235px;
            height: 48px;
        }
        .auto-style37 {
            width: 235px;
            height: 54px;
        }
        .auto-style38 {
            margin-left: 12;
        }
        .auto-style39 {
            margin-left: 11;
        }
        .auto-style44 {
            width: 564px;
            height: 47px;
        }
        .auto-style45 {
            width: 235px;
            height: 47px;
        }
        .auto-style50 {
            width: 564px;
            height: 46px;
        }
        .auto-style51 {
            width: 235px;
            height: 46px;
        }
        .auto-style56 {
            width: 564px;
            height: 45px;
        }
        .auto-style57 {
            width: 235px;
            height: 45px;
        }
        .auto-style58 {
            width: 396px;
            height: 45px;
        }
        .auto-style59 {
            width: 396px;
            height: 48px;
        }
        .auto-style60 {
            width: 396px;
            height: 47px;
        }
        .auto-style61 {
            width: 396px;
            height: 46px;
        }
        .auto-style62 {
            width: 396px;
            height: 54px;
        }
        .auto-style63 {
            margin-left: 26;
        }
        .auto-style69 {
            width: 345px;
            height: 45px;
        }
        .auto-style70 {
            width: 345px;
            height: 48px;
        }
        .auto-style71 {
            width: 345px;
            height: 47px;
        }
        .auto-style72 {
            width: 345px;
            height: 46px;
        }
        .auto-style73 {
            width: 345px;
            height: 54px;
        }
        .auto-style74 {
            width: 343px;
            height: 45px;
        }
        .auto-style75 {
            width: 343px;
            height: 48px;
        }
        .auto-style76 {
            width: 343px;
            height: 47px;
        }
        .auto-style77 {
            width: 343px;
            height: 46px;
        }
        .auto-style78 {
            width: 343px;
            height: 54px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <h2 class="auto-style1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
       
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Old Bike Data</h2>
    <p class="auto-style1">&nbsp;</p>
     <table class="auto-style2">
            <tr>
                <td class="auto-style3">Serial No.</td>
                <td class="auto-style4">
                    <asp:TextBox ID="TextBox1" runat="server" CssClass="auto-style16" Height="30px" Width="125px" Font-Bold="False" ReadOnly="True"></asp:TextBox>
                    DC
                    <asp:TextBox ID="TextBox16" runat="server" Height="30px" Width="125px"></asp:TextBox>
                &nbsp;
                </td>
            </tr>
        </table>

    <table class="auto-style5">
        <tr>
            <td class="auto-style69">&nbsp;&nbsp; DATE </td>
            <td class="auto-style74">
                <asp:TextBox ID="TextBox2" runat="server" Height="30px" Width="143px" TextMode="DateTime" Font-Bold="True" OnTextChanged="TextBox2_TextChanged"></asp:TextBox>
                 
                <asp:CustomValidator ID="CustomValidator1" runat="server" ControlToValidate="TextBox2" ErrorMessage="Invalid Date" Font-Bold="True" ForeColor="#FFFF66" OnServerValidate="CustomValidator1_ServerValidate1"></asp:CustomValidator>
                 
            </td>
            <td class="auto-style69">&nbsp;&nbsp; OLD CUSTOMER</td>
            <td class="auto-style58">
                <asp:TextBox ID="TextBox3" runat="server" Height="30px" Width="251px" Font-Bold="True"></asp:TextBox>
            </td>
            <td class="auto-style56">&nbsp;&nbsp; SALE AMOUNT</td>
            <td class="auto-style57">
                <asp:TextBox ID="TextBox12" runat="server" Height="30px" Width="160px" CssClass="auto-style38" Font-Bold="True" OnTextChanged="TextBox12_TextChanged"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style70">&nbsp;&nbsp; REGISTRATION NO.</td>
            <td class="auto-style75">
                <asp:TextBox ID="TextBox4" runat="server" Height="30px" Width="251px" Font-Bold="True" OnTextChanged="TextBox4_TextChanged"></asp:TextBox>
            </td>
            <td class="auto-style70">&nbsp;&nbsp; PUR. AMOUNT</td>
            <td class="auto-style59">
                <asp:TextBox ID="TextBox5" runat="server" Height="30px" Width="251px" Font-Bold="True" OnTextChanged="TextBox5_TextChanged"></asp:TextBox>
            </td>
            <td class="auto-style30">&nbsp;&nbsp; FILE CHARGE</td>
            <td class="auto-style36">
                <asp:TextBox ID="TextBox13" runat="server" Height="30px" Width="160px" AutoPostBack="True" OnTextChanged="TextBox13_TextChanged" Font-Bold="True"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style71">&nbsp;&nbsp; REPAIR BILL</td>
            <td class="auto-style76">
                <asp:TextBox ID="TextBox6" runat="server" Height="30px" Width="251px" AutoPostBack="True" OnTextChanged="TextBox6_TextChanged" Font-Bold="True"></asp:TextBox>
            </td>
            <td class="auto-style71">&nbsp;&nbsp; COTTING BILL</td>
            <td class="auto-style60">
                <asp:TextBox ID="TextBox7" runat="server" Height="30px" Width="251px" AutoPostBack="True" OnTextChanged="TextBox7_TextChanged" Font-Bold="True"></asp:TextBox>
            </td>
            <td class="auto-style44">&nbsp;&nbsp; TOTAL AMOUNT</td>
            <td class="auto-style45">
                <asp:TextBox ID="TextBox14" runat="server" Height="30px" Width="160px" AutoPostBack="True" OnTextChanged="TextBox14_TextChanged" CssClass="auto-style39" Font-Bold="True" ReadOnly="True"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style72">&nbsp;&nbsp; TOTAL AMOUNT</td>
            <td class="auto-style77">
                <asp:TextBox ID="TextBox8" runat="server" Height="30px" Width="251px" OnTextChanged="TextBox8_TextChanged" Font-Bold="True"></asp:TextBox>
            </td>
            <td class="auto-style72">&nbsp;&nbsp; NEW CUSTOMR</td>
            <td class="auto-style61">
                <asp:TextBox ID="TextBox9" runat="server" Height="30px" Width="251px" Font-Bold="True" CssClass="auto-style63"></asp:TextBox>
            </td>
            <td class="auto-style50">&nbsp;&nbsp; NET PFOFIT</td>
            <td class="auto-style51">
                <asp:TextBox ID="TextBox15" runat="server" Height="30px" Width="160px" AutoPostBack="True" OnTextChanged="TextBox15_TextChanged1" Font-Bold="True" ReadOnly="True"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style73">&nbsp;&nbsp; CONTACT NO.</td>
            <td class="auto-style78">
                <asp:TextBox ID="TextBox10" runat="server" Height="30px" Width="251px" Font-Bold="True"></asp:TextBox>
            </td>
            <td class="auto-style73">&nbsp;&nbsp; ADDRESS</td>
            <td class="auto-style62">
                <asp:TextBox ID="TextBox11" runat="server" Height="30px" Width="251px" Font-Bold="True"></asp:TextBox>
            </td>
            <td class="auto-style29">
                &nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label1" runat="server" Text="BOOK NO"></asp:Label>
                .</td>
            <td class="auto-style37">
                <asp:TextBox ID="TextBox17" runat="server" Height="30px"></asp:TextBox>
            

                <br />
                <br />
            </td>
        </tr>
    </table>

    <br />
    <!-- Bootstrap -->
    <script type="text/javascript" src='https://ajax.aspnetcdn.com/ajax/jQuery/jquery-1.8.3.min.js'></script>
    <script type="text/javascript" src='https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.0.3/js/bootstrap.min.js'></script>
    <link rel="stylesheet" href='https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.0.3/css/bootstrap.min.css'
        media="screen" />
    <!-- Bootstrap -->
    <!-- Bootstrap DatePicker -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.6.4/css/bootstrap-datepicker.css"
        type="text/css" />
    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.6.4/js/bootstrap-datepicker.js"
        type="text/javascript"></script>
    <!-- Bootstrap DatePicker -->
    <script type="text/javascript">
        $(function () {
            $('[id*=txtDate]').datepicker({
                changeMonth: true,
                changeYear: true,
                format: "dd/mm/yyyy",
                language: "tr"
            });
        });
    </script>
    
    &nbsp;<br />
    <br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Button1" runat="server" BackColor="Lime" Font-Bold="True" ForeColor="White" Height="43px" OnClick="Button1_Click" Text="Submit Data" Width="130px" Font-Size="Medium" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      <a class="btn btn-lg btn-primary" href="OldBikeDetail.aspx" role="button">Edit & Update </a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      <a class="btn btn-lg btn-primary" href="OldBikeReportView.aspx" role="button">Report View </a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <a class="btn btn-lg btn-primary" href="OldBikeSearch.aspx" role="button">Search Data </a>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
     <br />
    <br />
    <asp:View ID="View1" runat="server">
    </asp:View>
   
</asp:Content>
