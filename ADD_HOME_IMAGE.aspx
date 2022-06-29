<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="ADD_HOME_IMAGE.aspx.cs" Inherits="ADD_HOME_IMAGE" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="columnmiddle">
        <br />
        <br />
        <table align="center">
            <tr>
                <td>
                    <asp:Label ID="lblAddHomeImageHead" runat="server" Text="ADD THE PRODUCT ON HOME PAGE"
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
                    <asp:Label ID="lbllnktype" runat="server" Text="ENTER PRODUCT TYPE :-" ForeColor="Gray"
                        Font-Bold="True"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtlnktype" runat="server" BackColor="Black" BorderColor="Black"
                        ForeColor="#999999" Font-Size="Large"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <br />
                    <asp:Label ID="lblImgPath" runat="server" Text="ENTER IMAGE PATH :-" ForeColor="Gray"
                        Font-Bold="True"></asp:Label>
                </td>
                <td>
                    <br />
                    <asp:FileUpload ID="ImageUpLoad" runat="server" BackColor="Black" BorderColor="Black"
                        ForeColor="#999999" Font-Size="Large" />
                </td>
            </tr>
            <tr>
                <td>
                </td>
                <td align="left">
                    <br />
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="btnInsert" runat="server" Text="ADD" BackColor="Black" 
                        ForeColor="#666666" onclick="btnInsert_Click" />
                </td>
            </tr>
        </table>
        <br />
        <br />
        <br />
        <table align="center">
            <tr>
                <td>
                    <asp:GridView ID="GridViewHomePage" runat="server" AutoGenerateColumns="false" DataKeyNames="NAME"
                        AllowPaging="true" PageSize="6" PagerStyle-Font-Size="Medium" PagerStyle-Wrap="True"
                        PagerStyle-Font-Bold="True" PagerStyle-Font-Italic="True" OnRowCancelingEdit="GridViewHomePage_RowCancelingEdit"
                        OnRowCommand="GridViewHomePage_RowCommand" OnRowDeleting="GridViewHomePage_RowDeleting"
                        OnRowEditing="GridViewHomePage_RowEditing" OnRowUpdating="GridViewHomePage_RowUpdating"
                        OnPageIndexChanging="GridViewHomePage_PageIndexChanging" PagerStyle-HorizontalAlign="Center">
                        <Columns>
                            <asp:TemplateField>
                                <ItemTemplate>
                                    <asp:LinkButton ID="lnkbutton" runat="server" CommandArgument='<%#Bind("NAME") %>'
                                        CommandName="editproduct" Text="EDIT" CausesValidation="false"></asp:LinkButton>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:CommandField ShowDeleteButton="true" ShowHeader="true" />
                            <asp:TemplateField HeaderText="PRODUCT TYPE">
                                <EditItemTemplate>
                                    <asp:TextBox ID="txtname" runat="server" Text='<%#Bind("NAME") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="lbltype" runat="server" Text='<%#Bind("NAME") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="IMAGE">
                                <EditItemTemplate>
                                    <asp:TextBox ID="text1" runat="server"></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Image ID="imgHome" runat="server" ImageUrl='<%#Bind("IMAGE_URL") %>' Height="80px"
                                        Width="80px" />
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                    </asp:GridView>
                </td>
            </tr>
        </table>
    </div>
</asp:Content>
