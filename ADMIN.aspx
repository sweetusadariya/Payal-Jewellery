<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="ADMIN.aspx.cs" Inherits="ADMIN" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="columnmiddle">
        <asp:Panel ID="Panel_SignIn" runat="server">
            <br />
            <br />
            <table align="center">
                <tr>
                    <td>
                        <asp:Label ID="lblAdminLoginHead" runat="server" Text="WELL COME TO ADMIN LOGIN"
                            Font-Bold="true" BackColor="Black" ForeColor="Silver" Font-Size="Medium"></asp:Label>
                    </td>
                </tr>
            </table>
            <br />
            <br />
            <br />
            <table style="height: 141px; width: 329px" align="center">
                <tr>
                    <td>
                        <br />
                        <br />
                        <asp:Label ID="lblUserName" runat="server" Text="User Name :-  " ForeColor="Gray"
                            Font-Bold="True" Width="105px"></asp:Label>
                    </td>
                    <td>
                        <br />
                        <br />
                        <asp:TextBox ID="txtUserName" runat="server" BackColor="Black" BorderColor="Black"
                            ForeColor="#999999" Font-Size="Large" TabIndex="0"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="validateUserNAme" ControlToValidate="txtUserName"
                            Text="(Requied)" runat="server"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblPassword" runat="server" Text="Password :-" ForeColor="Gray" Font-Bold="True"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" BackColor="Black"
                            BorderColor="Black" ForeColor="#999999" Font-Size="Large"></asp:TextBox>
                    </td>
                </tr>
                <tr align="right">
                    <td>
                    </td>
                    <td align="left">
                        <br />
                        <br />
                        <asp:Button ID="btnSignIn" runat="server" Text="SIGN IN" OnClick="btnSignIn_Click"
                            Style="height: 26px" BackColor="Black" ForeColor="#666666" />
                    </td>
                </tr>
            </table>
            <br />
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="lblMsg" runat="server" ForeColor="#CCCCCC" Width="325px"></asp:Label>
        </asp:Panel>
        <asp:Panel ID="Panel_Buttons" runat="server" Visible="false">
            <br />
            <br />
            <table align="center">
                <tr>
                    <td>
                        <asp:Label ID="lblAdminOperationHead" runat="server" Text="Select The Options That You Want To Perform"
                            Font-Bold="true" BackColor="Black" ForeColor="Silver" Font-Size="Medium"></asp:Label>
                    </td>
                </tr>
            </table>
            <br />
            <br />
            <br />
            <table>
                <tr>
                    <br />
                    <br />
                    <td>
                        &nbsp; &nbsp;
                        <asp:Button ID="btnNewAdmin" runat="server" Text="NEW ADMIN" OnClick="btnNewAdmin_Click"
                            BackColor="Black" ForeColor="#666666" />&nbsp; &nbsp; &nbsp; &nbsp;
                    </td>
                    <td align="center">
                        <asp:Button ID="btnAddProduct" runat="server" Text="ADD PRODUCT" OnClick="btnAddProduct_Click"
                            BackColor="Black" ForeColor="#666666" />
                        &nbsp; &nbsp; &nbsp; &nbsp;
                    </td>
                    <td align="center">
                        <asp:Button ID="btnShowReview" runat="server" BackColor="Black" ForeColor="#666666"
                            OnClick="btnShowReview_Click" Text="SHOW REVIEW" />
                    </td>
                </tr>
                <tr>
                    <%--<td>
                        <br />
                        <asp:Button ID="btnShowOrder" runat="server" BackColor="Black" ForeColor="#666666"
                            Text="SHOW ORDER" />
                    </td>--%>
                    <td>
                        <br />
                        <asp:Button ID="btnAddHomeProduct" runat="server" BackColor="Black" ForeColor="#666666"
                            OnClick="btnAddHomeProduct_Click" Text="ADD HOME IMAGE" />
                    </td>
                    <td>
                        <br />
                        <asp:Button ID="btnAddCategory" runat="server" BackColor="Black" ForeColor="#666666"
                            OnClick="btnAddCategory_Click" Text="ADD CATEGORY" />
                    </td>
                </tr>
            </table>
        </asp:Panel>
        <br />
        <br />
        <asp:Panel ID="Panel_NewAdmin" runat="server" Visible="false">
            <table style="height: 141px; width: 329px" align="center">
                <tr>
                    <td style="width: 219px">
                        <asp:Label ID="Label2" runat="server" Text="User Name :- " ForeColor="Gray" Width="105px"
                            Font-Bold="True"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtUser" runat="server" BackColor="Black" BorderColor="Black" ForeColor="#999999"
                            Font-Size="Large" Style="width: 224px" Width="222px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="width: 219px">
                        <asp:Label ID="Label3" runat="server" Text="Password :-" ForeColor="Gray" Font-Bold="True"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtPass" runat="server" TextMode="Password" BackColor="Black" BorderColor="Black"
                            ForeColor="#999999" Font-Size="Large" Width="224px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label1" runat="server" Text="Confirm Password :-" ForeColor="Gray"
                            Font-Bold="True" Width="100px"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtConfirmPassword" runat="server" TextMode="Password" BackColor="Black"
                            BorderColor="Black" ForeColor="#999999" Font-Size="Large" Width="224px"></asp:TextBox>
                    </td>
                    <td style="width: 219px">
                        <asp:Label ID="lblCheckPassmsg" runat="server" ForeColor="Gray" Font-Bold="True"
                            Width="100px"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td style="width: 219px">
                        <br />
                        <asp:Button ID="btAdd" runat="server" Text="ADD" BackColor="Black" ForeColor="#666666"
                            OnClick="btAdd_Click" />
                    </td>
                    <td align="center">
                        <br />
                        <asp:Button ID="btDelete" runat="server" Text="DELETE" BackColor="Black" ForeColor="#666666"
                            OnClick="btDelete_Click" />
                    </td>
                    <td>
                        <br />
                        <asp:Button ID="btUpdate" runat="server" Text="UPDATE" BackColor="Black" ForeColor="#666666"
                            OnClick="btUpdate_Click" />
                    </td>
                </tr>
            </table>
        </asp:Panel>
    </div>
</asp:Content>
