<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="CUSTOMER_DETAIL.aspx.cs" Inherits="CUSTOMERDETAIL" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="columnmiddle">
        &nbsp;&nbsp;&nbsp;
        <br />
        <br />
        <table align="center">
            <tr>
                <td>
                    <asp:Label ID="lblCustomerDetailHead" runat="server" Text="Fill Up Customer Detail"
                        Font-Bold="true" BackColor="Black" ForeColor="Silver" Font-Size="Medium"></asp:Label>
                </td>
            </tr>
        </table>
        <br />
        <br />
        <br />
        <table align="center">
            <tr>
                <td>
                    <asp:Label ID="Lblusername" runat="server" Text="USER NAME :- " Font-Bold="True"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtUser" runat="server" BackColor="Black" BorderColor="Gray" ForeColor="#999999"
                        Font-Bold="True" Font-Size="Medium" Height="25px" Width="224px" AutoCompleteType="Notes"
                        AutoPostBack="True"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="Validateuser" ControlToValidate="txtUser" Text="(Requied)"
                        runat="server">
                    </asp:RequiredFieldValidator> 
                </td>
            </tr>
            <tr>
                <td>
                    <br />
                    <asp:Label ID="Lblpassword" runat="server" Text="PASSWORD :-" Font-Bold="True"></asp:Label>
                </td>
                <td>
                    <br />
                    <asp:TextBox ID="txtPass" runat="server" TextMode="Password" BackColor="Black" BorderColor="Gray"
                        ForeColor="#999999" Font-Bold="True" Font-Size="Medium" Width="224px" Height="25px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="Validatepass" ControlToValidate="txtPass" Text="(Requied)"
                        runat="server">
                    </asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <br />
                    <asp:Label ID="lblFirstName" runat="server" Text="FIRST NAME :- " Font-Bold="True"></asp:Label>
                </td>
                <td>
                    <br />
                    <asp:TextBox ID="txtFirstName" runat="server" BackColor="Black" BorderColor="Gray"
                        ForeColor="#999999" Font-Bold="True" Font-Size="Medium" Height="25px" Width="224px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="Validatefirstname" ControlToValidate="txtFirstName"
                        Text="(Requied)" runat="server">
                    </asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <br />
                    <asp:Label ID="lblLastName" runat="server" Text="LAST NAME :- " Font-Bold="True"></asp:Label>
                </td>
                <td>
                    <br />
                    <asp:TextBox ID="txtLastName" runat="server" BackColor="Black" BorderColor="Gray"
                        ForeColor="#999999" Font-Bold="True" Font-Size="Medium" Height="25px" Width="224px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="Validatelastname" ControlToValidate="txtLastName"
                        Text="(Requied)" runat="server">
                    </asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <br />
                    <asp:Label ID="LblAddress" runat="server" Text="ADDRESS :- " Font-Bold="True"></asp:Label>
                </td>
                <td>
                    <br />
                    <asp:TextBox ID="txtAddress" runat="server" TextMode="MultiLine" Rows="5" BackColor="Black"
                        BorderColor="Gray" ForeColor="#999999" Font-Bold="True" Font-Size="Medium" Width="224px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="Validateaddress" ControlToValidate="txtAddress" Text="(Requied)"
                        runat="server">
                    </asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <br />
                    <asp:Label ID="LblCity" runat="server" Text="CITY :- " Font-Bold="True"></asp:Label>
                </td>
                <td>
                    <br />
                    <asp:TextBox ID="txtCity" runat="server" BackColor="Black" BorderColor="Gray" ForeColor="#999999"
                        Font-Bold="True" Font-Size="Medium" Height="25px" Width="224px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="Validatecity" ControlToValidate="txtCity" Text="(Requied)"
                        runat="server">
                    </asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <br />
                    <asp:Label ID="LblPinCode" runat="server" Text="PIN CODE :- " Font-Bold="True"></asp:Label>
                </td>
                <td>
                    <br />
                    <asp:TextBox ID="txtPinCode" runat="server" BackColor="Black" BorderColor="Gray"
                        ForeColor="#999999" Font-Bold="True" Font-Size="Medium" Height="25px" Width="224px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="ValidatePincode" ControlToValidate="txtPinCode" Text="(Requied)"
                        runat="server">
                    </asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <br />
                    <asp:Label ID="LblMobileNo" runat="server" Text="MOBILE NO :- " Font-Bold="True"></asp:Label>
                </td>
                <td>
                    <br />
                    <asp:TextBox ID="txtMobilNO" runat="server" BackColor="Black" BorderColor="Gray"
                        ForeColor="#999999" Font-Bold="True" Font-Size="Medium" CausesValidation="True"
                        Height="25px" Width="224px" MaxLength="10"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="VAlidateMobilno" ControlToValidate="txtMobilNO" Text="(Requied)"
                        runat="server">
                    </asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <br />
                    <asp:Label ID="LblEmail_ID" runat="server" Text="EMAIL ID :- " Font-Bold="True"></asp:Label>
                </td>
                <td>
                    <br />
                    <asp:TextBox ID="txtEmail_ID" runat="server" BackColor="Black" BorderColor="Gray"
                        ForeColor="#999999" Font-Bold="True" Font-Size="Medium" Height="25px" Width="224px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="ValidateEmail_id" ControlToValidate="txtEmail_ID"
                        Text="(Requied)" runat="server">
                    </asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                </td>
                <td align="center">
                    <br />
                    <br />
                    <br />
                    <asp:Button ID="btnSubmit" Text="SUBMIT" runat="server" BackColor="Black" BorderStyle="Ridge"
                        BorderColor="Gray" ForeColor="Silver" OnClick="btnSubmit_Click" />
                </td>
            </tr>
        </table>
    </div>
</asp:Content>
