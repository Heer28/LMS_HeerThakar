using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AdminLogin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (email.Text.Equals("Admin") && pass.Text.Equals("12345"))
        {
            Response.Redirect("AdminHome.aspx");
        }
        else if (email.Text.Equals("ADMIN") && pass.Text.Equals("12345"))
        {
            Response.Redirect("AdminHome.aspx");
        }
        else
        {
            Label1.Text = "wrong id pass";
        }
    }
}