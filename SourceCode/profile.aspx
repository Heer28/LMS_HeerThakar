<%@ Page Title="" Language="C#" MasterPageFile="~/AfterLoginMasterPage.master" AutoEventWireup="true" CodeFile="profile.aspx.cs" Inherits="profile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="profile-container">
        <h2>Profile Information</h2>
        <div class="profile-info">
            <label for="profile-name">Name:</label>
            <asp:Label ID="lblName" runat="server" CssClass="profile-label"></asp:Label>
            <br />
            
            <label for="profile-username">Username:</label>
            <asp:Label ID="lblUsername" runat="server" CssClass="profile-label"></asp:Label>
            <br />
            
            <label for="profile-email">Email:</label>
            <asp:Label ID="lblEmail" runat="server" CssClass="profile-label"></asp:Label>
            <br />
            
            <label for="profile-phone">Phone Number:</label>
            <asp:Label ID="lblPhone" runat="server" CssClass="profile-label"></asp:Label>
            <br />
            
            <label for="profile-address">Address:</label>
            <asp:Label ID="lblAddress" runat="server" CssClass="profile-label"></asp:Label>
            <br />
            
            <asp:Button ID="btnEditProfile" runat="server" Text="Edit Profile" CssClass="btn btn-primary" OnClick="EditProfile_Click" />
        </div>
    </div>

    <style>
        .profile-container {
            background-color: #112B3C;
            padding: 20px;
            border-radius: 8px;
            color: #F0F0F0;
            max-width: 600px;
            margin: 0 auto;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        .profile-info label {
            font-weight: bold;
            margin-right: 10px;
            display: inline-block;
            width: 150px;
            color: #F0F0F0;
        }
        .profile-info .profile-label {
            display: inline-block;
            margin-bottom: 15px;
        }
        .btn {
            display: block;
            width: 100%;
            padding: 10px;
            margin-top: 20px;
            background-color: #007bff;
            color: white;
            border: none;
            border-radius: 4px;
            text-align: center;
            cursor: pointer;
        }
        .btn-primary:hover {
            background-color: #0056b3;
        }
    </style>
</asp:Content>

