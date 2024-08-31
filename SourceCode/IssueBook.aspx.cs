using System;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI;

public partial class IssueBook : System.Web.UI.Page
{
    // Connection string for the database
    string strcon = "Data Source=.\\SQLEXPRESS;AttachDbFilename=C:\\libraryproject\\App_Data\\Database.mdf;Integrated Security=True;User Instance=True";

    protected void Page_Load(object sender, EventArgs e)
    {
    }

    protected void btnFetchDetails_Click(object sender, EventArgs e)
    {
        string bookID = txtBookID.Text.Trim();

        // Fetch book details based on the BookID
        var book = GetBookDetailsById(bookID);
        if (book != null)
        {
            // Display book details
            lblBookName.Text = book["book_name"].ToString();
            lblAuthorName.Text = book["author_name"].ToString();
            lblPublisher.Text = book["publisher_name"].ToString();
            lblGenre.Text = book["genre"].ToString();
            lblPages.Text = book["no_of_pages"].ToString();
            lblBookCost.Text = book["book_cost"].ToString();

            
            bookDetailsSection.Visible = true;
            lblMessage.Visible = false;
        }
        else
        {
            // Display an error message if the book is not found
            lblMessage.Text = "Book not found.";
            lblMessage.Visible = true;
            bookDetailsSection.Visible = false;
        }
    }

    protected void btnIssueBook_Click(object sender, EventArgs e)
    {
        string bookID = txtBookID.Text.Trim();
        DateTime borrowDate = Convert.ToDateTime(txtBorrowDate.Text);
        DateTime returnDate = Convert.ToDateTime(txtReturnDate.Text);
        string userEmail = Session["rno"].ToString(); // Retrieve user's email

        // Perform book issue logic here
        bool success = IssueBookToUser(bookID, borrowDate, returnDate, userEmail);
        if (success)
        {
            lblMessage.Text = "Book issued successfully.";
            lblMessage.CssClass = "text-success";
            lblMessage.Visible = true;
            Response.Redirect("UserHistory.aspx?bookID=" + bookID);
        }
        else
        {
            lblMessage.Text = "Failed to issue the book.";
            lblMessage.CssClass = "text-danger";
            lblMessage.Visible = true;
        }
    }

    private DataRow GetBookDetailsById(string bookID)
    {
        DataRow book = null;
        using (SqlConnection con = new SqlConnection(strcon))
        {
            string query = "SELECT book_name, author_name, genre, publisher_name, no_of_pages, book_cost FROM Books WHERE book_id = @book_id";
            using (SqlCommand cmd = new SqlCommand(query, con))
            {
                cmd.Parameters.AddWithValue("@book_id", bookID);
                con.Open();
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataSet ds = new DataSet();
                da.Fill(ds);
                if (ds.Tables[0].Rows.Count > 0)
                {
                    book = ds.Tables[0].Rows[0];
                }
            }
        }
        return book;
    }

    private bool IssueBookToUser(string bookID, DateTime borrowDate, DateTime returnDate, string userid)
    {
    
            using (SqlConnection con = new SqlConnection(strcon))
            {
                string query = "INSERT INTO IssuedBooks (BookID, BorrowDate, ReturnDate, UserID) VALUES (@BookID, @BorrowDate, @ReturnDate, @UserID)";
                using (SqlCommand cmd = new SqlCommand(query, con))
                {
                    cmd.Parameters.AddWithValue("@BookID", bookID);
                    cmd.Parameters.AddWithValue("@BorrowDate", borrowDate);
                    cmd.Parameters.AddWithValue("@ReturnDate", returnDate);
                    cmd.Parameters.AddWithValue("@UserID", userid);

                    con.Open();
                    int rowsAffected = cmd.ExecuteNonQuery();
                    return rowsAffected > 0;
                }
            }
        }
       
    

   
}
