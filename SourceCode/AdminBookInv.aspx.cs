using System;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AdminBookInv : Page
{
    private string strcon = "Data Source=.\\SQLEXPRESS;AttachDbFilename=C:\\libraryproject\\App_Data\\Database.mdf;Integrated Security=True;User Instance=True";

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
        }
    }

    protected void btnGo_Click(object sender, EventArgs e)
    {
        string bookID = txtBookID.Text.Trim();
        if (!string.IsNullOrEmpty(bookID))
        {
            FetchBookDetails(bookID);
        }
    }

    private void FetchBookDetails(string bookID)
    {
        string query = "SELECT * FROM Books WHERE book_id = @BookID";
        using (SqlConnection con = new SqlConnection(strcon))
        {
            using (SqlCommand cmd = new SqlCommand(query, con))
            {
                cmd.Parameters.AddWithValue("@BookID", bookID);

                try
                {
                    con.Open();
                    SqlDataReader reader = cmd.ExecuteReader();
                    if (reader.Read())
                    {
                        txtBookName.Text = reader["book_name"].ToString();
                        txtauthor.Text = reader["author_name"].ToString();
                        txtpublisher.Text = reader["publisher_name"].ToString();
                        txtPublishDate.Text = Convert.ToDateTime(reader["publisher_date"]).ToString("yyyy-MM-dd");
                        txtEdition.Text = reader["edition"].ToString();
                        txtbookCost.Text = reader["book_cost"].ToString();
                        txtPages.Text = reader["no_of_pages"].ToString();
                        txtActualStock.Text = reader["actual_stock"].ToString();
                        txtCurrentStock.Text = reader["current_stock"].ToString();
                        txtIssuedBooks.Text = (Convert.ToInt32(reader["actual_stock"]) - Convert.ToInt32(reader["current_stock"])).ToString();
                        txtBookDesc.Text = reader["book_description"].ToString();
                    }
                    else
                    {
                        // Handle the case where no book is found
                        Label1.Text = "Book not found.";
                    }
                    reader.Close();
                }
                catch (Exception ex)
                {
                    // Handle any exceptions that may occur
                    Label1.Text = "An error occurred: " + ex.Message;
                }
            }
        }
    }

    protected void btnAdd_Click(object sender, EventArgs e)
    {
        string query = "INSERT INTO Books (book_id, book_name, author_name, publisher_name, publisher_date, edition, book_cost, no_of_pages, actual_stock, current_stock, book_description) " +
                    "VALUES (@BookID, @BookName, @AuthorName, @PublisherName, @PublisherDate, @Edition, @BookCost, @NoOfPages, @ActualStock, @CurrentStock, @BookDescription)";

        using (SqlConnection con = new SqlConnection(strcon))
        {
            using (SqlCommand cmd = new SqlCommand(query, con))
            {
                cmd.Parameters.AddWithValue("@BookID", txtBookID.Text.Trim());
                cmd.Parameters.AddWithValue("@BookName", txtBookName.Text.Trim());
                cmd.Parameters.AddWithValue("@AuthorName", txtauthor.Text.Trim());
                cmd.Parameters.AddWithValue("@PublisherName", txtpublisher.Text.Trim());
                cmd.Parameters.AddWithValue("@PublisherDate", DateTime.Parse(txtPublishDate.Text.Trim()));
                cmd.Parameters.AddWithValue("@Edition", txtEdition.Text.Trim());
                cmd.Parameters.AddWithValue("@BookCost", txtbookCost.Text.Trim());
                cmd.Parameters.AddWithValue("@NoOfPages", txtPages.Text.Trim());
                cmd.Parameters.AddWithValue("@ActualStock", txtActualStock.Text.Trim());
                cmd.Parameters.AddWithValue("@CurrentStock", txtCurrentStock.Text.Trim());
                cmd.Parameters.AddWithValue("@BookDescription", txtBookDesc.Text.Trim());

                try
                {
                    con.Open();
                    cmd.ExecuteNonQuery();
                    // Success message
                    Label1.Text = "Book added successfully.";
                }
                catch (Exception ex)
                {
                    // Error message
                    Label1.Text = "An error occurred: " + ex.Message;
                }
            }
        }
    }

    protected void btnUpdate_Click(object sender, EventArgs e)
    {
        string query = "UPDATE Books SET book_name = @BookName, author_name = @AuthorName, publisher_name = @PublisherName, publisher_date = @PublisherDate, edition = @Edition, book_cost = @BookCost, no_of_pages = @NoOfPages, actual_stock = @ActualStock, current_stock = @CurrentStock, book_description = @BookDescription WHERE book_id = @BookID";

        using (SqlConnection con = new SqlConnection(strcon))
        {
            using (SqlCommand cmd = new SqlCommand(query, con))
            {
                cmd.Parameters.AddWithValue("@BookID", txtBookID.Text.Trim());
                cmd.Parameters.AddWithValue("@BookName", txtBookName.Text.Trim());
                cmd.Parameters.AddWithValue("@AuthorName", txtauthor.Text.Trim());
                cmd.Parameters.AddWithValue("@PublisherName", txtpublisher.Text.Trim());
                cmd.Parameters.AddWithValue("@PublisherDate", DateTime.Parse(txtPublishDate.Text.Trim()));
                cmd.Parameters.AddWithValue("@Edition", txtEdition.Text.Trim());
                cmd.Parameters.AddWithValue("@BookCost", txtbookCost.Text.Trim());
                cmd.Parameters.AddWithValue("@NoOfPages", txtPages.Text.Trim());
                cmd.Parameters.AddWithValue("@ActualStock", txtActualStock.Text.Trim());
                cmd.Parameters.AddWithValue("@CurrentStock", txtCurrentStock.Text.Trim());
                cmd.Parameters.AddWithValue("@BookDescription", txtBookDesc.Text.Trim());

                try
                {
                    con.Open();
                    cmd.ExecuteNonQuery();
                    // Success message
                    Label1.Text = "Book updated successfully.";
                }
                catch (Exception ex)
                {
                    // Error message
                    Label1.Text = "An error occurred: " + ex.Message;
                }
            }
        }
    }

    protected void btnDelete_Click(object sender, EventArgs e)
    {
        string query = "DELETE FROM Books WHERE book_id = @BookID";

        using (SqlConnection con = new SqlConnection(strcon))
        {
            using (SqlCommand cmd = new SqlCommand(query, con))
            {
                cmd.Parameters.AddWithValue("@BookID", txtBookID.Text.Trim());

                try
                {
                    con.Open();
                    cmd.ExecuteNonQuery();
                    // Success message
                    Label1.Text = "Book deleted successfully.";
                }
                catch (Exception ex)
                {
                    // Error message
                    Label1.Text = "An error occurred: " + ex.Message;
                }
            }
        }
    }

   
}
