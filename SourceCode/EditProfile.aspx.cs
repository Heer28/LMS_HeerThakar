using System;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.IO;

public partial class EditProfile : System.Web.UI.Page
{
    string connectionString = "Data Source=.\\SQLEXPRESS;AttachDbFilename=C:\\libraryproject\\App_Data\\Database.mdf;Integrated Security=True;User Instance=True";

    protected void Page_Load(object sender, EventArgs e)
    {
        // Ensure any necessary page load logic is included
    }

    protected void btnUpdate_Click(object sender, EventArgs e)
    {
        string newUsername = txtUsername.Text.Trim();
        string newPassword = txtPassword.Text.Trim();
      ;



      string usql = "UPDATE createacc SET username = @newUsername, password = @newPassword WHERE username ='" + Session["rno"] + "'";

        using (SqlConnection conn = new SqlConnection(connectionString))
        {
            SqlCommand cmd = new SqlCommand(usql, conn);
            cmd.Parameters.AddWithValue("@newUsername", newUsername);
            cmd.Parameters.AddWithValue("@newPassword", newPassword);


            try
            {
                conn.Open();
                cmd.ExecuteNonQuery();
                lblMessage.Text = "Profile updated successfully.";
                Session["Username"] = newUsername;
            }
            catch (Exception ex)
            {
                lblMessage.Text = "Profile not updated: " + ex.Message;
            }
        }
    }
}
