using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.IO;


public partial class create : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd;
    String strcon, isql;

    protected void Page_Load(object sender, EventArgs e)
    {
        string strcon = "Data Source=.\\SQLEXPRESS;AttachDbFilename=C:\\libraryproject\\App_Data\\Database.mdf;Integrated Security=True;User Instance=True";
        con = new SqlConnection(strcon);
        btnLogin.Visible = false;
    }

    protected void Button1_Click(object sender, EventArgs e)
    {

        isql = "insert into createacc values('" + tname.Text + "','" + tusername.Text + "','" + tpass.Text + "','" + temail.Text + "','" + tnum.Text + "')";
        cmd = new SqlCommand(isql, con);
        try
        {
            con.Open();
            cmd.ExecuteNonQuery();
            Label1.Text = "Account created successfully.";

            // Redirect to login page
            btnLogin.Visible = true;
        }
        catch (Exception ex)
        {
            Label1.Text = "Username OR Email OR Phone Number is already taken";
        }
        finally
        {
            con.Close();
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {

        Response.Redirect("login.aspx");
    }
}