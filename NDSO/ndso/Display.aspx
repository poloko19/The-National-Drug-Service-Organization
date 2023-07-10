<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Display.aspx.cs" Inherits="NDSO.ndso.Display" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div class="side">
    <div class="inside">
        
        
    </div>
        <h1>Tasks</h1>
        <ul class="menu_list">
        <li class="list"><a class="text" href="Admin.aspx">Add Medicine</a></li>
        <li class="list"><a class="text" href="#">Medicine details</a></li>
        <li class="list"><a class="text" href="#">Available Orders</a></li>
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
           
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display.">
                <Columns>
                    <asp:BoundField DataField="Userid" HeaderText="Userid" SortExpression="Userid" />
                    <asp:BoundField DataField="Medication" HeaderText="Medication" SortExpression="Medication" />
                    <asp:BoundField DataField="Quantity" HeaderText="Quantity" SortExpression="Quantity" />
                    <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
                    <asp:BoundField DataField="Expiry_Date" HeaderText="Expiry_Date" SortExpression="Expiry_Date" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:HealthConnectionString1 %>" ProviderName="<%$ ConnectionStrings:HealthConnectionString1.ProviderName %>" SelectCommand="SELECT [Userid], [Medication], [Quantity], [Price], [Expiry_Date] FROM [Medications]"></asp:SqlDataSource>
           
        </div>

    </form>
</body>
</html>
