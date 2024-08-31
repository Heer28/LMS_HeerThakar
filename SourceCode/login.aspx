<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Library Management System - Login</title>
    <style>
        body {
            font-family: 'Georgia', serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            background-image: url('background-books.jpg'); /* Add a subtle library-themed background image */
            background-size: cover;
            background-position: center;
        }
        .container {
            width: 100%;
            max-width: 400px;
            padding: 30px;
            background-color: rgba(255, 255, 255, 0.9);
            border-radius: 10px;
            box-shadow: 0 0 15px rgba(0, 0, 0, 0.1);
            text-align: center;
        }
        .container h2 {
            margin-bottom: 20px;
            color: #333;
            font-weight: normal;
        }
        .container label {
            font-weight: bold;
            margin-bottom: 5px;
            display: inline-block;
            color: #555;
        }
        .container .form-control {
            width: 100%;
            padding: 12px;
            margin-bottom: 20px;
            border: 1px solid #ddd;
            border-radius: 5px;
            font-family: 'Georgia', serif;
            font-size: 14px;
        }
        .container .form-control:focus {
            border-color: #8b4513;
            box-shadow: 0 0 5px rgba(139, 69, 19, 0.5);
        }
        .container .btn {
            width: 100%;
            padding: 12px;
            background-color: #8b4513; /* A color reminiscent of old books or leather */
            border: none;
            border-radius: 5px;
            color: white;
            font-size: 16px;
            cursor: pointer;
            font-family: 'Georgia', serif;
        }
        .container .btn:hover {
            background-color: #5f3510;
        }
        .container .forgot-password {
            margin-top: 10px;
            font-size: 12px;
            color: #555;
        }
        .container .forgot-password a {
            color: #8b4513;
            text-decoration: none;
        }
        .container .forgot-password a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <h2>Library Management System</h2>
            <label for="tlog">Username or Email</label>
            <asp:TextBox ID="tlog" runat="server" CssClass="form-control" placeholder="Enter your username or email"></asp:TextBox>

            <label for="tpass">Password</label>
            <asp:TextBox ID="tpass" runat="server" CssClass="form-control" TextMode="Password" placeholder="Enter your password"></asp:TextBox>

            <asp:Button ID="Button1" runat="server" Text="Login" CssClass="btn" OnClick="Button1_Click" />

            <div class="forgot-password">
                <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            </div>
        </div>
    </form>
</body>
</html>
