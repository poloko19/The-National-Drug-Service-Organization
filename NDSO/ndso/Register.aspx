<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="NDSO.ndso.Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Home.css" rel="stylesheet" type="text/css"/>
    <link href="Register.css" rel="stylesheet" type="text/css"/>
</head>
<body>
    <form id="form1" runat="server">
            <h1 class="hdr">National Drug Service Organization(NDSO)</h1>

    <ul class="reg">
        <li class="reg1"><a href="Register.aspx" class="anc">Register</a></li>
            <li class="reg1"><a href="Login.aspx" class="anc">Login</a></li>
    </ul>
    
    <div class="nav">
    <ul class="navss"><li class="navs"><a href="#" class="anch"></a></li>
        <li class="navs"><a href="#" class="anch">Home</a></li>
        <li class="navs"><a href="#" class="anch">Task</a></li>
        <li class="navs"><a href="#" class="anch">Guidelines</a></li>
        <li class="navs"><a href="#" class="anch">About Us</a></li>
    </ul>
    </div>
        <div class="top">
         <center>
            <table>
        <tr><td>
        <asp:Label ID="Label1"  runat="server" CssClass="labels" Text=" Company Name" ></asp:Label></td><td>
        <asp:TextBox ID="Name" runat="server" CssClass="T1" placeholder="Company Name"></asp:TextBox>
        </td></tr>

        <tr><td>    <asp:Label ID="Label2" runat="server" CssClass="labels" Text="Physical Address"></asp:Label></td><td>
            <asp:TextBox ID="Address" runat="server" CssClass="T2" placeholder="Company Address"></asp:TextBox>
        </td></tr>
            <tr><td><asp:Label ID="Label3" runat="server" CssClass="labels" Text="Email Address"></asp:Label></td><td>
            <asp:TextBox ID="Email" runat="server" TextMode="Email" CssClass="T3" placeholder="Email Address"></asp:TextBox></td></tr>
                <tr><td><asp:Label ID="Label4" runat="server" CssClass="labels" Text="License Number"></asp:Label></td><td>
            <asp:TextBox ID="License" runat="server"  CssClass="T4" placeholder="License Number"></asp:TextBox></td></tr         
          <tr><td><asp:Label ID="Label7" runat="server" CssClass="labels" Text="Password"></asp:Label></td><td>
          <asp:TextBox ID="Password" runat="server" CssClass="T5" TextMode="Password" placeholder="Password"></asp:TextBox>
          </td></tr>
          <tr><td><asp:Label ID="Label8" runat="server" CssClass="labels" Text="Confirm"></asp:Label></td><td>
          <asp:TextBox ID="Confirm" runat="server"  CssClass="T6" TextMode="Password" placeholder="Confirm Password"></asp:TextBox>
         </td></tr>
          <tr><td colspan="2">
              <center><div class="bdiv"><asp:Button ID="Button1" CssClass="btns" runat="server" Text="Submit"  OnClick="Button1_Click" /></div></center>
              </td></tr>
        </table>

         </center>
        </div>
    </form>
</body>
</html>
