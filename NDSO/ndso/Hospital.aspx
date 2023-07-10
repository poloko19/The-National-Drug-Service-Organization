<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Hospital.aspx.cs" Inherits="NDSO.ndso.Hospital" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Hospital</title>
    <link rel="stylesheet" href="Hospital.css" type="text/css"/>
    <style type="text/css">
        .auto-style1 {
            width: 34px;
        }
    </style>
</head>
<body>

    <form id="form1" runat="server">
    <div class="side">
    <div class="inside">
        
        
    </div>
        <h1>Tasks</h1>
        <ul class="menu_list">
        <li class="list"><a class="text" href="Hospital.aspx">Place Order</a></li>
        <li class="list"><a class="text" href="UpdateOrder.aspx">Made Order</a></li>
        <li class="list"><a class="text" href="#">Update Order</a></li>
        </ul>
    </div>
        <div class="tops">
            <div class="in_top">
                <asp:Label ID="Namesi"  runat="server" CssClass="labels"  ></asp:Label>
            </div>
        </div>
        <div class="bottom">
            <center><table style="height: 183px">
                <tr><td class="auto-style1">Medications </td>
            <td>

              <asp:DropDownList ID="Med" runat="server" AutoPostBack="True" OnSelectedIndexChanged="Med_SelectedIndexChanged"></asp:DropDownList>
            </td></tr>
            
                <tr><td class="auto-style1"><asp:Label ID="Label2" runat="server" Text="Quantity"></asp:Label></td>
            <td><asp:TextBox ID="TextBox2" runat="server" AutoPostBack="True" OnTextChanged="TextBox2_TextChanged"></asp:TextBox></td></tr>
                 <tr><td class="auto-style1">Medication Cost</td>
            <td><asp:TextBox ID="Med_Cost" runat="server" AutoPostBack="True" OnTextChanged="Med_Cost_TextChanged"></asp:TextBox></td></tr>
                <tr><td class="auto-style1">Distance</td>
            <td><asp:TextBox ID="TextBox4" AutoPostBack="True" runat="server" OnTextChanged="TextBox4_TextChanged"></asp:TextBox></td></tr>
                <tr><td class="auto-style1">Delivery Cost </td>
            <td><asp:TextBox ID="TextBox5" AutoPostBack="True" runat="server"></asp:TextBox></td></tr>
                
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:HealthConnectionString1 %>" SelectCommand="SELECT [Medication] FROM [Medications]"></asp:SqlDataSource>
                    </td></tr>
                 <tr><td class="auto-style1">Total Costs</td>
            <td><asp:TextBox ID="Total_Cost" AutoPostBack="True" runat="server"></asp:TextBox></td></tr>
                <tr><td colspan="2">
                    <asp:Button ID="AddToCart" runat="server" Text="Add To Cart" OnClick="AddToCart_Click"></asp:Button>
                    <asp:Button ID="Button1" runat="server" Text="Place Order" OnClick="Button1_Click" Width="81px" /></td></tr>
        </table></center>
           <center><asp:GridView ID="GridView1" runat="server"></asp:GridView></center>
            <center><asp:Button ID="Button2" runat="server" Text="Place Order" OnClick="Button2_Click" /></center>
        </div>
        
        
        
        
        
        
        
        <asp:Button ID="Button3" runat="server" Text="Place Order" OnClick="Button2_Click" />
        
        
        
        
        
        
        
    </form>
</body>
</html>
