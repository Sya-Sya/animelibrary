<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="register.aspx.cs" Inherits="animelibrary.register" %>

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
    <form id="form1" runat="server">
        <div class="container shadow-lg p-3 mb-5 bg-body rounded mt-5">
             <h1>Register </h1>
            <div class="row">
                <div class="col">
                    <label for="floatingTextarea">First Name</label>
                    <asp:TextBox ID="fname" runat="server" class="form-control"  placeholder="First name" required></asp:TextBox>
                    
                </div>
                <div class="col">
                    <label for="floatingTextarea">Last Name</label>
                    <asp:TextBox ID="lname" runat="server" class="form-control"  placeholder="Last name" required></asp:TextBox>
                </div>
            </div>
            <label for="Username">Username</label>
            <asp:TextBox ID="username" runat="server" class="form-control"  placeholder="Username" required></asp:TextBox>


            <label for="email">Your Email</label>
            <asp:TextBox ID="email" runat="server" class="form-control"  placeholder="Email" required></asp:TextBox>



            <label for="password">Password</label>
            <asp:TextBox ID="password" runat="server" class="form-control"  placeholder="password" required type ="password"></asp:TextBox>

            <div class="form-floating">
                <label for="anime">Your favourite anime</label>
                <asp:TextBox ID="anime" runat="server" class="form-control"  placeholder="Enter your First Anime" required></asp:TextBox>

            </div>
            <div class="mt-4">
                <asp:Button ID="Button1" runat="server" class="btn btn-primary mb-3" Text="Sign up"  OnClick="Save" />
            </div>

        </div>

    </form>
</body>
</html>
