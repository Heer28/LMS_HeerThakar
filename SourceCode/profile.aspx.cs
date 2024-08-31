using System;
using System.Data;
using System.Data.SqlClient;
using System.Web;
using System.Web.UI;

public partial class profile : Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
          

           
            LoadProfile();
        }
    }

    private void LoadProfile()
    {
        
        string connectionString = "Data Source=.\\SQLEXPRESS;AttachDbFilename=C:\\libraryproject\\App_Data\\Database.mdf;Integrated Security=True;User Instance=True";

        
        
        
        using (SqlConnection conn = new SqlConnection(connectionString))
        {
            
            string query = "SELECT name, username, email, number FROM createacc WHERE username = '" + Session["rno"] + "'";
            SqlCommand cmd = new SqlCommand(query, conn);
            

            try
            {
                conn.Open();
                SqlDataReader reader = cmd.ExecuteReader();
                if (reader.HasRows)
                {
                    reader.Read();
                    lblName.Text = reader["name"].ToString();
                    lblUsername.Text = reader["username"].ToString();
                    lblEmail.Text = reader["email"].ToString();
                    lblPhone.Text = reader["number"].ToString();
                }
                else
                {
                    lblName.Text = "User not found.";
                }
                reader.Close();
            }
            catch (Exception ex)
            {
                // Handle exception
                lblName.Text = "Error loading profile: " + ex.Message;
            }
        }
    }

    protected void EditProfile_Click(object sender, EventArgs e)
    {
        // Redirect to an edit profile page or open a modal for editing
        Response.Redirect("EditProfile.aspx");
    }
}
