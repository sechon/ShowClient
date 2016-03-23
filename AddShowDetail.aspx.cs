using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ShowDetailAdd : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void SubmitButton_Click(object sender, EventArgs e)
    {
        LoginRegisterServiceReference.STLoginServiceClient sc =
    new LoginRegisterServiceReference.STLoginServiceClient();
        LoginRegisterServiceReference.ShowDetailLite sdLite =
    new LoginRegisterServiceReference.ShowDetailLite();

        sdLite.Title = DetailShowList.Text;
        sdLite.Additional = DetailAdditionalTextBox.Text;
        sdLite.ArtistStartTime = TimeSpan.Parse(DetailStartTime.Text);

        sc.AddShowDetail(sdLite);

        ResultLabel.Text = "Show Detail Added Successfully";

    }
}