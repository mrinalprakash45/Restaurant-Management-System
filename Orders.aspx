<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Orders.aspx.cs" Inherits="Restaurant_Management_System.Orders" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>View Orders</title>
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
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" DataKeyNames="OrderID" DataSourceID="Order" ForeColor="Black" Height="268px" Width="1017px">
                <Columns>
                   
                    <asp:BoundField DataField="OrderID" HeaderText="OrderID" InsertVisible="False" ReadOnly="True" SortExpression="OrderID" />
                    <asp:BoundField DataField="CustomerID" HeaderText="CustomerID" SortExpression="CustomerID" />
                    
                    <asp:BoundField DataField="OrderDate" HeaderText="OrderDate" SortExpression="OrderDate" />
                    <asp:BoundField DataField="TotalAmount" HeaderText="TotalAmount" SortExpression="TotalAmount" />
                    
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
            <asp:SqlDataSource ID="Order" runat="server" ConnectionString="<%$ ConnectionStrings:SpiceRestaurantConnectionString %>" SelectCommand="SELECT * FROM [Orders]"></asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
