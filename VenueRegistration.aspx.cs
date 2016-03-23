using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class VenueRegistration : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void SubmitButton_Click(object sender, EventArgs e)
    {
        LoginServiceReference.ShowTrackerLoginServiceClient src =
            new LoginServiceReference.ShowTrackerLoginServiceClient();
        LoginServiceReference.VenueLite vLite =
            new LoginServiceReference.VenueLite();

        vLite.VenueName = VenueNameTextBox.Text;
        vLite.VenueEmail = EmailTextBox.Text;
        vLite.VenueAddress = AddressTextBox.Text;
        vLite.VenueCity = CityTextBox.Text;
        vLite.VenueState = StateTextBox.Text;
        vLite.VenueZipCode = ZipCodeTextBox.Text;
        vLite.VenuePhone = PhoneTextBox.Text;
        vLite.VenueWebPage = WebPageTextBox.Text;
        if (AgeTextBox.Text != null)
        {
            vLite.VenueAgeRestriction = int.Parse(AgeTextBox.Text.ToString());
        }
        vLite.VenueLoginUserName = UsernameTextBox.Text;
        vLite.VenueLoginPasswordPlain = PasswordTextBox.Text;

        int result = src.VenueRegistration(vLite);
        if (result != -1)
        {
            ResultLabel.Text = "Successfully Registered";
        }
        else
        {
            ResultLabel.Text = "Registration Failed";
        }
    }
}