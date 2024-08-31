<%@ Page Title="" Language="C#" MasterPageFile="~/LoginMasterPage.master" AutoEventWireup="true" CodeFile="AdminLogin.aspx.cs" Inherits="AdminLogin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Admin Login</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #2c3e50;
            color: #ecf0f1;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }
        .login-box {
            background-color: #34495e;
            padding: 40px;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            width: 300px;
            text-align: center;
        }
        .login-box h2 {
            margin-bottom: 20px;
            font-size: 24px;
            color: #ecf0f1;
        }
        .login-box label {
            display: block;
            margin-bottom: 5px;
            color: #bdc3c7;
            text-align: left;
        }
        .login-box input {
            width: 100%;
            padding: 10px;
            margin-bottom: 20px;
            border: 1px solid #bdc3c7;
            border-radius: 5px;
            background-color: #ecf0f1;
            color: #2c3e50;
        }
        .login-box button {
            width: 100%;
            padding: 10px;
            border: none;
            border-radius: 5px;
            background-color: #e74c3c;
            color: #fff;
            font-size: 16px;
            cursor: pointer;
        }
        .login-box button:hover {
            background-color: #c0392b;
        }
        .login-box .message {
            margin-top: 20px;
            color: #e74c3c;
        }
    </style>
</head>
<body>
    <div class="login-box">
        <h2>Admin Login</h2>
        <form id="form1">
            <label for="email">Username</label>
            <asp:TextBox ID="email" runat="server" CssClass="input-field"></asp:TextBox>
            <label for="pass">Password</label>
            <asp:TextBox ID="pass" runat="server" TextMode="Password" CssClass="input-field"></asp:TextBox>
            <asp:Button ID="Button1" runat="server" Text="Login" CssClass="btn" OnClick="Button1_Click" />
            <asp:Label ID="Label1" runat="server" CssClass="message" Text=""></asp:Label>
        </form>
    </div>
</body>
</html>

</asp:Content>