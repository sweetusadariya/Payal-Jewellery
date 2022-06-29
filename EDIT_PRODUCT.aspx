 <%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="EDIT_PRODUCT.aspx.cs" Inherits="EDIT_PRODUCT" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="columnmiddle">
        <br />
        <br />
        <table align="center">
            <tr>
                <td>
                    <asp:Label ID="lblEditProductHead" runat="server" Text="EDIT IN SELECTED PERTICULAR PRODUCT"
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
                    <asp:Label ID="code" runat="server" Text="PRODUCT ID :-" Font-Bold="True"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtCode" runat="server" BackColor="Black" BorderColor="#999999"
                        ForeColor="#CCCCCC" Font-Size="Medium"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="txtCode"
                        Text="(Requied)" runat="server"></asp:RequiredFieldValidator><br />
                    <br />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label2" runat="server" Text="PRODUCT NAME :-" Font-Bold="True"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="Name" runat="server" BackColor="Black" BorderColor="#999999" ForeColor="#CCCCCC"
                        Font-Size="Medium"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="Name"
                        Text="(Requied)" runat="server"></asp:RequiredFieldValidator><br />
                    <br />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label3" runat="server" Text="PRODUCT TYPE :-" Font-Bold="True"></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="droptype" runat="server" BackColor="Black" ForeColor="#CCCCCC"
                        Font-Size="Medium" DataTextField="NAME" DataValueField="NAME" AutoPostBack="true">
                    </asp:DropDownList>
                    <br />
                    <br />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label4" runat="server" Text="PRODUCT WEIGHT :-" Font-Bold="True"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="weight" runat="server" BackColor="Black" BorderColor="#999999" ForeColor="#CCCCCC"
                        Font-Size="Medium"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ControlToValidate="weight"
                        Text="(Requied)" runat="server"></asp:RequiredFieldValidator><br />
                    <br />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label5" runat="server" Text="PRODUCT PRICE :-" Font-Bold="True"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="price" runat="server" BackColor="Black" BorderColor="#999999" ForeColor="#CCCCCC"
                        Font-Size="Medium"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" ControlToValidate="price"
                        Text="(Requied)" runat="server">
                    </asp:RequiredFieldValidator><br />
                    <br />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label6" runat="server" Text="PRODUCT STOCK :-" Font-Bold="True"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="stock" runat="server" BackColor="Black" BorderColor="#999999" ForeColor="#CCCCCC"
                        Font-Size="Medium"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" ControlToValidate="stock"
                        Text="(Requied)" runat="server"></asp:RequiredFieldValidator><br />
                    <br />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label7" runat="server" Text="PRODUCT IMAGE URL :- " Font-Bold="True"></asp:Label>&nbsp;
                </td>
                <td>
                    <asp:FileUpload ID="UpdateUploadImage" runat="server" BackColor="Black" BorderColor="#999999"
                        ForeColor="#CCCCCC" />
                </td>
            </tr>
            <tr>
                <td align="center">
                    <br />
                    <br />
                    <asp:Button ID="btnUpdateProduct" runat="server" Text="UPDATE" BackColor="Black"
                        BorderColor="#999999" ForeColor="Silver" BorderStyle="Solid" OnClick="btnUpdateProduct_Click" />
                </td>
                <td>
                    <br />
                    <br />
                    <asp:Button ID="btnCancel" runat="server" Text="BACK" BackColor="Black" BorderColor="#999999"
                        ForeColor="Silver" BorderStyle="Solid" OnClick="btnCancel_Click" />
                </td>
            </tr>
        </table>
        <br />
        <br />
    </div>
</asp:Content>
