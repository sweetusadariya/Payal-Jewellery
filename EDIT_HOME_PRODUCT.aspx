 <%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="EDIT_HOME_PRODUCT.aspx.cs" Inherits="EDIT_HOME_PRODUCT" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="columnmiddle">
        <br />
        <br />
        <table align="center">
            <tr>
                <td>
                    <asp:Label ID="lblEditHomeProductHead" runat="server" Text="EDIT HOME PAGE PRODUCT"
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
                    <asp:Label ID="Type" runat="server" Text="PRODUCT TYPE :-" Font-Bold="True"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtType" runat="server" BackColor="Black" BorderColor="#999999"
                        ForeColor="#CCCCCC" Font-Size="Medium"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="txtType"
                        Text="(Requied)" runat="server"></asp:RequiredFieldValidator><br />
                    <br />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblHomaImgPath" runat="server" Text="IMAGE PATH :- " Font-Bold="True"></asp:Label>
                </td>
                <td>
                    <asp:FileUpload ID="EditHomeFileUpload" runat="server" BackColor="Black" BorderColor="#999999"
                        ForeColor="#CCCCCC" Font-Size="Medium" />
                </td>
            </tr>
            <tr>
                <td align="center">
                    <br />
                    <br />
                    <asp:Button ID="btnUpdateHomeProduct" runat="server" Text="UPDATE" BackColor="Black"
                        BorderColor="#999999" ForeColor="Silver" BorderStyle="Solid" OnClick="btnUpdateHomeProduct_Click" />
                </td>
                <td>
                    <br />
                    <br />
                    <asp:Button ID="btnHomeBack" runat="server" Text="BACK" BackColor="Black" BorderColor="#999999"
                        ForeColor="Silver" BorderStyle="Solid" OnClick="btnHomeBack_Click" />
                </td>
            </tr>
        </table>
    </div>
</asp:Content>
