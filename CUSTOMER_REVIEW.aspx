 <%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="CUSTOMER_REVIEW.aspx.cs" Inherits="CUSTOMER_REVIEW" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="columnmiddle">
        <br />
        <br />
        <table align="center">
            <tr>
                <td>
                    <asp:Label ID="lblCustomerReviewHead" runat="server" Text="Review From User" Font-Bold="true"
                        BackColor="Black" ForeColor="Silver" Font-Size="Medium"></asp:Label>
                </td>
            </tr>
        </table>
        <br />
        <br />
        <br />
        <asp:DataList ID="DataListReview" runat="server" Font-Bold="True" BackColor="black"
            BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2"
            ForeColor="silver" GridLines="Both">
            <FooterStyle BackColor="#CCCCCC" />
            <ItemTemplate>
                <table>
                    <tr>
                        <td align="left">
                            <br />
                            <asp:Label ID="FullName" runat="server" Text="FULL NAME :-" ForeColor="White"></asp:Label>
                            <asp:Label ID="lblFName" runat="server" Text='<%#Bind("FULLNAME")%>' Font-Size="Medium"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td align="left">
                            <br />
                            <asp:Label ID="MailId" runat="server" Text="Eamil ID :-" ForeColor="White"></asp:Label>
                            <asp:Label ID="lblMailId" runat="server" Text='<%#Bind("Email_ID")%>' Font-Size="Medium">
                            
                            </asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td align="left">
                            <br />
                            <asp:Label ID="Message" runat="server" Text="MESSAGE :-" ForeColor="White"></asp:Label>
                            <asp:TextBox ID="txtMessage" runat="server" Text='<%#Bind("MESSAGE") %>' TextMode="MultiLine"
                                BackColor="Black" BorderColor="Black" Rows="6" Columns="47" ForeColor="Silver"></asp:TextBox>
                            <%--<asp:Label ID="lblMessage" runat="server" Text='<%#Bind("MESSAGE")%>'></asp:Label>--%>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
            <ItemStyle BackColor="black" />
            <SelectedItemStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
        </asp:DataList>
    </div>
</asp:Content>
