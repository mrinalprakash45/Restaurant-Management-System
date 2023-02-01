<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MenuList.aspx.cs" Inherits="Restaurant_Management_System.MenuList" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Order Items</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous" />
    <style>
    body
        {
            background-image: url('https://d2e5ushqwiltxm.cloudfront.net/wp-content/uploads/sites/284/2022/11/02041532/Spice2.jpg');
            background-size: cover;
        }
                .card {
        width: 30%;
        display: inline-block;
        margin: 10px;
        box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
        transition: 0.3s;
        text-align: center;
    }

    .card-header {
        background-color: #f1f1f1;
        padding: 10px;
        text-align: center;
    }

    .card-body {
        padding: 10px;
    }

    .card:hover {
        box-shadow: 0 8px 16px 0 rgba(0, 0, 0, 0.2);
        background-color: black;
      
    }
    .img-fluid    
    {
        height: 200px;
        width: 250px;
        object-fit: cover;
    }
    #quantity-input
    {
        width: 100px;
        margin-left: 35px;
    }
    
    </style>
    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script type="text/javascript">
    $(document).ready(function () {
        $("#btnSearch").click(function () {
            var searchText = $("#txtSearch").val().toLowerCase();
            $(".card").each(function () {
                var itemName = $(this).find(".card-title").text().toLowerCase();
                if (itemName.indexOf(searchText) !== -1) {
                    $(this).show();
                } else {
                    $(this).hide();
                }
            });
        });
    });
</script>

</head>
<body>
    <form id="form1" runat="server">
  <div class="container mt-3">
      <div class="form-group">
    <input type="text" id="txtSearch" class="form-control" placeholder="Search for item name" />
    <input type="button" id="btnSearch" value="Search" class="btn btn-primary mt-2" />

  </div>
    <div class="card-deck">
      <asp:ListView ID="lvMenuItems" runat="server">
        <ItemTemplate>
          <div class="card">
            <div class="card-header">
              <h4 class="card-title text-center"><%# Eval("ItemName") %></h4>
            </div>
            <div class="card-body">
              <img class="img-fluid" src='<%# "data:image/jpg;base64," + Convert.ToBase64String((byte[])Eval("ItemImage")) %>' alt="Item Image" />
              <p><b>Price: ₹<%# Eval("ItemPrice") %></b></p>
              <div class="quantity d-flex align-items-center">
                
                <input type="number" name="quantity" value="1" min="1" id="quantity-input">
                
              </div>
              <asp:Button ID="orderNowButton" runat="server" Text="Order Now" CssClass="btn btn-primary d-block mt-3 mx-auto" OnClick="orderNowButton_Click" CommandArgument='<%# Eval("ItemID") %>'/>
            </div>
          </div>
        </ItemTemplate>
      </asp:ListView>
    </div>
      
  </div>
        <asp:Label ID="label" runat="server" ForeColor="Red"></asp:Label>
</form>
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous"></script>
</body>
</html>

