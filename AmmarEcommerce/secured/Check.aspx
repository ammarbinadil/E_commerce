<%@ Page Title="" Language="C#" MasterPageFile="~/MySite.Master" AutoEventWireup="true"
    CodeBehind="Check.aspx.cs" Inherits="AmmarEcommerce.secured.Check" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphPageTitle" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cphMainContent" runat="server">
    <div class="site-section">
        <div class="container">
         <h2 class="h3 mb-3 text-black">
                        Select Address</h2>
            <div class="row mb-5">
                <asp:Repeater ID="rpAddresses" runat="server" OnItemCommand="rpAddresses_ItemCommand">
                    <ItemTemplate>
                        <%-- <asp:LinkButton ID="LinkButton1" class="col-sm-6 col-lg-4 mb-4" data-aos="fade-up" runat="server">--%>
                        <div class="col-sm-6 col-lg-4 mb-4 pb-4" data-aos="fade-up">
                            <div class="block-4 text-center border">
                                <div class="block-4-text p-4">
                                    <h3>
                                        Address :<%# Eval("Address_line_1") %></h3>
                                    <p class="mb-0">
                                        City :
                                        <%# Eval("City") %></p>
                                    <p class="text-primary font-weight-bold">
                                        State :
                                        <%# Eval("State") %></p>
                                    <p class="text-primary font-weight-bold">
                                        Pin :
                                        <%# Eval("Pincode") %></p>
                                    <asp:Button ID="btSelectAddress" class="btn btn-success"  OnClientClick="javascript: return confirm('Sure?')" CommandName="proceed" CommandArgument='<%# Eval("AddressID") %>'
                                        runat="server" Text="Select" />

                                         <asp:Button ID="btDeleteAddress" class="btn btn-danger"  OnClientClick="javascript: return confirm('Sure?')" CommandName="delete" CommandArgument='<%# Eval("AddressID") %>'
                                        runat="server" Text="Delete" />




                                </div>
                            </div>
                        </div>
                        <%--</asp:LinkButton>--%>
                    </ItemTemplate>
                </asp:Repeater>
            </div>
            <div class="row">
                <div class="col-md-12">
                    <h2 class="h3 mb-3 text-black">
                        Add Address</h2>
                </div>
                <div class="col-md-12">
                    <form action="#" method="post">
                    <div class="p-3 p-lg-5 border">
                        <div class="form-group row">
                            <div class="col-md-4">
                                <label for="c_fname" class="text-black">
                                    Address Line 1 <span class="text-danger">*</span></label>
                                <asp:TextBox ID="tbAddress" CssClass="form-control" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="rfAddress" ValidationGroup="addressgroup" ControlToValidate="tbAddress"
                                    runat="server" ErrorMessage="Address Required"></asp:RequiredFieldValidator>
                            </div>
                            <div class="col-md-3">
                                <label for="c_lname" class="text-black">
                                    City <span class="text-danger">*</span></label>
                                <asp:TextBox ID="tbCity" CssClass="form-control" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="rfCity" ControlToValidate="tbCity" ValidationGroup="addressgroup"
                                    runat="server" ErrorMessage="City required"></asp:RequiredFieldValidator>
                            </div>
                            <div class="col-md-3">
                                <label for="c_lname" class="text-black">
                                    State <span class="text-danger">*</span></label>
                                <asp:TextBox ID="tbState" CssClass="form-control" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="rfState" ControlToValidate="tbState" ValidationGroup="addressgroup"
                                    runat="server" ErrorMessage="State required"></asp:RequiredFieldValidator>
                            </div>
                            <div class="col-md-2">
                                <label for="c_email" class="text-black">
                                    Pincode/Postalcode <span class="text-danger">*</span></label>
                                <asp:TextBox ID="tbPincode" CssClass="form-control" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="rfPinCode" ControlToValidate="tbPincode" ValidationGroup="addressgroup"
                                    runat="server" ErrorMessage="Pincode required"></asp:RequiredFieldValidator>
                            </div>
                            <div class="col-md-4">
                                <label for="c_fname" class="text-black">
                                    Mobile Number <span class="text-danger">*</span></label>
                                <asp:TextBox ID="tbMobileNumber" CssClass="form-control" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="rfMobileNumber" ControlToValidate="tbMobileNumber"
                                    runat="server" ErrorMessage="Mobile Number Required" ValidationGroup="addressgroup"></asp:RequiredFieldValidator>
                            </div>
                            <div class="col-md-4">
                                <label for="c_fname" class="text-black">
                                    Receiver's Name <span class="text-danger"></span>
                                </label>
                                <asp:TextBox ID="tbReceiverName" CssClass="form-control" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="rfReceiverName" ControlToValidate="tbReceiverName"
                                    ValidationGroup="addressgroup" runat="server" ErrorMessage="Receiver's Name Required"></asp:RequiredFieldValidator>
                            </div>
                        </div>
                        <div class="form-group row">
                            <div class="col-lg-12">
                                <asp:Button ID="btnAddAddress" class="btn btn-dark" ValidationGroup="addressgroup"
                                    runat="server" Text="Add Address" OnClick="btnAddAddress_Click" />
                            </div>
                        </div>
                    </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
