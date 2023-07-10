<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="NDSO.ndso.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>
    <link href="Home.css" rel="stylesheet" type="text/css"/>
    <link href="Login.css" rel="stylesheet" type="text/css"/>
</head>
<body>
    <form id="form1" runat="server">
            <h1 class="hdr">National Drug Service Organization(NDSO)</h1>

    <ul class="reg">
        <li class="reg1"><a href="Register.aspx" class="anc">Register</a></li>
            <li class="reg1"><a href="#" class="anc">Login</a></li>
    </ul>
    
    <div class="nav">
    <ul class="navss"><li class="navs"><a href="#" class="anch"></a></li>
        <li class="navs"><a href="#" class="anch">Home</a></li>
        <li class="navs"><a href="#" class="anch">Task</a></li>
        <li class="navs"><a href="#" class="anch">Guidelines</a></li>
        <li class="navs"><a href="#" class="anch">About Us</a></li>
    </ul>
    </div>
        <center>
        <table>
            <tr><td><asp:Label ID="Email" runat="server" Text="Email"></asp:Label></td>
                <td><asp:TextBox ID="Emails" cssClass="tbx" runat="server"></asp:TextBox></td></tr>
        <tr><td><asp:Label ID="Password"  runat="server" Text="Password"></asp:Label></td>
        <td><asp:TextBox ID="Passwords" TextMode="Password" cssClass="tbx" runat="server"></asp:TextBox></td></tr>
            <tr><td colspan="2">
                
              <center><asp:Button ID="Button1" runat="server" CssClass="btnlog" Text="Login" OnClick="Button1_Click" />
                
                <asp:Button ID="Cancel" CssClass="Btns" runat="server" Text="Cancel"  /></center>
                </td></tr></table>
            </center>
    </form>
</body>
</html>
