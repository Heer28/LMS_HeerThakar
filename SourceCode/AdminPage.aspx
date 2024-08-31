<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="true" CodeFile="AdminPage.aspx.cs" Inherits="AdminPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<asp:GridView ID="gvIssuedBooks" runat="server" AutoGenerateColumns="False" CssClass="table table-striped">
    <Columns>
     <asp:BoundField DataField="UserID" HeaderText="user email" />
        <asp:BoundField DataField="BookID" HeaderText="Book ID" />
        <asp:BoundField DataField="BorrowDate" HeaderText="Borrow Date" DataFormatString="{0:dd-MM-yyyy}" />
        <asp:BoundField DataField="ReturnDate" HeaderText="Return Date" DataFormatString="{0:dd-MM-yyyy}" />
    </Columns>
</asp:GridView>

</asp:Content>

