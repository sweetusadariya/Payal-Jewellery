 <%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="SEARCH.aspx.cs" Inherits="SEARCH" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="columnmiddle">
        <br />
        <br />
        <table>
            <tr>
                <td>
                    <asp:Label ID="lblSearchByName" runat="server" Text="SEARCH BY NAME :-" Font-Size="Large"></asp:Label>
                    <asp:DropDownList ID="dropdownlistName" runat="server" BackColor="Black" ForeColor="#CCCCCC"
                        Font-Size="Medium" DataTextField="NAME" DataValueField="NAME">
                    </asp:DropDownList><br /><br />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblSearchByPriceFrom" runat="server" Text="SEARCH BY PRICE RANGE :- "
                        Font-Size="Large"></asp:Label>
                    <asp:DropDownList ID="dropdownlistPriceFrom" runat="server" BackColor="Black" ForeColor="#CCCCCC"
                        Font-Size="Medium">
                        <asp:ListItem>10000</asp:ListItem>
                        <asp:ListItem>30000</asp:ListItem>
                        <asp:ListItem>50000</asp:ListItem>
                        <asp:ListItem>70000</asp:ListItem>
                        <asp:ListItem>90000</asp:ListItem>
                        <asp:ListItem>110000</asp:ListItem>
                    </asp:DropDownList>
                    <asp:Label ID="lblSearchByPriceTo" runat="server" Text="TO"></asp:Label>
                    <asp:DropDownList ID="dropdownlistPriceTo" runat="server" BackColor="Black" ForeColor="#CCCCCC"
                        Font-Size="Medium">
                        <asp:ListItem>20000</asp:ListItem>
                        <asp:ListItem>40000</asp:ListItem>
                        <asp:ListItem>60000</asp:ListItem>
                        <asp:ListItem>80000</asp:ListItem>
                        <asp:ListItem>100000</asp:ListItem>
                        <asp:ListItem>120000</asp:ListItem>
                    </asp:DropDownList><br /><br />
                </td>
            </tr>
            <tr>
                <td align="center">
                    <asp:Button ID="btnSearch" runat="server" Text="SEARCH" BackColor="Black" ForeColor="#CCCCCC"
                        BorderStyle="Solid" OnClick="btnSearch_Click" /><br /><br />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:DataList ID="DataListSearch" runat="server" RepeatColumns="4" RepeatDirection="Horizontal" OnItemCommand="DataListSearch_ItemCommand">
                        <ItemTemplate>
                            <table>
                                <tr>
                                    <td>
                                        <asp:ImageButton ID="img_Search" ImageUrl='<%# Bind("PRODUCT_IMAGE") %>' runat="server"
                                            Height="99px" Width="117px" CommandArgument='<%#Bind("PRODUCT_NAME") %>' />
                                        <div class="clear">
                                        </div>
                                        <div class="piclinks">
                                            <asp:LinkButton ID="lnkSearch" Text='<%#Bind("PRODUCT_NAME") %>' CommandArgument='<%#Bind("PRODUCT_NAME") %>'
                                                runat="server"> </asp:LinkButton>
                                        </div>
                                        <div class="clear">
                                        </div>
                                    </td>
                                </tr>
                            </table>
                        </ItemTemplate>
                    </asp:DataList>
                </td>
            </tr>
        </table>
        
    </div>
</asp:Content>
