<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="DISPLAY_ITEM.aspx.cs" Inherits="DISPLAY_ITEM" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="columnmiddle" align="center">
        <br />
        <br />
        <asp:DropDownList ID="DropDownCategory" runat="server" AutoPostBack="true" BackColor="Black"
            ForeColor="#CCCCCC" Font-Size="Medium" DataTextField="CATEGORY_NAME" DataValueField="CATEGORY_NAME"
            OnSelectedIndexChanged="DropDownCategory_SelectedIndexChanged">
        </asp:DropDownList>
        <br />
        <br />
        <br />
        <asp:DataList ID="DataListDisplayItem" runat="server" RepeatColumns="4" RepeatDirection="Horizontal"
            OnItemCommand="DataListDisplayItem_ItemCommand">
            <ItemTemplate>
                <table>
                    <tr>     
                        <td>
                            <asp:ImageButton ID="Item_ImageButton" runat="server" ImageUrl='<%#Bind("PRODUCT_IMAGE")%>'
                                CommandArgument='<%#Bind("PRODUCT_NAME") %>' Height="99px" Width="117px" />
                            <div class="clear">
                            </div>
                            <div class="piclinks">
                                <asp:LinkButton ID="lnkProductName" runat="server" Text='<%#Bind("PRODUCT_NAME") %>'
                                    CommandArgument='<%#Bind("PRODUCT_NAME") %>'></asp:LinkButton>
                            </div>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
        <br />
        <br />
        <br />
        <asp:DataList ID="dlPaging" runat="server" RepeatDirection="Horizontal" OnItemCommand="dlPaging_ItemCommand">
            <ItemTemplate>
                <asp:LinkButton ID="lnkbtnPaging" runat="server" CommandArgument='<%# Eval("PageIndex") %>'
                    CommandName="lnkbtnPaging" Text='<%# Eval("PageText") %>' Font-Size="15px"></asp:LinkButton>&nbsp;&nbsp;&nbsp;
            </ItemTemplate>
        </asp:DataList>
    </div>
</asp:Content>
