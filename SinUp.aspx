<%@ Page Title="" Language="C#" MasterPageFile="~/Defualt.Master" AutoEventWireup="true" CodeBehind="SinUp.aspx.cs" Inherits="hari.SinUp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
 
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
   
   
    <br />

    <br />
    <br />
    <br />
      
    <br />
    <div>

    </div>
            <label class="col-xs-11">UserName:</label>
            <div class="col-xs-11">
            <asp:TextBox ID="txtUname" runat="server" Class="form-control" placeholder="Enter Your UserName" OnTextChanged="txtUname_TextChanged"></asp:TextBox>
            </div>


            <label class="col-xs-11">Password:</label>
            <div class="col-xs-11">
            <asp:TextBox ID="txtPass" runat="server" TextMode="Password" Class="form-control" placeholder="Enter Your password"></asp:TextBox>
            </div>


            <label class="col-xs-11">Confirm Password:</label>
            <div class="col-xs-11">
            <asp:TextBox ID="txtCPass" runat="server" TextMode="Password" Class="form-control" placeholder="Enter Your Confirm password"></asp:TextBox>
            </div>

            <label class="col-xs-11">Your Full Name:</label>
            <div class="col-xs-11">
            <asp:TextBox ID="txtName" runat="server" Class="form-control" placeholder="Enter Your Name"></asp:TextBox>
            </div>

 <label class="col-xs-11">Email:</label>
            <div class="col-xs-11">
            <asp:TextBox ID="txtEmail" runat="server" Class="form-control" placeholder="Enter Your Email"></asp:TextBox>
            </div>
            <label class="col-xs-11"></label>
             <div class="col-xs-11">

                 <asp:Button ID="txtsignup" Class="btn btn-success" runat="server" Text="SignUP" OnClick="txtsignup_Click" />
            &nbsp;<asp:Label ID="lblMsg" runat="server" Text="Label"></asp:Label>
                
                  <p>&copy; <%: DateTime.Now.Year %> - Waskale425@gmail.com , Contact No.: 9407478425 / 8717845525   </p>
            </div>
       
        <br />
    <br />
    <div>

    </div>
   
   

</asp:Content>
