<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="CUSTOMER_LOGIN.aspx.cs" Inherits="CUSTOMERLOGIN" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="columnmiddle">
        <br />
        <br />
        <table align="center">
            <tr>
                <td>
                    <asp:Label ID="lblCustomerLoginHead" runat="server" Text="WELL COME TO USER LOGIN"
                        Font-Bold="true" BackColor="Black" ForeColor="Silver" Font-Size="Medium"></asp:Label>
                </td>
            </tr>
        </table>
        <br />
        <br />
        <br />
        <asp:Panel ID="Panel_SignIn" runat="server">  
            <table style="height: 141px; width: 329px" align="center">
                <tr>
                    <td>
                        <asp:Label ID="lblUserName" runat="server" Text="User Name :- " ForeColor="Gray"
                            Font-Bold="True" Width="105px"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtUserName" runat="server" BackColor="Black" BorderColor="Black"
                            ForeColor="#999999" Font-Size="Large"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="Validateuname" ControlToValidate="txtUSerName" Text="(User Name Is Requied)"
                            runat="server">
                        </asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblPassword" runat="server" Text="Password :-" ForeColor="Gray" Font-Bold="True"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" BackColor="Black"
                            BorderColor="Black" ForeColor="#999999" Font-Size="Large"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="VAlidatepassword" ControlToValidate="txtPassword"
                            Text="(PassWord Is Requied)" runat="server">
                        </asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="SignIn" runat="server" Text="SIGN IN" OnClick="SignIn_Click" Style="height: 26px"
                            BackColor="Black" ForeColor="#666666" />
                    </td>
                    <td>
                        <asp:HyperLink ID="hyperNewUser" runat="server" NavigateUrl="~/CUSTOMER_DETAIL.aspx"
                            Text="New User" Font-Bold="true"></asp:HyperLink>
                    </td>
                </tr>
            </table>
            <br /><br /><br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="lblMsg" runat="server" ForeColor="silver" Width="325px"></asp:Label>
        </asp:Panel>
    </div>
</asp:Content>
