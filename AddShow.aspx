<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AddShow.aspx.cs" Inherits="AddShow" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <h1>Add Show</h1>
        <table>
            <tr>
                <td>Select Artist</td>
                <td>
                <asp:DropDownList ID="DropDownListArtist" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownListArtist_SelectedIndexChanged" ></asp:DropDownList>
                </td>

                <td>Show Name</td>
                <td>
                    <asp:TextBox ID="ShowNameTextBox" runat="server"></asp:TextBox>
                </td>
                 <td>
                     <asp:RequiredFieldValidator 
                         ID="ShowNameRequired" runat="server" 
                         ErrorMessage="Show Name Required" ControlToValidate="ShowNameTextBox">
                     </asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>Select Show Date</td>
                <td>
                    <asp:Calendar ID="Calendar1" runat="server"></asp:Calendar>
                </td>
            </tr>
            <tr>
                <td>Show Time</td>
                <td>
                    <asp:TextBox ID="ShowTimeBox" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Show Ticket Info</td>
                <td>
                    <asp:TextBox ID="ShowTicketInfoTextBox" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                  <td>
                    <asp:Button ID="SubmitButton" runat="server" Text="Submit" OnClick="SubmitButton_Click" />
                    <asp:Label ID="ResultLabel" runat="server" Text=""></asp:Label>
                </td>
            </tr>
            </table>
                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="AddShowDetail.aspx">Add Show Detail</asp:HyperLink>

    </div>
    </form>
</body>
</html>
