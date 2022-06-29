<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="ADD_CATEGORY.aspx.cs" Inherits="ADD_CATEGORY" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="columnmiddle">
        <br />
        <br />
        <table align="center">
            <tr>
                <td>
                    <asp:Label ID="lblAddCategoryHead" runat="server" Text="ADD NEW CATEGORY OF PRODUCT"
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
                    <asp:Label ID="lblCategoryName" runat="server" Text="ENTER CATEGORY NAME :-" ForeColor="Gray"
                        Font-Bold="True"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtCategoryName" runat="server" BackColor="Black" BorderColor="Black"
                        ForeColor="#999999" Font-Size="Large"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <br />
                    <asp:Label ID="lblProductType" runat="server" Text="ENTER PRODUCT TYPE :-" ForeColor="Gray"
                        Font-Bold="True"></asp:Label>
                </td>
                <td>
                    <br />
                    <asp:TextBox ID="txtProductType" runat="server" BackColor="Black" BorderColor="Black"
                        ForeColor="#999999" Font-Size="Large"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                </td>
                <td align="left">
                    <br />
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="btnInsert" runat="server" Text="ADD" BackColor="Black" ForeColor="#666666"
                        OnClick="btnInsert_Click" />
                </td>
            </tr>
        </table>
    </div>
</asp:Content>
