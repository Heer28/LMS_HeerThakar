<%@ Page Title="" Language="C#" MasterPageFile="~/AfterLoginMasterPage.master" AutoEventWireup="true" CodeFile="EditProfile.aspx.cs" Inherits="EditProfile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #0A1628;
            color: white;
            margin: 0;
            padding: 0;
        }
        .container {
            width: 100%;
            max-width: 600px;
            margin: 50px auto;
            padding: 20px;
            background-color: #1A2B48;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.5);
        }
        .container h2 {
            text-align: center;
            margin-bottom: 20px;
            color: #FFFFFF;
        }
        .container label {
            font-weight: bold;
            margin-bottom: 5px;
            display: inline-block;
            color: #FFFFFF;
        }
        .container .form-control {
            width: 100%;
            padding: 10px;
            margin-bottom: 15px;
            border: 1px solid #ccc;
            border-radius: 4px;
        }
        .container .form-control:focus {
            border-color: #007bff;
            box-shadow: 0 0 5px rgba(0, 123, 255, 0.5);
        }
        .container .btn {
            width: 100%;
            padding: 10px;
            border: none;
            border-radius: 4px;
            color: white;
            font-size: 16px;
            cursor: pointer;
            text-align: center;
            margin-bottom: 15px;
        }
        .container .btn-submit {
            background-color: #007bff;
        }
        .container .btn-submit:hover {
            background-color: #0056b3;
        }
        .message {
            text-align: center;
            color: #FFFFFF;
        }
        .header {
            text-align: center;
            padding: 20px;
            background-color: #13233A;
            margin-bottom: 20px;
        }
        .header h1 {
            margin: 0;
            color: #FFFFFF;
        }
        .menu {
            text-align: center;
            margin: 20px 0;
        }
        .menu a {
            margin: 0 10px;
            color: #007bff;
            text-decoration: none;
            font-weight: bold;
        }
        .menu a:hover {
            color: #0056b3;
        }
    </style>
</head>

    <form id="form1">
        <div class="container">
            <h2>Edit Profile</h2>
            <label for="txtUsername">New Username:</label>
            <asp:TextBox ID="txtUsername" runat="server" CssClass="form-control"></asp:TextBox>

            <label for="txtPassword">New Password:</label>
            <asp:TextBox ID="txtPassword" runat="server" CssClass="form-control" TextMode="Password"></asp:TextBox>

            <asp:Button ID="btnUpdate" runat="server" Text="Update" CssClass="btn btn-submit" OnClick="btnUpdate_Click" />
            <asp:Label ID="lblMessage" runat="server" CssClass="message"></asp:Label>
        </div>
    </form>

</asp:Content>

