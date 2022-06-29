<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="DETAIL_PRODUCT.aspx.cs" Inherits="DETAIL" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="columnmiddle" align="center">
        <br />
        <br />
        <table align="center">
            <tr>
                <td>
                    <asp:Label ID="lblProductDetailHead" runat="server" Text="DETAIL OF SELECTED PRODUCT" Font-Bold="true"
                        BackColor="Black" ForeColor="Silver" Font-Size="Medium"></asp:Label>
                </td>
            </tr>
        </table>
        <br />
        <br />
        <br />
        <asp:FormView ID="FormViewDetail" runat="server">
            <ItemTemplate>
                <table>
                    <tr>
                        <td>
                            <asp:Image ID="imgDetail" runat="server" ImageUrl='<%#Bind("PRODUCT_IMAGE") %>' Height="200px"
                                Width="200px" /><br />
                            <br />
                            <table>
                                <tr>
                                    <td>
                                        <asp:Label ID="lblCode" runat="server" Text="Product Code :-"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:Label ID="labelCode" runat="server" Text='<%#Bind("PRODUCT_CODE") %>' Font-Bold="True"
                                            Font-Size="Medium"></asp:Label><br />
                                        <br />
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Label ID="lblName" runat="server" Text="Product Name :-"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:Label ID="label1" runat="server" Text='<%#Bind("PRODUCT_NAME") %>' Font-Size="Medium"
                                            Font-Bold="True"></asp:Label><br />
                                        <br />
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Label ID="lblWeight" runat="server" Text="Product Weight :-"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:Label ID="labelWeight" runat="server" Text='<%#Bind("PRODUCT_WEIGHT") %>' Font-Bold="True"
                                            Font-Size="Medium"></asp:Label><br />
                                        <br />
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Label ID="lblPrice" runat="server" Text="Product Price :-"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:Label ID="labelPrice" runat="server" Text='<%#Bind("PRICE") %>' Font-Size="Medium"
                                            Font-Bold="True"></asp:Label><br />
                                        <br />
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td align="center">
                            <asp:Button ID="btnAddToCart" runat="server" Text="ADD TO CART" BackColor="Black"
                                ForeColor="#999999" BorderColor="Silver" BorderStyle="Ridge" OnClick="btnAddToCart_Click" />
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:FormView>
    </div>
</asp:Content>
