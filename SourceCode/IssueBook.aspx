
<%@ Page Title="" Language="C#" MasterPageFile="~/AfterLoginMasterPage.master" AutoEventWireup="true" CodeFile="IssueBook.aspx.cs" Inherits="IssueBook" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Issue Book</title>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" rel="stylesheet" />
</head>
<body>
    <form id="form1">
        <div class="container mt-5">
            <div class="row">
                <div class="col-md-6 offset-md-3">
                    <div class="card shadow-lg">
                        <div class="card-body">
                            <h5 class="card-title text-center">Issue Book</h5>
                            <hr />
                            <div class="form-group">
                                <label for="txtBookID">Book ID</label>
                                <asp:TextBox ID="txtBookID" CssClass="form-control" runat="server" placeholder="Enter Book ID"></asp:TextBox>
                                <asp:Button ID="btnFetchDetails" CssClass="btn btn-primary mt-2" runat="server" Text="Fetch Details" OnClick="btnFetchDetails_Click" />
                            </div>
                            <hr />
                            <!-- Book Details Section -->
                            <div id="bookDetailsSection" runat="server" visible="false">
                                <div class="form-group">
                                    <label>Book Name</label>
                                    <asp:Label ID="lblBookName" CssClass="form-control" runat="server"></asp:Label>
                                </div>
                                <div class="form-group">
                                    <label>Author Name</label>
                                    <asp:Label ID="lblAuthorName" CssClass="form-control" runat="server"></asp:Label>
                                </div>
                                <div class="form-group">
                                    <label>Publisher</label>
                                    <asp:Label ID="lblPublisher" CssClass="form-control" runat="server"></asp:Label>
                                </div>
                                <div class="form-group">
                                    <label>Genre</label>
                                    <asp:Label ID="lblGenre" CssClass="form-control" runat="server"></asp:Label>
                                </div>
                                <div class="form-group">
                                    <label>Pages</label>
                                    <asp:Label ID="lblPages" CssClass="form-control" runat="server"></asp:Label>
                                </div>
                                <div class="form-group">
                                    <label>Cost Per 24 Hours</label>
                                    <asp:Label ID="lblBookCost" CssClass="form-control" runat="server"></asp:Label>
                                </div>
                                <hr />
                                <!-- Borrow and Return Date Section -->
                                <div class="form-group">
                                    <label for="txtBorrowDate">Borrow Date</label>
                                    <asp:TextBox ID="txtBorrowDate" CssClass="form-control" runat="server" TextMode="Date"></asp:TextBox>
                                </div>
                                <div class="form-group">
                                    <label for="txtReturnDate">Return Date</label>
                                    <asp:TextBox ID="txtReturnDate" CssClass="form-control" runat="server" TextMode="Date"></asp:TextBox>
                                </div>
                              
                                <div class="form-group text-center">
                                    <asp:Button ID="btnIssueBook" CssClass="btn btn-success" runat="server" Text="Issue Book" OnClick="btnIssueBook_Click" />
                                </div>
                            </div>
                            <div class="form-group text-center">
                                <asp:Label ID="lblMessage" CssClass="text-danger" runat="server" Visible="false"></asp:Label>
                            </div>
                        </div>
                    </div>
                    <a href="AdminHome.aspx" class="btn btn-secondary mt-3"><< Back to Home</a>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
</asp:Content>
