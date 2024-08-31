<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="true" CodeFile="AdminBookInv.aspx.cs" Inherits="AdminBookInv" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<table class="table table-bordered" border="5">
    <tr>
        <td colspan="2" class="text-center">
            <h5 class="card-title">Book Details</h5>
        </td>
    </tr>
    <tr>
        <td colspan="2" class="text-center">
            <asp:Image ID="ImgPhoto" ImageUrl="book_img/book2.png" runat="server" Height="90" Width="90" alt="" class="rounded" />
        </td>
    </tr>
    <tr>
        <td colspan="2">
            <hr />
        </td>
    </tr>
    <tr>
        <td colspan="2">
            <asp:FileUpload ID="FileUpload1" runat="server" class="form-control" />
        </td>
    </tr>
    <tr>
        <td>
            <label>Book ID</label>
            <div class="input-group">
                <asp:TextBox ID="txtBookID" CssClass="form-control" runat="server"></asp:TextBox>
                <asp:Button ID="btnGo" runat="server" Text="GO" CssClass="btn btn-primary ml-2" OnClick="btnGo_Click" />
            </div>
        </td>
        <td>
            <label>Book Name</label>
            <asp:TextBox ID="txtBookName" CssClass="form-control" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>
            <label>Language</label>
            <asp:DropDownList class="form-control" ID="ddlLanguage" runat="server">
                <asp:ListItem Text="English" Value="English" />
                <asp:ListItem Text="Hindi" Value="Hindi" />
                <asp:ListItem Text="Marathi" Value="Marathi" />
                <asp:ListItem Text="French" Value="French" />
                <asp:ListItem Text="German" Value="German" />
                <asp:ListItem Text="Urdu" Value="Urdu" />
            </asp:DropDownList>
           
         
        </td>
        <td>
            <label>Author Name</label>
            <asp:TextBox ID="txtauthor" runat="server"></asp:TextBox>
            
        </td>
    </tr>
    <tr>
    <td>   <label>Publisher Name</label><asp:TextBox ID="txtpublisher" runat="server"></asp:TextBox>
           
            <td><label>Publish Date</label>
            <asp:TextBox CssClass="form-control" ID="txtPublishDate" runat="server" placeholder="Date" TextMode="Date"></asp:TextBox></td></tr>
    <tr>
        <td>
            <label>Genre</label>
            <asp:ListBox CssClass="form-control" ID="ListBoxGenre" runat="server" SelectionMode="Multiple" Rows="5">
                <asp:ListItem Text="Action" Value="Action" />
                <asp:ListItem Text="Adventure" Value="Adventure" />
                <asp:ListItem Text="Comic Book" Value="Comic Book" />
                <asp:ListItem Text="Self Help" Value="Self Help" />
                <asp:ListItem Text="Motivation" Value="Motivation" />
                <asp:ListItem Text="Healthy Living" Value="Healthy Living" />
                <asp:ListItem Text="Wellness" Value="Wellness" />
                <asp:ListItem Text="Crime" Value="Crime" />
                <asp:ListItem Text="Drama" Value="Drama" />
                <asp:ListItem Text="Fantasy" Value="Fantasy" />
                <asp:ListItem Text="Horror" Value="Horror" />
                <asp:ListItem Text="Poetry" Value="Poetry" />
                <asp:ListItem Text="Personal Development" Value="Personal Development" />
                <asp:ListItem Text="Romance" Value="Romance" />
                <asp:ListItem Text="Science Fiction" Value="Science Fiction" />
                <asp:ListItem Text="Suspense" Value="Suspense" />
                <asp:ListItem Text="Thriller" Value="Thriller" />
                <asp:ListItem Text="Art" Value="Art" />
                <asp:ListItem Text="Autobiography" Value="Autobiography" />
                <asp:ListItem Text="Encyclopedia" Value="Encyclopedia" />
                <asp:ListItem Text="Health" Value="Health" />
                <asp:ListItem Text="History" Value="History" />
                <asp:ListItem Text="Math" Value="Math" />
                <asp:ListItem Text="Textbook" Value="Textbook" />
                <asp:ListItem Text="Science" Value="Science" />
                <asp:ListItem Text="Travel" Value="Travel" />
                <asp:ListItem Text="Programming" Value="Programming" />
                <asp:ListItem Text="Computer Science" Value="Computer Science" />
            </asp:ListBox>
        </td>
        <td>
            <label>Edition</label>
            <asp:TextBox CssClass="form-control" ID="txtEdition" runat="server" placeholder="Edition"></asp:TextBox><br />
            <label>Book Cost(per unit)</label>
            <asp:TextBox CssClass="form-control" ID="txtbookCost" runat="server" placeholder="Book Cost(per unit)" TextMode="Number"></asp:TextBox><br />
            <label>Pages</label>
            <asp:TextBox CssClass="form-control" ID="txtPages" runat="server" placeholder="Pages" TextMode="Number"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>
            <label>Actual Stock:</label>
            <asp:TextBox CssClass="form-control" ID="txtActualStock" runat="server" placeholder="Actual Stock" TextMode="Number"></asp:TextBox><br />
            <label>Current Stock:</label>
            <asp:TextBox CssClass="form-control" ID="txtCurrentStock" runat="server" placeholder="Current Stock" TextMode="Number" ReadOnly="True"></asp:TextBox><br />
            <label>Issued Books:</label>
            <asp:TextBox CssClass="form-control" ID="txtIssuedBooks" runat="server" placeholder="Issued Books" TextMode="Number" ReadOnly="True"></asp:TextBox>
        </td>
        <td>
            <label>Book Description</label>
            <asp:TextBox CssClass="form-control" ID="txtBookDesc" runat="server" placeholder="Book Description" TextMode="MultiLine" Rows="2"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td colspan="2" class="text-center">
            <asp:Button ID="btnAdd" class="btn btn-success" runat="server" Text="Add" OnClick="btnAdd_Click" />
            <asp:Button ID="btnUpdate" class="btn btn-warning" runat="server" Text="Update" OnClick="btnUpdate_Click" />
            <asp:Button ID="btnDelete" class="btn btn-danger" runat="server" Text="Delete" OnClick="btnDelete_Click" />
        </td>
    </tr>
<tr>
    <td><b><asp:Label ID="Label1" runat="server" Text="Label"></asp:Label></b></td></tr>
</table>
<a href="AdminHome.aspx" class="btn btn-secondary mt-3"><< Back to Home</a>

</asp:Content>

