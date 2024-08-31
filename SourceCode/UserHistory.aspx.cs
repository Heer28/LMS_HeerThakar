using System;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI;

public partial class UserHistory : System.Web.UI.Page
{
    string strcon = "Data Source=.\\SQLEXPRESS;AttachDbFilename=C:\\libraryproject\\App_Data\\Database.mdf;Integrated Security=True;User Instance=True";

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            BindIssuedBooksHistory();
        }
    }

    private void BindIssuedBooksHistory()
    {
        string userId = GetUserID(); // Method to get the logged-in user's ID

        using (SqlConnection con = new SqlConnection(strcon))
        {
            string query = "SELECT userID,BookID, BorrowDate, ReturnDate FROM IssuedBooks WHERE UserID = @UserID";
            using (SqlCommand cmd = new SqlCommand(query, con))
            {
                cmd.Parameters.AddWithValue("@UserID", userId);
                con.Open();
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataSet ds = new DataSet();
                da.Fill(ds);
                if (ds.Tables[0].Rows.Count > 0)
                {
                    gvIssuedBooksHistory.DataSource = ds;
                    gvIssuedBooksHistory.DataBind();
                }
                else
                {
                    gvIssuedBooksHistory.DataSource = null;
                    gvIssuedBooksHistory.DataBind();
                }
            }
        }
    }

    private string GetUserID()
    {
        

      return  Session["rno"].ToString();
    }
}
