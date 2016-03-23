<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AddShowDetail.aspx.cs" Inherits="ShowDetailAdd" %>

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
                <td>Select Show</td>
                <td>
                    <asp:DropDownList ID="DetailShowList" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="ShowName" DataValueField="ShowName"></asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ShowTrackerConnectionString %>" SelectCommand="SELECT [ShowName] FROM [Show]"></asp:SqlDataSource>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="DetailShowListValidator" runat="server" ErrorMessage="Please select a show" ControlToValidate="DetailShowList"></asp:RequiredFieldValidator>
                </td>
           </tr>
           <tr>
               <td>Artist Start Time</td>
               <td>
                 <asp:TextBox ID="DetailStartTime" runat="server"></asp:TextBox>
               </td>                
            </tr>
            <tr>
                <td>Additional Details</td>
                <td>
                <asp:TextBox ID="DetailAdditionalTextBox" runat="server"></asp:TextBox>
                </td>       
            </tr>
            <tr>
                <td>
                    <asp:Button ID="SubmitButton" runat="server" Text="Submit" OnClick="SubmitButton_Click" />
                    <asp:Label ID="ResultLabel" runat="server" Text=""></asp:Label>
                </td>
            </tr>
       </table>
                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="AddShow.aspx">Add Another Show</asp:HyperLink>

    </div>
    </form>
</body>
</html>
