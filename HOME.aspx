 <%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="HOME.aspx.cs" Inherits="Default2" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
  
    <!--midCol starts here-->
    <div class="columnmiddle">
        <div class="welCome">
            <h1>
                Welcome <span class="brownText">to PAYAL JEWELLERS </span></h1>
            &nbsp;<h3>
                JEWELLERY</h3>
            <div class="welCometext">
                <strong>In India the ornaments are made practically for every part of the body. 
                Such a variety of ornaments bears the testimony to the excellent skills of the 
                jewelers in India. The range of jewelry in India varied from religious one to 
                purely aesthetic one. But The Purpose of our Jewellery shop is sale the 
                jewellery in all India &nbsp;&nbsp; world via using internet. Which is most probably use 
                to our customer. And this way we are try to save the time of our 
                customer.Jewellery is made by Human but the quality is only provide by our 
                company. So our jewellery shop is providing the online jewellery shop on 
                internet. Which is use to consume our customer time. The main purpose of the 
                project is to design and develop a site which enables the users to make the 
                shopping at their home. It generally decreases the gap between the customer and 
                the product.</strong>
                <div class="more">
                    <a href="#"></a>
                </div>
                <div class="clear"> 
                </div>
            </div>
        </div>
        <div class="welComesoft">
            <h1>
               <span> Latest Design</span></h1><br />
            <div class="clear">
            </div>
            <asp:DataList ID="DataListImage" runat="server" RepeatColumns="4" RepeatDirection="Horizontal"
                OnItemCommand="DataListImage_ItemCommand">
                <ItemTemplate>
                    <table>
                        <tr>
                            <td>
                                <%--<div class="latestContainer">
                                    <div class="pic1">--%>
                                <%--<asp:ImageButton ID="img" ImageUrl='<%#Bind ("IMAGE_URL") %>' runat="server" Height="99px" Width="110px" />--%>
                                <asp:ImageButton ID="imgbtnHome" ImageUrl='<%# Bind("IMAGE_URL") %>' 
                                    runat="server" Height="99px"
                                    Width="110px" CommandArgument='<%#Bind("NAME") %>' />
                                <div class="piclinks">
                                    <asp:LinkButton ID="lnkNameHome" Text='<%#Bind("NAME") %>' CommandArgument='<%#Bind("NAME") %>'
                                        runat="server"> </asp:LinkButton>
                                    <%--<a href="#">NECKLACE</a></div>--%>
                                </div>
                                <!--<div class="more"><a href="#"> more</a></div>-->
                                <div class="clear">
                                    <%-- </div>
                                    </div>--%>
                                </div>
                            </td>
                        </tr>
                    </table>
                </ItemTemplate>
            </asp:DataList>
            <div class="smartphonzone">
                <h1>
                    Services</h1>
                <div class="softLinks">
                    <ul>
                        <li><a href="#">Customers can buy the Jewellery related products online.</a></li>
                        <li><a href="#">Customers can access the website and purchase product as per his/her 
                            requirement. </a></li>
                        <li><a href="#">This website generally acts as an online shopping.</a></li>
                       <%-- <li><a href="#"></a></li>
                        <li><a href="#"></a></li>--%>
                    </ul>
                </div>
                <div class="more">
                </div>
                <%--<div class="clear">
                </div>--%>
            </div>
            <!--welCol ends here-->
            <%--<div class="clear">
            </div>--%>
        </div>
        <!--midCol ends here-->
        <%--<div class="clear">
        </div>--%>
    </div>
    
</asp:Content>
