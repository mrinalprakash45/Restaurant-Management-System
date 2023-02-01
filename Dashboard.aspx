<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Dashboard.aspx.cs" Inherits="Restaurant_Management_System.Dashboard" %>

<!DOCTYPE html>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Dashboard</title>
    <style type="text/css">
        body
        {
            background-image: url('https://d2e5ushqwiltxm.cloudfront.net/wp-content/uploads/sites/284/2022/11/02041532/Spice2.jpg');
            background-size: cover;
        }
        button 
        {
            background-color: #4CAF50;
            color: white;
            padding: 12px 20px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            margin: 30px;
        }
        #HelpButton, #PNR, #BookTicket, #MyTicket, #CancelTicket, #PlatformTicket
        {
            background-color: #4CAF50;
            color: white;
            padding: 12px 20px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            margin: 30px;
        }
        img
        {
            height: 100px;
            width: 100px;
            margin-left: 40px;
        }
        button:hover 
        {
            background-color: #45a049;
        }
        button:active 
        {
            background-color: #3e8e41;
        }
        .card 
        {
            /* Add shadows to create the "card" effect */
            box-shadow: 0 4px 8px 0 rgba(0,0,0,0.2);
            transition: 0.3s;
            background: white;
            border: 2px solid black;
            border-radius: 10px;
        }
        .card-container 
        {
            display: flex;
            flex-wrap: wrap;
            justify-content: space-between;
            margin: 50px;
        }
        /* On mouse-over, add a deeper shadow */
        .card:hover 
        {
            box-shadow: 0 8px 16px 0 rgba(0,0,0,0.2);
        }

        /* Add some padding inside the card container */
        .container 
        {
            /*padding: 2px 16px;*/
        }
        /* Add a black background color to the top navigation */
        .topnav 
        {
            background-color: #333;
            overflow: hidden;
            padding:20px;
        }

        /* Style the links inside the navigation bar */
        .topnav a 
        {
            float: left;
            color: #f2f2f2;
            text-align: center;
            padding: 10px;
            text-decoration: none;
            font-size: 17px;
            /*margin: 20px;*/
            margin-left: 20px;
        }

        /* Change the color of links on hover */
        .topnav a:hover 
        {
            background-color: #ddd;
            color: black;
        }

        /* Add a color to the active/current link */
        .topnav a.active 
        {
            background-color: #04AA6D;
            color: white;
        }
        footer 
        {
            display: flex;
            align-items: center;
            justify-content: space-between;
            background-color: #333333;
            color: white;
            font-size: 14px;
            padding: 20px;
        }
        #profileButton 
        {
            background-color: #4CAF50;
            color: white;
            border: none;
            border-radius: 4px;
		    float: right;
        }
        #profileButton:hover 
        {
            background-color: #45a049;
		    cursor: pointer;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="topnav">
        <a class="active">Home</a>
        <a href="#news">News</a>
        <a href="#contact">Contact</a>
        <a href="#about">About</a>
        <asp:Button ID="profileButton" runat="server" Text="Logout" onClick="Profile_Click" Height="49px" Width="141px" BackColor="Green" BorderColor="Green" BorderStyle="Solid" ForeColor="White" Font-Bold="True" />
    </div>
    <div class="card-container">
        <div class="card">
            <img src="img/customer.png"/>
            <div class="container">
            <asp:Button ID="BookTicket" runat="server" Text="Customer List" onClick="Customer_List_Click" Height="49px" Width="161px" BackColor="Green" BorderColor="Green" BorderStyle="Solid" ForeColor="White" Font-Bold="True" />
            </div>
        </div>
        <div class="card">
            <img src="img/order.png"/>
            <div class="container">
            <asp:Button ID="PNR" runat="server" Text="View Order" onClick="Order_Click" Height="49px" Width="141px" BackColor="Green" BorderColor="Green" BorderStyle="Solid" ForeColor="White" Font-Bold="True" />
            </div>
        </div>
        
        <div class="card">
            <img src="img/menu.png"/>
            <div class="container">
            <asp:Button ID="PlatformTicket" runat="server" Text="Menu Items" onClick="Menu_Click" Height="49px" Width="169px" BackColor="Green" BorderColor="Green" BorderStyle="Solid" ForeColor="White" Font-Bold="True" />
            </div>
        </div>
        <div class="card">
            <img src="img/contacts.png"/>
            <div class="container">
            <asp:Button ID="CancelTicket" runat="server" Text="Contact Messages" onClick="Contact_Click" Height="49px" Width="196px" BackColor="Green" BorderColor="Green" BorderStyle="Solid" ForeColor="White" Font-Bold="True" />
            </div>
        </div>
    </div>
    </form>
    <footer>
        <p>Copyright 2021. All rights reserved.</p>
        <p>Contact us at info@example.com</p>
    </footer>
</body>
</html>
