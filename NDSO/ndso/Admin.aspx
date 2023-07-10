<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="NDSO.ndso.Admin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Administration</title>
    <link rel="stylesheet" href="Hospital.css" type="text/css"/>
    <link rel="stylesheet" href="Admin.css" type="text/css"/>
</head>
<body>
    <form id="form1" runat="server">
    
    <div class="side">
    <div class="inside">
        
        
    </div>
        <h1>Tasks</h1>
        <ul class="menu_list">
        <li class="list"><a class="text" href="Admin.aspx">Add Medicine</a></li>
        <li class="list"><a class="text" href="E_view.aspx">Medicine details</a></li>
        <li class="list"><a class="text" href="ViewOrders.aspx">Available Orders</a></li>
        <li class="list"><a class="text" href="#">Details Update</a></li>
        </ul>
    </div>
        <div class="tops">
            <div class="in_top">
                <asp:Label ID="Namesi"  runat="server" CssClass="User"  ></asp:Label>
                <asp:Label ID="Sur"  runat="server" CssClass="User"  ></asp:Label>
            </div>
        </div>
        <div class="bottom">
            <center><table class="tab">
            <tr><td><asp:Label ID="Meds" CssClass="texts" runat="server" Text="Medication"></asp:Label></td>
            <td><asp:TextBox ID="Medication" cssClass="tbx" runat="server" placeholder="Medication"></asp:TextBox></td></tr>
                <tr><td><asp:Label CssClass="texts" ID="Label2" runat="server" Text="Quantity"></asp:Label></td>
            <td><asp:TextBox ID="Quantity" cssClass="tbx" runat="server" TextMode="Number"  Placeholder="Quantity"></asp:TextBox></td></tr>
                <tr><td><asp:Label ID="Pric" CssClass="texts" runat="server" Text="Price"></asp:Label></td>
            <td><asp:TextBox ID="Price" cssClass="tbx"  runat="server" TextMode="Number" placeholder="Medicine price"></asp:TextBox></td></tr>
                <tr><td><asp:Label ID="date" CssClass="texts" runat="server" Text="Expiry Date"></asp:Label></td>
            <td><asp:TextBox ID="Expiry_Date" cssClass="tbx" TextMode="Date" runat="server" placeholder="Expiry Date"></asp:TextBox></td></tr>
              <tr><td colspan="2">
               <center><div class="bt"><asp:Button CssClass="btn" ID="Submit" runat="server" Text="Submit" OnClick="Submit_Click" /></div>
               </center>
                  </td></tr>  
        </table></center>
        </div>
        
    
    </form>
</body>
</html>
