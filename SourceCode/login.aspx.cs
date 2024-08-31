using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class login : System.Web.UI.Page
{
    private string strcon = "Data Source=.\\SQLEXPRESS;AttachDbFilename=C:\\libraryproject\\App_Data\\Database.mdf;Integrated Security=True;User Instance=True";
    SqlConnection con;
    SqlDataAdapter da;
    protected void Page_Load(object sender, EventArgs e)
    {
        con = new SqlConnection(strcon);
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            con.Open();
            string query = "SELECT * FROM createacc WHERE email=@tlog AND password = @tpass";
            da = new SqlDataAdapter(query, con);
            da.SelectCommand.Parameters.AddWithValue("@tlog", tlog.Text);
            da.SelectCommand.Parameters.AddWithValue("@tpass", tpass.Text);

            DataTable dt = new DataTable(); 
            da.Fill(dt);

            if (dt.Rows.Count > 0)
            {
                Session["rno"] = dt.Rows[0]["email"].ToString();
                Session["n"] = dt.Rows[0]["password"].ToString();

                Response.Redirect("AffterLoginHome.aspx");
            }
            else
            {
                // Display a login error message
                Label1.Text = "Invalid email or password.";
            }
        }
        catch (Exception ex)
        {
            Label1.Text = "An error occurred: " + ex.Message;
        }
        finally
        {
            con.Close();
        }
    }
}