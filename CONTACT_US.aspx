<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="CONTACT_US.aspx.cs" Inherits="CONTACT_US" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="columnmiddle">
        <br />
        <br />
        <br />
        <table align="center">
            <tr>
                <td>
                    <asp:DataList ID="DataListContact" runat="server" BackColor="#CCCCCC" BorderColor="#999999"
                        BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" ForeColor="gray"
                        GridLines="Both">
                        <FooterStyle BackColor="#CCCCCC" />
                        <ItemStyle BackColor="black" />
                        <SelectedItemStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                        <ItemTemplate>
                            <table align="center">
                                <tr>
                                    <td>
                                        <asp:Label ID="lbName" runat="server" Text="NAME :- " Font-Size="Medium"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:Label ID="lblName" runat="server" Text='<%#Bind("NAME") %>' Font-Size="Large"></asp:Label><br />
                                    </td> 
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Label ID="lbAddress" runat="server" Text="ADDRESS :- " Font-Size="Medium"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:Label ID="lblAddress" runat="server" Text='<%#Bind("ADDRESS") %>' Font-Size="Large"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Label ID="lbCity" runat="server" Text="CITY :- " Font-Size="Medium"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:Label ID="lblCity" runat="server" Text='<%#Bind("CITY") %>' Font-Size="Large"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Label ID="lbContact" runat="server" Text="CONTACT No. :- " Font-Size="Medium"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:Label ID="lblContactNo" runat="server" Text='<%#Bind("CONTACT_NO") %>' Font-Size="Large"></asp:Label><br />
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Label ID="lbEmail" runat="server" Text="E-Mail :- " Font-Size="Medium"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:Label ID="lblEmail" runat="server" Text='<%#Bind("E_MAIL") %>' Font-Size="Large"></asp:Label>
                                        <br />
                                        <br />
                                    </td>
                                </tr>
                            </table>
                        </ItemTemplate>
                    </asp:DataList>
                </td>
            </tr>
        </table>
        <br />
        <br />
        <br />
        <br />
        <table align="center">
            <tr>
                <td>
                    <asp:Label ID="lblContactUsHead" runat="server" Text="If you want to give review to us then fill up following"
                        BackColor="Black" ForeColor="Silver" Font-Size="Medium"></asp:Label>
                </td>
            </tr>
        </table>
        <br />
        <br />
        <br />
        <table>
            <tr>
                <td>
                    <asp:Label ID="lblFullName" runat="server" Text="ENTER YOUR FULL NAME :- " ForeColor="Gray"
                        Font-Bold="True" Width="175px"></asp:Label>
                    <asp:TextBox ID="txtFullName" runat="server" BackColor="Black" BorderColor="Black"
                        ForeColor="#999999" Font-Size="Large" Width="215px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <br />
                    <asp:Label ID="lblEmailId" runat="server" Text="ENTER YOUR Email ID :- " ForeColor="Gray"
                        Font-Bold="True" Width="175px"></asp:Label>
                    <asp:TextBox ID="txtEmailId" runat="server" BackColor="Black" BorderColor="Black"
                        ForeColor="#999999" Font-Size="Large" Width="215px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <br />
                    <asp:Label ID="lblMessege" runat="server" Text="Message :- " ForeColor="Gray" Font-Bold="True"
                        Width="90px"></asp:Label><br />
                    <br>
                    <asp:TextBox ID="txtMessege" runat="server" BackColor="Black" BorderColor="Black"
                        ForeColor="#999999" Font-Size="Large" TextMode="MultiLine" Rows="6" Columns="47"
                        Style="width: 485px" Width="215px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="center">
                    <br />
                    <br />
                    <asp:Button ID="btnSend" runat="server" Text="SEND" OnClick="btnSend_Click" Style="height: 26px"
                        BackColor="Black" ForeColor="#666666" />
                </td>
            </tr>
        </table>
    </div>
</asp:Content>
