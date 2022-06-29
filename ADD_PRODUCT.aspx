<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="ADD_PRODUCT.aspx.cs" Inherits="AddProduct" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="columnmiddle">
        <br />
        <br />
        <table align="center">
            <tr>
                <td>
                    <asp:Label ID="lblAddProductHead" runat="server" Text="ADD NEW PRODUCT" Font-Bold="true"
                        BackColor="Black" ForeColor="Silver" Font-Size="Medium"></asp:Label>
                </td>
            </tr>
        </table>
        <br />
        <br />
        <br />
        <asp:Panel ID="PanelAddProduct" runat="server">
            <table>
                <tr>
                    <td>
                        <asp:Label ID="lblProCode" runat="server" Text="PRODUCT ID :-" Font-Bold="True"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtProCode" runat="server" BackColor="Black" BorderColor="#999999"
                            ForeColor="#CCCCCC" Font-Size="Medium"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="validateProductId" ControlToValidate="txtProCode"
                            Text="(Requied)" runat="server"></asp:RequiredFieldValidator><br />
                        <br />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblProName" runat="server" Text="PRODUCT NAME :-" Font-Bold="True"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtName" runat="server" BackColor="Black" BorderColor="#999999"
                            ForeColor="#CCCCCC" Font-Size="Medium"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="Validateproductname" ControlToValidate="txtName"
                            Text="(Requied)" runat="server"></asp:RequiredFieldValidator><br />
                        <br />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblCategory" runat="server" Text="CATEGORY :-" Font-Bold="True"></asp:Label>
                    </td>
                    <td>
                        <asp:DropDownList ID="DropDownCategory" runat="server" BackColor="Black" ForeColor="#CCCCCC"
                            Font-Size="Medium" AutoPostBack="true">
                            <%--onselectedindexchanged="DropDownCategory_SelectedIndexChanged">--%>
                            <asp:ListItem>GOLDEN</asp:ListItem>
                            <asp:ListItem>DIAMOND</asp:ListItem>
                            <asp:ListItem>SILVER</asp:ListItem>
                        </asp:DropDownList>
                        <br />
                        <br />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblProType" runat="server" Text="PRODUCT TYPE :-" Font-Bold="True"></asp:Label>
                    </td>
                    <td>
                        <asp:DropDownList ID="dropProType" runat="server" BackColor="Black" ForeColor="#CCCCCC"
                            Font-Size="Medium" DataTextField="NAME" DataValueField="NAME" AutoPostBack="true"
                            OnSelectedIndexChanged="dropProType_SelectedIndexChanged1">
                        </asp:DropDownList>
                        <br />
                        <br />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblProWeight" runat="server" Text="PRODUCT WEIGHT :-" Font-Bold="True"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtProWeight" runat="server" BackColor="Black" BorderColor="#999999"
                            ForeColor="#CCCCCC" Font-Size="Medium"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="Validateweight" ControlToValidate="txtProWeight"
                            Text="(Requied)" runat="server"></asp:RequiredFieldValidator><br />
                        <br />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblProPrice" runat="server" Text="PRODUCT PRICE :-" Font-Bold="True"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtProPrice" runat="server" BackColor="Black" BorderColor="#999999"
                            ForeColor="#CCCCCC" Font-Size="Medium"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="Validateprice" ControlToValidate="txtProPrice" Text="(Requied)"
                            runat="server">
                        </asp:RequiredFieldValidator><br />
                        <br />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblProStock" runat="server" Text="PRODUCT STOCK :-" Font-Bold="True"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtProStock" runat="server" BackColor="Black" BorderColor="#999999"
                            ForeColor="#CCCCCC" Font-Size="Medium"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="Validatestock" ControlToValidate="txtProStock" Text="(Requied)"
                            runat="server"></asp:RequiredFieldValidator><br />
                        <br />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblImage" runat="server" Text="PRODUCT IMAGE URL :- " Font-Bold="True"></asp:Label>
                        &nbsp;
                    </td>
                    <td>
                        <asp:FileUpload ID="FileuploadImage" runat="server" BackColor="Black" BorderColor="#999999"
                            ForeColor="#CCCCCC" />
                    </td>
                </tr>
                <tr>
                    <td>
                    </td>
                    <td align="left"><br /><br />
                        <br />
                        <asp:Button ID="btnInsert" runat="server" Text="INSERT" BackColor="Black" BorderColor="#999999"
                            ForeColor="Silver" BorderStyle="Solid" OnClick="btnInsert_Click" />
                    </td>
                </tr>
                <tr>
                    <td>
                    </td>
                </tr>
            </table>
            <br />
            <br />
            <asp:GridView ID="GridviewDatabase" runat="server" AutoGenerateColumns="false" RowStyle-VerticalAlign="Middle"
                AllowPaging="true" DataKeyNames="PRODUCT_NAME" PageSize="4" PagerStyle-Font-Size="Medium"
                PagerStyle-Wrap="True" PagerStyle-Font-Bold="True" PagerStyle-Font-Italic="True"
                OnRowCancelingEdit="GridviewDatabase_RowCancelingEdit" OnRowCommand="GridviewDatabase_RowCommand"
                OnRowDeleting="GridviewDatabase_RowDeleting" OnRowEditing="GridviewDatabase_RowEditing"
                OnRowUpdating="GridviewDatabase_RowUpdating" OnPageIndexChanging="GridviewDatabase_PageIndexChanging">
                <RowStyle VerticalAlign="Middle" />
                <Columns>
                    <asp:TemplateField>
                        <ItemTemplate>
                            <asp:LinkButton ID="lnkbutton" runat="server" CommandArgument='<%#Bind("PRODUCT_NAME") %>'
                                CommandName="editproduct" Text="EDIT" CausesValidation="false"></asp:LinkButton>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:CommandField ShowDeleteButton="true" ShowHeader="true" />
                    <asp:TemplateField HeaderText="IMAGE">
                        <EditItemTemplate>
                            <asp:TextBox ID="text1" runat="server"></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Image ID="imgDataBase" runat="server" ImageUrl='<%#Bind("PRODUCT_IMAGE") %>'
                                Height="80px" Width="80px" />
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="CODE">
                        <EditItemTemplate>
                            <asp:TextBox ID="txtcode" runat="server" Text='<%#Bind("PRODUCT_CODE") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="CodeDatabase" runat="server" Text='<%#Bind("PRODUCT_CODE") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="NAME">
                        <EditItemTemplate>
                            <asp:TextBox ID="txtname" runat="server" Text='<%#Bind("PRODUCT_NAME") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="NameDatabase" runat="server" Text='<%#Bind("PRODUCT_NAME") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="CATEGORY">
                        <EditItemTemplate>
                            <asp:TextBox ID="txtcategory" runat="server" Text='<%#Bind("CATEGORY") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="CategoryDatabase" runat="server" Text='<%#Bind("CATEGORY") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="TYPE">
                        <EditItemTemplate>
                            <asp:TextBox ID="txttype" runat="server" Text='<%#Bind("PRODUCT_TYPE") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="TypeDatabase" runat="server" Text='<%#Bind("PRODUCT_TYPE") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="WEIGHT">
                        <EditItemTemplate>
                            <asp:TextBox ID="txtweight" runat="server" Text='<%#Bind("PRODUCT_WEIGHT") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="WeightDatabase" runat="server" Text='<%#Bind("PRODUCT_WEIGHT") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="PRICE">
                        <EditItemTemplate>
                            <asp:TextBox ID="txtprice" runat="server" Text='<%#Bind("PRICE") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="PriceDatabase" runat="server" Text='<%#Bind("PRICE") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="STOCK">
                        <EditItemTemplate>
                            <asp:TextBox ID="txtstock" runat="server" Text='<%#Bind("STOCK")%>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="StockDatabase" runat="server" Text='<%#Bind("STOCK") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
                <PagerStyle Font-Bold="True" Font-Italic="True" Font-Size="Medium" 
                    HorizontalAlign="Center" Wrap="True" />
            </asp:GridView>
        </asp:Panel>
    </div>
</asp:Content>
