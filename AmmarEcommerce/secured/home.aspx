<%@ Page Title="" Language="C#" MasterPageFile="~/MySite.Master" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="AmmarEcommerce.secured.home" %>


<asp:Content ID="Content3" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="cphPageTitle" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphMainContent" runat="server">

<div class="jumbotron">
Welcome
</div>
<div class="jumbotron">
Welcome
</div>
<div class="jumbotron">
Welcome 
    <asp:Button ID="btnEeadText" runat="server" Text="Read Text" 
        onclick="btnEeadText_Click" />
</div>
</asp:Content>
