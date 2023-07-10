<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="View_Order.aspx.cs" Inherits="NDSO.ndso.View_Order" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>View Order</title>
     <link rel="stylesheet" href="Hospital.css" type="text/css"/>
    <style type="text/css">
        .auto-style1 {
            width: 34px;
        }
    </style>
</head>
<body>
    <formdiv id="form1" runat="server">
    <div class="side">
    <div class="inside">

    </div>
        <h1>Tasks</h1>
        <ul class="menu_list">
        <li class="list"><a class="text" href="#">Place Order</a></li>
        <li class="list"><a class="text" href="#">Made Order</a></li>
        <li class="list"><a class="text" href="#">Update Order</a></li>
        </ul>
    </div>
        <div class="tops">
            <div class="in_top">
                <asp:Label ID="Namesi"  runat="server" CssClass="labels"  ></asp:Label>
            </div>
        </div>
        < class="bottom">
            
        </>
    </formdiv>
</body>
</html>
