<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Restaurant_Management_System.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous" />
  <title>Login</title>
  <style>
      body
{
    background-image: url("https://d2e5ushqwiltxm.cloudfront.net/wp-content/uploads/sites/284/2022/11/02041532/Spice2.jpg");
    background-size: cover;
}
#form1
{
    padding: 50px;
    margin: 60px;
    border: 10px solid black;
    border-radius: 60px;
}
  
form {
    background-color: #f7f7f7;
    padding: 30px;
    border-radius: 10px;
}

.form-group {
margin-bottom: 20px;
}

.form-control {
border-radius: 5px;
border: none;
padding: 10px;
font-size: 18px;
}

.form-control:focus {
border: 1px solid #000;
box-shadow: 0 0 0 0.2rem rgba(0,0,0,.25);
}

.form-check {
margin-bottom: 20px;
}

.btn {
background-color: #4CAF50;
color: #fff;
border-radius: 5px;
padding: 12px 20px;
font-size: 18px;
cursor: pointer;
}

.btn:hover {
background-color: #3e8e41;
}

.login-container {
text-align: center;
margin-top: 50px;
}

.logo {
font-size: 60px;
color: #4CAF50;
margin-bottom: 40px;
}
  </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <div class="login-container">
                <div class="logo"><img src="img/logo.png" alt="SpiceRestaurant.com" /></div>
                <asp:Panel ID="Panel1" runat="server">
                    <h1>LOGIN</h1>
                    <div class="form-group">
                        <asp:TextBox ID="username" CssClass="form-control" placeholder="Email" runat="server"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <asp:TextBox ID="password" CssClass="form-control" TextMode="Password" placeholder="Password" runat="server"></asp:TextBox>
                    </div>
                    <asp:Button ID="loginBtn" CssClass="btn" Text="Login" runat="server" OnClick="loginBtn_Click" />
                    <asp:HyperLink ID="registerLink" CssClass="btn" NavigateUrl="register.aspx" runat="server" Text="Register"></asp:HyperLink>
                </asp:Panel>
                <br />
                <asp:Label ID="lblMessage" runat="server" Visible="False" ForeColor="#FF3300"></asp:Label>
            </div>
        </div>
    </form>
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous"></script>
</body>
</html>
