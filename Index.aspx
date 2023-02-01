<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="Restaurant_Management_System.Index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <meta http-equiv="X-UA-Compatible" content="ie=edge" />
        <title>Spice Restaurant</title>
        <link rel="stylesheet" href="css/style.css" />
        <link href="https://fonts.googleapis.com/css?family=Baloo+Bhai|Bree+Serif&display=swap" rel="stylesheet" />
        <link rel="stylesheet" href="css/phone.css" media="screen and (max-width: 871px)" />
    </head>
    <body>
        <nav id="navbar">
            <div id="logo">
                <img src="img/logo.png" alt="SpiceRestaurant.com" />
            </div>
            <ul>
                <li class="items"><a href="#home">HOME</a></li>
                <li class="items"><a href="#services-container">SERVICES</a></li>
                <li class="items"><a href="#client-section">ABOUT US</a></li>
                <li class="items"><a href="#contact">CONTACT US</a></li>
                <li class="items"><a href="login.html">LOG IN</a></li>
            </ul>
        </nav>
        <section id="home">
            <h1 class="h-primary">WELCOME TO SPICE RESTAURANT</h1>
            <p>Discover the flavors of the world at Spice Restaurant</p>
            <p>Experience a taste sensation with every bite at Spice Restaurant</p>
            <button class="btn" onclick="window.location.href='MenuList.aspx'">ORDER NOW</button>
        </section>
        <section id="services-container">
            <h1 class="h-primary center">OUR SERVICES</h1>
            <div id="services">
                <div class="box">
                    <img src="img/pizza.jpg" alt="" />
                    <h2 class="h-secondary">FOOD CATERING</h2>
                    <p class="center">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aut, perspiciatis.</p>
                </div>
                <div class="box">
                    <img src="img/food1.jpg" alt="" />
                    <h2 class="h-secondary">BULK ORDERING</h2>
                    <p class="center">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aut, perspiciatis.</p>
                </div>
                <div class="box">
                    <img src="img/delivery.jpg" alt="" />
                    <h2 class="h-secondary">FOOD ORDERING</h2>
                    <p class="center">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aut, perspiciatis.</p>
                </div>
            </div>
        </section>
        <section id="client-section">
            <h1 class="h-primary center">OUR CLIENTS</h1>
            <div id="clients">
                <div class="client-item">
                    <img src="img/zomato.png" alt="Our Client" />
                    <img src="img/swiggy.jpg" alt="Our Client" />
                    <img src="img/foodpanda.png" alt="Our Client" />
                    <img src="img/uber-eats.png" alt="Our Client" />
                    <img src="img/just-eat.jpg" alt="Our Client" />
                </div>
            </div>
        </section>
        <section id="contact">
  <h1>CONTACT US</h1>
  <div id="contact-box">
    <form runat="server" id="form1">
      <div class="form-group">
        <asp:Label ID="nameLabel" runat="server" Text="NAME: "></asp:Label>
        <asp:TextBox ID="nameTextBox" CssClass="form-control" runat="server" placeholder="YOUR NAME"></asp:TextBox>
      </div>
      <div class="form-group">
        <asp:Label ID="emailLabel" runat="server" Text="EMAIL: "></asp:Label>
        <asp:TextBox ID="emailTextBox" CssClass="form-control" runat="server" placeholder="EMAIL" type="email"></asp:TextBox>
      </div>
      <div class="form-group">
        <asp:Label ID="contactNumberLabel" runat="server" Text="CONTACT NUMBER: "></asp:Label>
        <asp:TextBox ID="contactNumberTextBox" CssClass="form-control" runat="server" placeholder="CONTACT NUMBER" type="number"></asp:TextBox>
      </div>
      <div class="form-group">
        <asp:Label ID="messageLabel" runat="server" Text="MESSAGE: "></asp:Label>
        <asp:TextBox ID="messageTextBox" CssClass="form-control" runat="server" TextMode="MultiLine" Rows="10" Columns="30" placeholder="TYPE YOUR MESSAGE"></asp:TextBox>
      </div>
      <asp:Button ID="submitButton" runat="server" CssClass="btn btn-primary" Text="SEND MESSAGE" type="submit" OnClick="submitButton_Click"></asp:Button>
    </form>
  </div>
</section>
    </body>
</html>
