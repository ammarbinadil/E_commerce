<%@ Page Title="" Language="C#" MasterPageFile="~/MySite.Master" AutoEventWireup="true"
    EnableEventValidation="false" CodeBehind="checkout.aspx.cs" Inherits="AmmarEcommerce.secured.checkout" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphPageTitle" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cphMainContent" runat="server">
    <div class="site-section">
        <div class="container">
            <div class="row mb-5">
                <asp:Repeater ID="rpAddresses" runat="server" OnItemCommand="rpAddresses_ItemCommand">
                    <ItemTemplate>
                        <%-- <asp:LinkButton ID="LinkButton1" class="col-sm-6 col-lg-4 mb-4" data-aos="fade-up" runat="server">--%>
                        <div class="col-sm-6 col-lg-4 mb-4" data-aos="fade-up">
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
                                </div>
                                <asp:Button ID="Button1" CommandName="proceed" CommandArgument="test" runat="server" Text="Button" />
                            </div>
                        </div>
                        <%--</asp:LinkButton>--%>
                    </ItemTemplate>
                </asp:Repeater>
            </div>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                DataSourceID="ObjectDataSource1" onrowcommand="GridView1_RowCommand">
                <Columns>
                    <asp:BoundField DataField="Address_line_1" HeaderText="Address_line_1" 
                        SortExpression="Address_line_1" />
                    <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
                    <asp:BoundField DataField="State" HeaderText="State" SortExpression="State" />
                    <asp:BoundField DataField="Pincode" HeaderText="Pincode" 
                        SortExpression="Pincode" />
                    <asp:BoundField DataField="Mobile" HeaderText="Mobile" 
                        SortExpression="Mobile" />
                    <asp:BoundField DataField="Receiver's_Name" HeaderText="Receiver's_Name" 
                        SortExpression="Receiver's_Name" />
                        <asp:TemplateField>
                        <ItemTemplate>
                            <asp:Button ID="Button2" runat="server" Text="Button" />
                        </ItemTemplate>
                        </asp:TemplateField>
                </Columns>
            </asp:GridView>
            <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" 
                OldValuesParameterFormatString="original_{0}" SelectMethod="GetAddressesByUser" 
                TypeName="AmmarEcommerce.EComDatasetTableAdapters.AddressTableAdapter">
                <SelectParameters>
                    <asp:Parameter DefaultValue="admin" Name="username" Type="String" />
                </SelectParameters>
            </asp:ObjectDataSource>
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
                                <asp:RequiredFieldValidator ID="rfAddress" ControlToValidate="tbAddress" runat="server"
                                    ErrorMessage="Address Required"></asp:RequiredFieldValidator>
                            </div>
                            <div class="col-md-3">
                                <label for="c_lname" class="text-black">
                                    City <span class="text-danger">*</span></label>
                                <asp:TextBox ID="tbCity" CssClass="form-control" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="rfCity" ControlToValidate="tbCity" runat="server"
                                    ErrorMessage="City required"></asp:RequiredFieldValidator>
                            </div>
                            <div class="col-md-3">
                                <label for="c_lname" class="text-black">
                                    State <span class="text-danger">*</span></label>
                                <asp:TextBox ID="tbState" CssClass="form-control" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="rfState" ControlToValidate="tbState" runat="server"
                                    ErrorMessage="State required"></asp:RequiredFieldValidator>
                            </div>
                            <div class="col-md-2">
                                <label for="c_email" class="text-black">
                                    Pincode/Postalcode <span class="text-danger">*</span></label>
                                <asp:TextBox ID="tbPincode" CssClass="form-control" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="rfPinCode" ControlToValidate="tbPincode" runat="server"
                                    ErrorMessage="Pincode required"></asp:RequiredFieldValidator>
                            </div>
                            <div class="col-md-4">
                                <label for="c_fname" class="text-black">
                                    Mobile Number <span class="text-danger">*</span></label>
                                <asp:TextBox ID="tbMobileNumber" CssClass="form-control" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="rfMobileNumber" ControlToValidate="tbMobileNumber"
                                    runat="server" ErrorMessage="Mobile Number Required"></asp:RequiredFieldValidator>
                            </div>
                            <div class="col-md-4">
                                <label for="c_fname" class="text-black">
                                    Receiver's Name <span class="text-danger"></span>
                                </label>
                                <asp:TextBox ID="tbReceiverName" CssClass="form-control" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="rfReceiverName" ControlToValidate="tbReceiverName"
                                    runat="server" ErrorMessage="Receiver's Name Required"></asp:RequiredFieldValidator>
                            </div>
                        </div>
                        <div class="form-group row">
                            <div class="col-lg-12">
                                <asp:Button ID="btnAddAddress" class="btn btn-dark" runat="server" Text="Add Address"
                                    OnClick="btnAddAddress_Click" />
                            </div>
                        </div>
                    </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
