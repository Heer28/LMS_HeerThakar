using System;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;  // Corrected namespace

public partial class AdminPage : System.Web.UI.Page
{
    string strcon = "Data Source=.\\SQLEXPRESS;AttachDbFilename=C:\\libraryproject\\App_Data\\Database.mdf;Integrated Security=True;User Instance=True";

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            BindIssuedBooks();
        }
    }

    private void BindIssuedBooks()
    {
        using (SqlConnection con = new SqlConnection(strcon))
        {
            string query = "SELECT UserID,BookID, BorrowDate, ReturnDate FROM IssuedBooks";
            using (SqlCommand cmd = new SqlCommand(query, con))
            {
                con.Open();
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataSet ds = new DataSet();
                da.Fill(ds);
                if (ds.Tables[0].Rows.Count > 0)
                {
                    gvIssuedBooks.DataSource = ds;
                    gvIssuedBooks.DataBind();
                }
                else
                {
                    gvIssuedBooks.DataSource = null;
                    gvIssuedBooks.DataBind();
                }
            }
        }
    }
}
