<%@ Page Language="C#" AutoEventWireup="true" CodeFile="create.aspx.cs" Inherits="create" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Create Account</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #001F3F;
            margin: 0;
            padding: 0;
            color: #F0F0F0;
        }
        .container {
            width: 100%;
            max-width: 500px;
            margin: 50px auto;
            padding: 20px;
            background-color: #112B3C;
            border-radius: 8px;
            box-shadow: 0 0 15px rgba(0, 0, 0, 0.5);
        }
        .container h2 {
            text-align: center;
            margin-bottom: 20px;
            color: #F0F0F0;
            font-size: 24px;
        }
        .container label {
            font-weight: bold;
            margin-bottom: 5px;
            display: inline-block;
            color: #F0F0F0;
        }
        .container .form-control {
            width: 100%;
            padding: 10px;
            margin-bottom: 15px;
            border: 1px solid #ccc;
            border-radius: 4px;
            background-color: #33475B;
            color: #F0F0F0;
        }
        .container .form-control:focus {
            border-color: #007bff;
            box-shadow: 0 0 5px rgba(0, 123, 255, 0.5);
            outline: none;
        }
        .container .btn {
            width: 100%;
            padding: 10px;
            border: none;
            border-radius: 4px;
            font-size: 16px;
            cursor: pointer;
            text-align: center;
            margin-bottom: 15px;
        }
        .container .btn-create {
            background-color: #007bff;
            color: #F0F0F0;
        }
        .container .btn-create:hover {
            background-color: #0056b3;
        }
        .container .btn-login {
            background-color: #28a745;
            color: #F0F0F0;
        }
        .container .btn-login:hover {
            background-color: #218838;
        }
        .container .message {
            text-align: center;
            margin-top: 10px;
        }
        .container a {
            color: #007bff;
            text-decoration: none;
        }
        .container a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <h2>Create Account</h2>
            <label for="tname">Name:</label>
            <asp:TextBox ID="tname" runat="server" CssClass="form-control"></asp:TextBox>

            <label for="tusername">Username:</label>
            <asp:TextBox ID="tusername" runat="server" CssClass="form-control"></asp:TextBox>

            <label for="temail">Email:</label>
            <asp:TextBox ID="temail" runat="server" CssClass="form-control"></asp:TextBox>

            <label for="tnum">Phone Number:</label>
            <asp:TextBox ID="tnum" runat="server" CssClass="form-control"></asp:TextBox>

            <label for="tpass">Password:</label>
            <asp:TextBox ID="tpass" runat="server" CssClass="form-control" TextMode="Password"></asp:TextBox>

            <asp:Button ID="Button1" runat="server" Text="Create" CssClass="btn btn-create" OnClick="Button1_Click" />

            <asp:Label ID="Label1" runat="server" CssClass="message"></asp:Label><br />
        </div>
        <div class="container">
            <asp:Button ID="btnLogin" runat="server" Text="Login" CssClass="btn btn-login" OnClick="Button2_Click" />
        </div>
    </form>
</body>
</html>
