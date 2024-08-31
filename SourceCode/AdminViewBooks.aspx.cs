using System;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class AdminViewBooks : System.Web.UI.Page
{
    string strcon = "Data Source=.\\SQLEXPRESS;AttachDbFilename=C:\\libraryproject\\App_Data\\Database.mdf;Integrated Security=True;User Instance=True";

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            BindGridView();
        }
    }

    private void BindGridView()
    {
        // Use the connection string directly or fetch it from the Web.config using a key.
        using (SqlConnection con = new SqlConnection(strcon))
        {
            string query = "SELECT * FROM Books";
            using (SqlCommand cmd = new SqlCommand(query, con))
            {
                using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                {
                    DataTable dt = new DataTable();
                    sda.Fill(dt);
                    GridView1.DataSource = dt;
                    GridView1.DataBind();
                }
            }
        }
    }
}