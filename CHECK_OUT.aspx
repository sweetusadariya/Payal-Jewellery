<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="CHECK_OUT.aspx.cs" Inherits="CHECKOUT" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="columnmiddle" align="center">
        <br />
        <br />
        <br />
        <br />
        <asp:GridView ID="GridViewCheckOut" runat="server" AutoGenerateColumns="false" CellSpacing="5"
            CellPadding="5">
            <Columns>
                <asp:TemplateField HeaderText="Product ID" HeaderStyle-BackColor="Silver" HeaderStyle-ForeColor="Black"
                    HeaderStyle-BorderStyle="Double" HeaderStyle-Font-Bold="true" HeaderStyle-Font-Italic="true"
                    HeaderStyle-BorderWidth="4">
                    <ItemTemplate>
                        <asp:Label ID="lblId" runat="server" Text='<%#Bind("PRODUCT_CODE") %>' Font-Bold="true"></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                
                <asp:TemplateField HeaderText="Product Name" HeaderStyle-BackColor="Silver" HeaderStyle-ForeColor="Black"
                    HeaderStyle-BorderStyle="Double" HeaderStyle-Font-Bold="true" HeaderStyle-Font-Italic="true"
                    HeaderStyle-BorderWidth="4">
                    <ItemTemplate>
                        <asp:Label ID="lblnm" runat="server" Text='<%#Bind("PRODUCT_NAME") %>' Font-Bold="true"></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Price" HeaderStyle-BackColor="Silver" HeaderStyle-ForeColor="Black"
                    HeaderStyle-Font-Bold="true" HeaderStyle-Font-Italic="true" HeaderStyle-BorderStyle="Double"
                    HeaderStyle-BorderWidth="4">
                    <ItemTemplate>
                        <asp:Label ID="lblprc" runat="server" Text='<%#Bind("PRICE") %>' Font-Bold="true"></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
        <br /><br /><br />
        <table>
            <tr>
                <td>
                    <asp:Label ID="lTotal" runat="server" Text="TOTAL Rs. :-" Font-Bold="true"></asp:Label>
                    <asp:Label ID="lblTot" runat="server" Font-Size="Medium">000</asp:Label><br /><br /><br />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:ImageButton  ID="imgpaypal" runat="server" ImageUrl="~/paybutton.gif" OnClick="imgpaypal_Click" /> 
                </td>
            </tr>
        </table>
        <br />
    </div>
</asp:Content>
