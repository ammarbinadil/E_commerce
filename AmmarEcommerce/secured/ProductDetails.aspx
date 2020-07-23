<%@ Page Title="" Language="C#" MasterPageFile="~/MySite.Master" AutoEventWireup="true"
    CodeBehind="ProductDetails.aspx.cs" Inherits="AmmarEcommerce.secured.ProductDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphPageTitle" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cphMainContent" runat="server">
    <div class="site-section">
        <div class="container">
            <div class="row">
                <div class="col-md-6">
                    <asp:Image ID="imgProduct" runat="server" alt="Image" class="img-fluid" />
                    <%--<img src='<%#Eval("ImagePath") %>' " alt="Image" class="img-fluid">--%>
                </div>
                <div class="col-md-6">
                    <h2 class="text-black">
                        <asp:Label ID="lblProdctName" runat="server" Text="Label"></asp:Label></h2>
                    <p>
                        <asp:Label ID="lblProductDesc" runat="server" Text="Label"></asp:Label>
                    </p>
                    <p class="mb-4">
                        Additional Description</p>
                    <p>
                        <strong class="text-primary h4">Rs.
                            <asp:Label ID="lblUnitPrice" runat="server" Text="Label"></asp:Label></strong></p>
                    <div class="mb-5">
                        <div class="input-group mb-3" style="max-width: 120px;">
                            <div class="input-group-prepend">
                                <button class="btn btn-outline-primary js-btn-minus" type="button">
                                    &minus;</button>
                            </div>
                            <asp:TextBox ID="tbQuantity" runat="server" class="form-control text-center" value="1"
                                placeholder="" aria-label="Example text with button addon" aria-describedby="button-addon1"></asp:TextBox>
                            <%--<input type="text" class="form-control text-center" value="1" placeholder="" aria-label="Example text with button addon" aria-describedby="button-addon1">--%>
                            <div class="input-group-append">
                                <button class="btn btn-outline-primary js-btn-plus" type="button">
                                    &plus;</button>
                            </div>
                        </div>
                    </div>
                    <%--<p><a href="/secured/cart.aspx" class="buy-now btn btn-sm btn-primary">Add To Cart</a></p>--%>
                    <asp:Button ID="btnAddToCart" class="buy-now btn btn-sm btn-primary" runat="server"
                        Text="Add To Cart" OnClick="btnAddToCart_Click" />
                    <asp:HiddenField ID="hfProductID" runat="server" />
                </div>
            </div>
        </div>
    </div>
</asp:Content>
