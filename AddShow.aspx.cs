using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AddShow : System.Web.UI.Page
{
    LoginRegisterServiceReference.STLoginServiceClient src =
            new LoginRegisterServiceReference.STLoginServiceClient();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["userKey"] == null)
        {
            Response.Redirect("Default.aspx");
        }

        if (!IsPostBack)
        {
            LoadDropDownListArtist();
        }

    }

    protected void LoadDropDownListArtist()
    {
        string[] artists = src.GetArtists();
        DropDownListArtist.DataSource = artists;
        DropDownListArtist.DataBind();
        DropDownListArtist.Items.Insert(0, "Choose an Artist");
        DropDownListArtist.Items.Insert(1, "Create an Artist");


    }

    protected void SubmitButton_Click(object sender, EventArgs e)
    {
        LoginRegisterServiceReference.STLoginServiceClient sc =
new LoginRegisterServiceReference.STLoginServiceClient();
        LoginRegisterServiceReference.ShowLite sLite =
    new LoginRegisterServiceReference.ShowLite();

        int v = (int)Session["userKey"];

        sLite.Title = ShowNameTextBox.Text;
        sLite.Date = DateTime.Parse(Calendar1.SelectedDate.ToShortDateString());
        sLite.StartTime = TimeSpan.Parse(ShowTimeBox.Text);
        sLite.TicketInfo = ShowTicketInfoTextBox.Text;
        sLite.DateEntered = DateTime.Now;
        sLite.VenueKey = v.ToString();

        sc.AddShow(sLite);

        ResultLabel.Text = "Show Added Successfully";


    }

    protected void DropDownListArtist_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (DropDownListArtist.SelectedItem.ToString().Equals("Create an Artist"))
        {
            Response.Redirect("AddArtist.aspx");
        }
    }
}