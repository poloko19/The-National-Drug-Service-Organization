<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewUsers.aspx.cs" Inherits="NDSO.ndso.ViewUsers" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Available Users</title>
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
        <li class="list"><a class="text" href="ViewUsers.aspx">Available Drugs</a></li>
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
            <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource1" AutoGenerateColumns="False" DataKeyNames="Registration_No">
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                    <asp:BoundField DataField="Surname" HeaderText="Surname" SortExpression="Surname" />
                    <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" />
                    <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                    <asp:BoundField DataField="Role" HeaderText="Role" SortExpression="Role" />
                    <asp:BoundField DataField="Username" HeaderText="Username" SortExpression="Username" />
                    <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" />
                    <asp:BoundField DataField="Registration_No" HeaderText="Registration_No" ReadOnly="True" SortExpression="Registration_No" />`
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:HealthConnectionString1 %>" DeleteCommand="DELETE FROM [Registration] WHERE [Registration_No] = @Registration_No" InsertCommand="INSERT INTO [Registration] ([Name], [Surname], [Gender], [Email], [Role], [Username], [Password], [Registration_No]) VALUES (@Name, @Surname, @Gender, @Email, @Role, @Username, @Password, @Registration_No)" SelectCommand="SELECT * FROM [Registration]" UpdateCommand="UPDATE [Registration] SET [Name] = @Name, [Surname] = @Surname, [Gender] = @Gender, [Email] = @Email, [Role] = @Role, [Username] = @Username, [Password] = @Password WHERE [Registration_No] = @Registration_No">
                <DeleteParameters>
                    <asp:Parameter Name="Registration_No" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="Name" Type="String" />
                    <asp:Parameter Name="Surname" Type="String" />
                    <asp:Parameter Name="Gender" Type="String" />
                    <asp:Parameter Name="Email" Type="String" />
                    <asp:Parameter Name="Role" Type="String" />
                    <asp:Parameter Name="Username" Type="String" />
                    <asp:Parameter Name="Password" Type="String" />
                    <asp:Parameter Name="Registration_No" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Name" Type="String" />
                    <asp:Parameter Name="Surname" Type="String" />
                    <asp:Parameter Name="Gender" Type="String" />
                    <asp:Parameter Name="Email" Type="String" />
                    <asp:Parameter Name="Role" Type="String" />
                    <asp:Parameter Name="Username" Type="String" />
                    <asp:Parameter Name="Password" Type="String" />
                    <asp:Parameter Name="Registration_No" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
          </center>
        </div>
    </div>
    </form>
</body>
</html>
