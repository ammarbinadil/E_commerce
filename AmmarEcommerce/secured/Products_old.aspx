<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" EnableEventValidation="false"
    CodeBehind="Products_old.aspx.cs" Inherits="AmmarEcommerce.secured.Products" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <link href="/bspackage/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <script src="/bspackage/bootstrap.min.js" type="text/javascript"></script>
    <script src="/bspackage/jquery.min.js" type="text/javascript"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="row">
        <asp:Repeater ID="rpProducts" runat="server">
            <ItemTemplate>
                <div class="col-lg-3 text-center">
                    <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl='<%# Eval("ImagePath") %>'  class="col-lg-10 col-lg-offset-1" />
                    <%--<img src='<%# Eval("ImagePath") %>' alt="" class="col-lg-10 col-lg-offset-1" />--%>
                    <%# Eval("ProductName") %><br />
                    <%# Eval("Description") %>
                </div>
            </ItemTemplate>
        </asp:Repeater>
    </div>
</asp:Content>
