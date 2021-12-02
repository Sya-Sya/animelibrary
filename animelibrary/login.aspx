<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="animelibrary.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">
<head runat="server">
    <title></title>
</head>
<body>

    <div class="container mt-5">
        <h1 class="mt-3 mb-3">Log in </h1>
        <form id="form1" runat="server">
            <div class="mt-3">
                <label for="Username">Username</label>
                <asp:TextBox ID="TextBox1" runat="server" class="form-control" placeholder="user Username"></asp:TextBox>
               
            </div>

            <div class="mt-3">
                <label for="password">User password</label>
                <asp:TextBox ID="TextBox2" runat="server" class="form-control" placeholder="password" type ="password"></asp:TextBox>
            </div>

            <asp:Button ID="Button1" runat="server" class="btn btn-primary mb-3 mt-4" Text="Log in " OnClick="Login" />
        </form>
    </div>
    <br />
   
    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
</body>
</html>
