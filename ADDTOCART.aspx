<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="ADDTOCART.aspx.cs" Inherits="ADDTOCART" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="columnmiddle" align="center">
        <br />
        <br />
        <table align="center">
            <tr>
                <td>
                    <asp:Label ID="lblAddToCartHead" runat="server" Text="PRODUCT IN CART LIST" Font-Bold="true"
                        BackColor="Black" ForeColor="Silver" Font-Size="Medium"></asp:Label>
                </td>
            </tr>
        </table>
        <br />
        <br />
        <br />
        <asp:DataList ID="DataListAddToCArt" runat="server" RepeatColumns="1" RepeatDirection="Horizontal"
            BackColor="Black" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px"
            CellPadding="4" CellSpacing="2" ForeColor="#999999" GridLines="Both" OnItemCommand="DataListAddToCArt_ItemCommand">
            <FooterStyle BackColor="#CCCCCC" />
            <ItemTemplate>
                <table>
                    <tr>
                        <td>
                            <asp:Image ID="imgAddToCart" runat="server" ImageUrl='<%#Bind("PRODUCT_IMAGE") %>'
                                Height="99px" Width="110px" />
                        </td>
                        <td valign="top" align="left">
                            CODE :-
                            <asp:Label ID="lblCode" runat="server" Text='<%#Bind("PRODUCT_CODE") %>' Font-Bold="true"></asp:Label><br />
                            <br />
                            NAME :-
                            <asp:Label ID="lblName" runat="server" Text='<%#Bind("PRODUCT_NAME") %>' Font-Bold="True"></asp:Label><br />
                            <br />
                            PRICE :-
                            <asp:Label ID="lblPrice" runat="server" Text='<%#Bind("PRICE") %>' Font-Bold="True"></asp:Label><br />
                            <br />
                            <br />
                        </td>
                        <td>
                        </td>
                        <td>
                        </td>
                        <td style="width: 91px">
                            <asp:Button ID="btnRemove" runat="server" Text="REMOVE" BackColor="Black" BorderColor="Gray"
                                BorderStyle="Solid" ForeColor="Silver" CommandArgument='<%# Bind("PRODUCT_NAME") %>' />
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
            <ItemStyle BackColor="Black" />
            <SelectedItemStyle BackColor="Black" Font-Bold="True" ForeColor="#999999" />
            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="#999999" />
        </asp:DataList><br />
        <br />
        <asp:Label ID="lblShoppongCartMsg" runat="server" Font-Size="Medium" Font-Bold="true"></asp:Label><br />
        <br />
        <br />
        <br />
        <asp:Label ID="lblTotalHeading" runat="server" Text="TOTAL Rs. :-" Font-Bold="true"></asp:Label>
        <asp:Label ID="lblTotal" runat="server" Font-Bold="True" Font-Size="Medium">000</asp:Label><br />
        <br />
        <asp:Button ID="btnContinueShopping" runat="server" Text="CONTINUE SHOPPING" BackColor="Black"
            BorderColor="Gray" BorderStyle="Solid" ForeColor="Silver" OnClick="btnContinueShopping_Click" />
        &nbsp;&nbsp;
        <asp:Button ID="btnCheckOut" runat="server" Text="CHECK OUT" BackColor="Black" BorderColor="Gray"
            BorderStyle="Solid" ForeColor="Silver" OnClick="btnCheckOut_Click" />
    </div>
</asp:Content>
