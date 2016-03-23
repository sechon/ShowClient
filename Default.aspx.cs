using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void LoginButton_Click(object sender, EventArgs e)
    {
        VenueLogin();
    }

    protected void VenueLogin()
    {
        LoginServiceReference.ShowTrackerLoginServiceClient src =
            new LoginServiceReference.ShowTrackerLoginServiceClient();
        int key = src.VenueLogin(PasswordTextBox.Text, UserNameTextBox.Text);
        if(key != -1)
        {
            ErrorLabel.Text = "Welcome";
            Session["userKey"] = key;
            Response.Redirect("AddShow.aspx");
        }
        else
        
            ErrorLabel.Text = "Login Fail";
        }
    }
}