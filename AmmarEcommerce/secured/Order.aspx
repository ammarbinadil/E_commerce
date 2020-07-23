<%@ Page Title="" Language="C#" MasterPageFile="~/MySite.Master" AutoEventWireup="true"
    CodeBehind="Order.aspx.cs" Inherits="AmmarEcommerce.secured.WebForm1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphPageTitle" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cphMainContent" runat="server">
    <div class="row mb-3">
        <div class="col-lg-12">
            <div class="row">
                <div class="col-lg-6">
                    <h2 class="h3 mb-3 text-black text-center">
                        Your Order</h2>
                    <div class="p-3 p-lg-5 border col-md-12">
                        <table class="table site-block-order-table mb-5">
                            <thead>
                                <th>
                                    Product
                                </th>
                                <th>
                                    Total
                                </th>
                            </thead>
                            <tbody>
                                <asp:Repeater ID="rpOrder" runat="server" OnItemDataBound="rpOrder_ItemDataBound">
                                    <ItemTemplate>
                                        <tr>
                                            <td>
                                                <%# Eval("ProductName") %><strong class="mx-2">x</strong>
                                                <%# Eval("Quantity") %>
                                            </td>
                                            <td>
                                                <%# Eval("Total") %>
                                            </td>
                                        </tr>
                                    </ItemTemplate>
                                </asp:Repeater>
                                <%-- <tr>
                            <td class="text-black font-weight-bold">
                                <strong>Cart Subtotal</strong>
                            </td>
                            <td class="text-black">
                                $350.00
                            </td>
                        </tr>--%>
                                <tr>
                                    <td class="text-black font-weight-bold">
                                        <strong>Order Total</strong>
                                    </td>
                                    <td class="text-black font-weight-bold">
                                        <strong>
                                            <asp:Label ID="lbTotalCost" runat="server"></asp:Label></strong>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
                <div class="col-lg-6">
                    <h2 class="h3 mb-3 text-black col-md-12">
                        Shipping Address</h2>
                    <div class="col-lg-12" data-aos="fade-up">
                        <div class="block-4 text-center border ">
                            <div class="block-4-text p-4">
                                <h3>
                                    Address :<asp:Label ID="lblAddress" runat="server" Text="Label"></asp:Label></h3>
                                <p class="mb-0">
                                    City :
                                    <asp:Label ID="lblCity" runat="server" Text="Label"></asp:Label></p>
                                <p class="text-primary font-weight-bold">
                                    State :
                                    <asp:Label ID="lblState" runat="server" Text="Label"></asp:Label></p>
                                <p class="text-primary font-weight-bold">
                                    Mobile:
                                    <asp:Label ID="lblMobile" runat="server" Text="Label"></asp:Label></p>
                                <p class="text-primary font-weight-bold">
                                    Pin :
                                    <asp:Label ID="lblPin" runat="server" Text="Label"></asp:Label></p>
                                <p class="text-primary font-weight-bold">
                                    Receiver :
                                    <asp:Label ID="lblReceiver" runat="server" Text="Label"></asp:Label></p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="border p-3 mb-3">
                <h3 class="h6 mb-0">
                    <a class="d-block" data-toggle="collapse" href="#collapsebank" role="button" aria-expanded="false"
                        aria-controls="collapsebank">Direct Bank Transfer</a></h3>
                <div class="collapse" id="collapsebank">
                    <div class="py-2">
                        <p class="mb-0">
                            Make your payment directly into our bank account. Please use your Order ID as the
                            payment reference. Your order won’t be shipped until the funds have cleared in our
                            account.</p>
                    </div>
                </div>
            </div>
            <div class="border p-3 mb-3">
                <h3 class="h6 mb-0">
                    <a class="d-block" data-toggle="collapse" href="#collapsecheque" role="button" aria-expanded="false"
                        aria-controls="collapsecheque">Cheque Payment</a></h3>
                <div class="collapse" id="collapsecheque">
                    <div class="py-2">
                        <p class="mb-0">
                            Make your payment directly into our bank account. Please use your Order ID as the
                            payment reference. Your order won’t be shipped until the funds have cleared in our
                            account.</p>
                    </div>
                </div>
            </div>
            <div class="border p-3 mb-5">
                <h3 class="h6 mb-0">
                    <a class="d-block" data-toggle="collapse" href="#collapsepaypal" role="button" aria-expanded="false"
                        aria-controls="collapsepaypal">Paypal</a></h3>
                <div class="collapse" id="collapsepaypal">
                    <div class="py-2">
                        <p class="mb-0">
                            Make your payment directly into our bank account. Please use your Order ID as the
                            payment reference. Your order won’t be shipped until the funds have cleared in our
                            account.</p>
                    </div>
                </div>
            </div>
            <div class="form-group">
                <button class="btn btn-primary btn-lg py-3 btn-block" onclick="window.location='thankyou.html'">
                    Place Order</button>
            </div>
        </div>
    </div>
    </div>
</asp:Content>
