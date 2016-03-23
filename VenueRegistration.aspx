<%@ Page Language="C#" AutoEventWireup="true" CodeFile="VenueRegistration.aspx.cs" Inherits="VenueRegistration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table>
            <tr>
                <td>Venue name</td>
                <td>
                    <asp:TextBox ID="VenueNameTextBox" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="VenueNameValidator" runat="server" 
                        ErrorMessage="Venue Name Required" ControlToValidate="VenueNameTextBox"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>Email</td>
                <td>
                    <asp:TextBox ID="EmailTextBox" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                        ErrorMessage="Not a Valid Email" ControlToValidate="EmailTextBox" 
                        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
                        ></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td>Address</td>
                <td>
                    <asp:TextBox ID="AddressTextBox" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>City</td>
                <td>
                    <asp:TextBox ID="CityTextBox" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>State</td>
                <td>
                    <asp:TextBox ID="StateTextBox" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Zip Code</td>
                <td>
                    <asp:TextBox ID="ZipCodeTextBox" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="ZipCodeValidator" runat="server" 
                        ErrorMessage="Address Required" ControlToValidate="ZipCodeTextBox"
                        ></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>Phone</td>
                <td>
                    <asp:TextBox ID="PhoneTextBox" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="PhoneValidator" runat="server" 
                        ErrorMessage="Phone Number Required" ControlToValidate="PhoneTextBox"
                        ></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>Web Page</td>
                <td>
                    <asp:TextBox ID="WebPageTextBox" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Age Restriction</td>
                <td>
                    <asp:TextBox ID="AgeTextBox" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="AgeValidator" runat="server" 
                        ErrorMessage="Age Required" ControlToValidate="AgeTextBox"
                        ></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>Username</td>
                <td>
                    <asp:TextBox ID="UsernameTextBox" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="UsernameValidator" runat="server" 
                        ErrorMessage="Username Required" ControlToValidate="UsernameTextBox"
                        ></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>Password</td>
                <td>
                    <asp:TextBox ID="PasswordTextBox" runat="server" TextMode="Password"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="PasswordValidator" runat="server" 
                        ErrorMessage="Password Required" ControlToValidate="PasswordTextBox"
                        ></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>Confirm Password</td>
                <td>
                    <asp:TextBox ID="ConfirmTextBox" runat="server" TextMode="Password"></asp:TextBox>
                </td>
                <td>
                    <asp:CompareValidator ID="CompareValidator" runat="server" 
                        ErrorMessage="Passwords Do Not Match" ControlToValidate="ConfirmTextBox" 
                        ControlToCompare="PasswordTextBox"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="SubmitButton" runat="server" Text="Submit" OnClick="SubmitButton_Click" />
                    <asp:Label ID="ResultLabel" runat="server" Text=""></asp:Label>
                </td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
