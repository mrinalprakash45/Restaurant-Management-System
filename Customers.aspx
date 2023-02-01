<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Customers.aspx.cs" Inherits="Restaurant_Management_System.Customers" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Contact Messages</title>
    <style>
        #GridView1
        {
            text-align:center;
            margin: auto;
            padding: 50px;
        }
        body
        {
            background-image: url('https://d2e5ushqwiltxm.cloudfront.net/wp-content/uploads/sites/284/2022/11/02041532/Spice2.jpg');
            background-size: cover;
        }
        #logo 
        {
            margin-left: 550px;
            width: 343px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div id="logo">
            <img src="img/logo.png" alt="SpiceRestaurant.com" /></div>
        <div>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" DataKeyNames="CustomerID" DataSourceID="CustomerList" ForeColor="Black" Height="268px" Width="1017px">
                <Columns>
                   
                    <asp:BoundField DataField="CustomerID" HeaderText="CustomerID" InsertVisible="False" ReadOnly="True" SortExpression="CustomerID" />
                    <asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName" />
                    
                    <asp:BoundField DataField="LastName" HeaderText="LastName" SortExpression="LastName" />
                    <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                    <asp:BoundField DataField="Phone" HeaderText="Phone" SortExpression="Phone" />
                    
                    <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" />
                    
                </Columns>
                <FooterStyle BackColor="#CCCCCC" />
                <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
                <RowStyle BackColor="White" />
                <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#808080" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#383838" />
            </asp:GridView>
            <asp:SqlDataSource ID="CustomerList" runat="server" ConnectionString="<%$ ConnectionStrings:SpiceRestaurantConnectionString %>" SelectCommand="SELECT * FROM [Customers]"></asp:SqlDataSource>
            
        </div>
    </form>
</body>
</html>
