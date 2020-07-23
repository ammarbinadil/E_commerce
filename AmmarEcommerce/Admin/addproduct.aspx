<%@ Page Title="" Language="C#" MasterPageFile="~/MySite.Master" AutoEventWireup="true"
    CodeBehind="addproduct.aspx.cs" Inherits="AmmarEcommerce.Admin.addproduct" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cphMainContent" runat="server">
    <div class="site-section">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <h2 class="h3 mb-3 text-black">
                        Add Product</h2>
                </div>
                <div class="col-md-12">
                    <form action="#" method="post">
                    <div class="p-3 p-lg-5 border">
                        <div class="form-group row">
                            <div class="col-md-4">
                                <label for="c_fname" class="text-black">
                                    Name <span class="text-danger">*</span></label>
                                <asp:TextBox ID="tbName" CssClass="form-control" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="rfName" ControlToValidate="tbName" runat="server"
                                    ErrorMessage="Name required"></asp:RequiredFieldValidator>
                            </div>
                            <div class="col-md-6">
                                <label for="c_lname" class="text-black">
                                    Description <span class="text-danger">*</span></label>
                                <asp:TextBox ID="tbDescription" CssClass="form-control" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="rfDesc" ControlToValidate="tbDescription" runat="server" ErrorMessage="Description required"></asp:RequiredFieldValidator>

                            </div>
                            <div class="col-md-2">
                                <label for="c_email" class="text-black">
                                    Unit Price <span class="text-danger">*</span></label>
                                <asp:TextBox ID="tbUnitPrice" type="number" CssClass="form-control" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="rfPrice" ControlToValidate="tbUnitPrice" runat="server" ErrorMessage="Price required"></asp:RequiredFieldValidator>

                            </div>
                        </div>
                        <div class="form-group row">
                            <div class="col-md-6">
                                <label for="c_subject" class="text-black">
                                    Product Image
                                </label>
                                <asp:FileUpload ID="fuImage" class="form-control" runat="server" />
                                <asp:RequiredFieldValidator ID="rfImage" ControlToValidate="fuImage" runat="server" ErrorMessage="Image required"></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="revImage" ForeColor="Red" runat="server" ControlToValidate="fuImage" ErrorMessage="Invalid Format" ValidationExpression="^.+(.png|.jpg|.jpeg)$"></asp:RegularExpressionValidator>
                            </div>
                            <div class="col-md-6">
                                <label for="c_subject" class="text-black">
                                    Product Category
                                </label>
                                <asp:DropDownList ID="ddCategory" CssClass="form-control" runat="server" DataSourceID="odsCategories"
                                    DataTextField="CategoryName" DataValueField="CategoryID">
                                </asp:DropDownList>
                                <asp:ObjectDataSource ID="odsCategories" runat="server" OldValuesParameterFormatString="original_{0}"
                                    SelectMethod="GetAllCategories" TypeName="AmmarEcommerce.EComDatasetTableAdapters.CategoryTableAdapter">
                                </asp:ObjectDataSource>
                            </div>
                        </div>
                        <div class="form-group row">
                            <div class="col-lg-12">
                                <asp:Button ID="btnSave" class="btn btn-primary btn-lg btn-block" runat="server"
                                    Text="Save Product" OnClick="btnSave_Click" />
                            </div>
                        </div>
                    </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
