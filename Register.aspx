<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="Restaurant_Management_System.MainPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous" />
  <title>Registration</title>
  <style>
      body
{
    background-image: url("https://d2e5ushqwiltxm.cloudfront.net/wp-content/uploads/sites/284/2022/11/02041532/Spice2.jpg");
    background-size: cover;
}

.register-container {
    background-color: #f7f7f7;
    padding: 30px;
    border-radius: 10px;
    margin-top: 100px;
    }
    
    .register-form {
    display: flex;
    flex-wrap: wrap;
    }
    
    .form-group {
    width: 100%;
    margin-bottom: 15px;
    }
    
    .form-control {
    border-radius: 5px;
    border: none;
    padding: 10px;
    font-size: 14px;
    }
    
    .btn {
    background-color: #ffa64d;
    color: white;
    padding: 10px 20px;
    border-radius: 5px;
    border: none;
    font-size: 14px;
    margin-top: 20px;
    }
    
    .register-btn {
    background-color: #ffa64d;
    color: white;
    padding: 10px 20px;
    border-radius: 5px;
    border: none;
    font-size: 14px;
    margin-top: 20px;
    float:right;
    }
    
    .register-form h2 {
    margin-bottom: 30px;
    text-align: center;
    }
    
    .form-check {
    margin-bottom: 15px;
    }
    
    .form-check-input {
    margin-right: 5px;
    }
    
    .form-check-label {
    font-size: 14px;
    }
    
    .logo {
    text-align: center;
    margin-bottom: 30px;
    }
    
    .logo img {
    width: 150px;
    }
.register-container {
    background-color: #f7f7f7;
    padding: 30px;
    border-radius: 10px;
    }
    
    .register-form {
    display: flex;
    flex-wrap: wrap;
    }
    
    .form-group {
    width: 100%;
    margin-bottom: 15px;
    }
    
    .form-control {
    border-radius: 5px;
    border: none;
    padding: 10px;
    font-size: 14px;
    }
    
    .btn {
        background-color: #4CAF50;
        color: #fff;
        border-radius: 5px;
        padding: 12px 20px;
        font-size: 18px;
        cursor: pointer;
        text-align: center;
    }
    
    .registerbtn {
    background-color: #ffa64d;
    color: white;
    padding: 10px 20px;
    border-radius: 5px;
    border: none;
    font-size: 14px;
    margin-top: 20px;
    float:right;
    
    }
    
    .register-form h2 {
    margin-bottom: 30px;
    text-align: center;
    }
    
    .form-check {
    margin-bottom: 15px;
    }
    
    .form-check-input {
    margin-right: 5px;
    }
    
    .form-check-label {
    font-size: 14px;
    }
    
    .logo {
    text-align: center;
    margin-bottom: 30px;
    }
    
    .logo img {
    width: 150px;
    }
    #registerbtn, #loginbtn
    {
        margin-right: 30px;
        margin-left: 50px;
    }
  </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="container">
    <div class="register-container">
      <div class="logo"><img src="img/logo.png" alt="SpiceRestaurant.com" /></div>
        <div class="form-group">
          <asp:TextBox ID="firstname" CssClass="form-control" runat="server" placeholder="First Name"></asp:TextBox>
        </div>
        <div class="form-group">
            <asp:TextBox ID="lastname" CssClass="form-control" runat="server" placeholder="Last Name"></asp:TextBox>
          </div>
        <div class="form-group">
          <asp:TextBox ID="email" CssClass="form-control" runat="server" placeholder="Email"></asp:TextBox>
        </div>
        <div class="form-group">
          <asp:TextBox ID="password" CssClass="form-control" runat="server" placeholder="Password"></asp:TextBox>
        </div>
        <div class="form-group">
          <asp:TextBox ID="TextBox1" CssClass="form-control" runat="server" placeholder="Confirm Password"></asp:TextBox>
        </div>
        <div class="form-group">
          <asp:TextBox ID="TextBox2" CssClass="form-control" runat="server" placeholder="Phone Number"></asp:TextBox>
        </div>
        <div>
            <asp:Button ID="registerbtn" CssClass="btn btn-primary" runat="server" Text="Register" OnClick="register_btn_Click" Width="450px" />
            <asp:Button ID="loginbtn" CssClass="btn btn-primary" runat="server" Text="Login" OnClick="login_btn_Click" Width="450px"/>
        </div>
        </div>
    </div>
    </form>
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous"></script>
</body>
</html>
