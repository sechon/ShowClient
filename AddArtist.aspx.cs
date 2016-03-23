using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ArtistAdd : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void SubmitButton_Click(object sender, EventArgs e)
    {
        LoginRegisterServiceReference.STLoginServiceClient sc =
    new LoginRegisterServiceReference.STLoginServiceClient();
        LoginRegisterServiceReference.ArtistLite aLite =
    new LoginRegisterServiceReference.ArtistLite();

        aLite.artistName = ArtistNameTextBox.Text;
        aLite.artistWeb = ArtistWebTextBox.Text;
        aLite.artistEmail = AristEmailTextBox.Text;
        aLite.artistDate = ArtistDateCalendar.SelectedDate;
        sc.AddArtist(aLite);

        ResultLabel.Text = "Artist Added Successfully";

    }
}
