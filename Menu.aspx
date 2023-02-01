<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Menu.aspx.cs" Inherits="Restaurant_Management_System.Menu" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Add Menu Items</title>
    <style>
    body
        {
            background-image: url('https://d2e5ushqwiltxm.cloudfront.net/wp-content/uploads/sites/284/2022/11/02041532/Spice2.jpg');
            background-size: cover;
        }
        form {
        width: 1000px;
        margin: 0 auto;
        text-align: center;
        padding: 20px;
        border: 1px solid #ccc;
        border-radius: 50px;
        background: white;
        margin-top: 60px;
    }

    input[type="text"], textarea {
        width: 100%;
        padding: 10px;
        margin-bottom: 20px;
        border-radius: 5px;
        border: 1px solid #ccc;
    }

    input[type="submit"] {
        padding: 10px 20px;
        background-color: #4CAF50;
        color: white;
        border-radius: 5px;
        border: none;
        cursor: pointer;
    }

    input[type="submit"]:hover {
        background-color: #3e8e41;
    }

    label {
        font-weight: bold;
    }
</style>
</head>
<body>
    <form id="form1" runat="server">
    <div style="width: 991px">
        Item Name: <asp:TextBox ID="txtItemName" runat="server"></asp:TextBox><br />
        Description: <asp:TextBox ID="txtDescription" runat="server"></asp:TextBox><br />
        Price: <asp:TextBox ID="txtPrice" runat="server"></asp:TextBox><br />
        Image: <asp:FileUpload ID="fuImage" runat="server" /><br />
        Type: <asp:TextBox ID="txtType" runat="server"></asp:TextBox><br />
        <asp:Button ID="btnInsert" runat="server" Text="SUBMIT" OnClick="btnInsert_Click" />
    </div>
    <br />
    <asp:Label ID="lblMessage" runat="server" Visible="False" ForeColor="#FF3300"></asp:Label>
    </form>

</body>
</html>
