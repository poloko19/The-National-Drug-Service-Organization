<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Administration.aspx.cs" Inherits="NDSO.ndso.Administration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Administration</title>
    <link rel="stylesheet" href="Hospital.css" type="text/css"/>
    <link rel="stylesheet" href="Admin.css" type="text/css"/>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <div class="side">
    <div class="inside">
        
        
    </div>
        <h1>Tasks</h1>
        <ul class="menu_list">
        <li class="list"><a class="text" href="Administration.aspx">Register</a></li>
        <li class="list"><a class="text" href="ViewUsers.aspx">Available Users</a></li>
        <li class="list"><a class="text" href="#"></a></li>
        </ul>
    </div>
        <div class="tops">
            <div class="in_top">
                <asp:Label ID="Namesi"  runat="server" CssClass="User"  ></asp:Label>
                <asp:Label ID="Sur"  runat="server" CssClass="User"  ></asp:Label>
            </div>
        </div>
        <div class="bottom">
          <center>
        <h2 class="h">Employees registration</h2>
    <table>
        <tr><td>
        <asp:Label ID="Label1"  runat="server" CssClass="labels" Text="Name" ></asp:Label></td><td>
        <asp:TextBox ID="Name" runat="server" CssClass="T1" placeholder="FirstName"></asp:TextBox>
        </td></tr>

        <tr><td>    <asp:Label ID="Label2" runat="server" CssClass="labels" Text="Surname"></asp:Label></td><td>
            <asp:TextBox ID="Surname" runat="server" CssClass="T2" placeholder="LastName"></asp:TextBox>
        </td></tr>
            <tr><td><asp:Label ID="Label3" runat="server" CssClass="labels" Text="Gender"></asp:Label></td><td>
            <asp:DropDownList ID="Gender" runat="server" CssClass="T3">
            <asp:ListItem>Male</asp:ListItem>
            <asp:ListItem>Female</asp:ListItem>
        </asp:DropDownList>
        </td></tr>
            <tr><td><asp:Label ID="Label4" runat="server" CssClass="labels" Text="Email" ></asp:Label></td><td>
            <asp:TextBox ID="Email" runat="server"  CssClass="T4" TextMode="Email" placeholder="Email"></asp:TextBox>
        </td></tr>
            <tr><td><asp:Label ID="Label5" runat="server" CssClass="labels" Text="Role"></asp:Label></td><td>
           <asp:DropDownList ID="Role" runat="server"  CssClass="T5">
            <asp:ListItem>Pharmacist</asp:ListItem>
            <asp:ListItem>Admin</asp:ListItem>
           </asp:DropDownList>
          </td></tr>
          <tr><td><asp:Label ID="Label6" runat="server" CssClass="labels" Text="Username"></asp:Label></td><td>
          <asp:TextBox ID="Username" runat="server" CssClass="T6" placeholder="Username"></asp:TextBox>
          </td></tr>
          <tr><td><asp:Label ID="Label7" runat="server" CssClass="labels" Text="Password"></asp:Label></td><td>
          <asp:TextBox ID="Password" runat="server" CssClass="T7" TextMode="Password" placeholder="Password"></asp:TextBox>
          </td></tr>
          <tr><td><asp:Label ID="Label8" runat="server" CssClass="labels" Text="Confirm"></asp:Label></td><td>
          <asp:TextBox ID="Confirm" runat="server"  CssClass="T8" TextMode="Password" placeholder="Confirm Password"></asp:TextBox>
         </td></tr>
          <tr><td colspan="2"> <center><div class="dcover"><asp:Button CssClass="btns" ID="Button1" runat="server" Text="Register" OnClick="Button1_Click" /></div></center></td></tr>
        
        </table>
        </center> 
           
        </div>
    </div>
    </form>
</body>
</html>
