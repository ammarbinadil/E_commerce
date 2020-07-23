<%@ Page Title="" Language="C#" MasterPageFile="~/MySite.Master" EnableEventValidation="false" AutoEventWireup="true" CodeBehind="cart.aspx.cs" Inherits="AmmarEcommerce.secured.cart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <%--<script type="text/javascript">
    function confirmremoval() {
        return confirm("Are you sure?");
    }

</script>--%>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphPageTitle" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cphMainContent" runat="server">
    <div class="site-section">
        <div class="container">
            <%--<asp:HiddenField ID="hfcartid" runat="server" />--%>
            <h3 class="mb-4">
                My Cart</h3>
            <%--<asp:Label ID="Lbcart" runat="server" Text="My Cart"></asp:Label>--%>
            <asp:GridView ID="gvCart" runat="server" class="col-12 table" OnRowCommand="gvCart_RowCommand"
                OnDataBound="gvCart_DataBound" ShowFooter="True">
                <Columns>
                    <asp:TemplateField ItemStyle-HorizontalAlign="Center">
                        <ItemTemplate>
                            <%#Container.DataItemIndex +1 %>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField ItemStyle-HorizontalAlign="Center">
                        <ItemTemplate>
                            <asp:LinkButton ID="LinkButton1" runat="server" CommandName="RemoveItem" OnClientClick="javascript: return confirm('Sure?')"
                                CommandArgument='<%# Eval("ProductName") %>'><span class="fa fa-remove  text-danger"></span></asp:LinkButton>
                            <%--<asp:ImageButton CommandName="RemoveItem" OnClientClick="javascript: return confirm('Sure?')" CommandArgument='<%# Eval("ProductName") %>' runat="server" class="icon icon-shopping_cart"></asp:ImageButton>--%>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
                <EmptyDataTemplate>
                    No items in the cart
                </EmptyDataTemplate>
                <FooterStyle Font-Bold="true" />
            </asp:GridView>
            <br />
            <br />

            <h4 class="mb-4">
                Total cost of your Cart:
                <asp:Label ID="LbTotal" runat="server" Text=""></asp:Label></h4>
                
            <br />
            <h4 class="mb-4">
                Number of Different Items:
                <asp:Label ID="LbCount" runat="server" Text=""></asp:Label></h4>
                <br/>
                <asp:Button ID="btCheckout"  class="btn btn-primary btn-block" 
                runat="server" Text="Proceed to Checkout" onclick="btCheckout_Click" />
        </div>
    </div>
</asp:Content>
