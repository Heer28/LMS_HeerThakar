<%@ Page Title="" Language="C#" MasterPageFile="~/AfterLoginMasterPage.master" AutoEventWireup="true" CodeFile="UserHistory.aspx.cs" Inherits="UserHistory" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Issued Books History</title>
    <link href="Styles.css" rel="stylesheet" />
</head>
<body>
    <form id="form1">
        <div>
            <h2>Issued Books History</h2>
            <asp:GridView ID="gvIssuedBooksHistory" runat="server" AutoGenerateColumns="False" CssClass="table table-striped">
                <Columns>
                    <asp:BoundField DataField="BookID" HeaderText="Book ID" />
                    <asp:BoundField DataField="BorrowDate" HeaderText="Borrow Date" DataFormatString="{0:dd-MM-yyyy}" />
                    <asp:BoundField DataField="ReturnDate" HeaderText="Return Date" DataFormatString="{0:dd-MM-yyyy}" />
                </Columns>
            </asp:GridView>
        </div>
    </form>
</body>
</html>

</asp:Content>

