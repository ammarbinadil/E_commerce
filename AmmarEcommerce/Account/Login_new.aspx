<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login_new.aspx.cs" Inherits="AmmarEcommerce.Login_new" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Mukta:300,400,700" />
    <link rel="stylesheet" href="/package/fonts/icomoon/style.css" />
    <link rel="stylesheet" href="/package/css/bootstrap.min.css" />
    <link rel="stylesheet" href="/package/css/magnific-popup.css" />
    <link rel="stylesheet" href="/package/css/jquery-ui.css" />
    <link rel="stylesheet" href="/package/css/owl.carousel.min.css" />
    <link rel="stylesheet" href="/package/css/owl.theme.default.min.css" />
    <link rel="stylesheet" href="/package/css/aos.css" />
    <link rel="stylesheet" href="/package/css/style.css" />
</head>
<body>
    <form id="form1" runat="server">
    <div class="site-wrap">
        <header class="site-navbar" role="banner">
      <div class="site-navbar-top">
        <div class="container">
          <div class="row align-items-center">

            <div class="col-6 col-md-4 order-2 order-md-1 site-search-icon text-left">
              <%--<form action="" class="site-block-top-search">
                <span class="icon icon-search2"></span>
                <input type="text" class="form-control border-0" placeholder="Search">
              </form>--%>
            </div>

            <div class="col-12 mb-3 mb-md-0 col-md-4 order-1 order-md-2 text-center">
              <div class="site-logo">
                <a href="Login_new.aspx" class="js-logo-clone">Ecommerce Website</a>
              </div>
            </div>

            <%--<div class="col-6 col-md-4 order-3 order-md-3 text-right">
              <div class="site-top-icons">
                <ul>
                  <li><a href="#"><span class="icon icon-person"></span></a></li>
                  <li><a href="#"><span class="icon icon-heart-o"></span></a></li>
                  <li>
                    <a href="cart.html" class="site-cart">
                      <span class="icon icon-shopping_cart"></span>
                      <span class="count">2</span>
                    </a>
                  </li> 
                  <li class="d-inline-block d-md-none ml-md-0"><a href="#" class="site-menu-toggle js-menu-toggle"><span class="icon-menu"></span></a></li>
                </ul>
              </div> 
            </div>--%>

          </div>
        </div>
      </div> 
      
    </header>
        <div class="col-12 text-center">
            <asp:Login ID="LoginUser" runat="server" EnableViewState="false" RenderOuterTable="false" DestinationPageUrl="~/secured/home.aspx">
                <LayoutTemplate>
                    <span class="failureNotification">
                        <asp:Literal ID="FailureText" runat="server"></asp:Literal>
                    </span>
                    <div class="accountInfos">
                        <asp:ValidationSummary ID="LoginUserValidationSummary" runat="server" CssClass="failureNotification"
                            ValidationGroup="LoginUserValidationGroup" Width="290px" />
                        <fieldset class="login">
                            <legend class="h3 mb-3 text-black" >You can Login here....</legend>
                            <p >
                                <asp:Label ID="UserNameLabel"   runat="server" AssociatedControlID="UserName">Username:</asp:Label>
                                <asp:TextBox ID="UserName" runat="server" CssClass="textEntry"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="UserNameRequired" runat="server" ControlToValidate="UserName"
                                    CssClass="failureNotification" ErrorMessage="User Name is required." ToolTip="User Name is required."
                                    ValidationGroup="LoginUserValidationGroup">*</asp:RequiredFieldValidator>
                            </p>
                            <p >
                                <asp:Label ID="PasswordLabel" runat="server"   AssociatedControlID="Password">Password:</asp:Label>
                                <asp:TextBox ID="Password" runat="server" CssClass="passwordEntry" TextMode="Password"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="PasswordRequired" runat="server" ControlToValidate="Password"
                                    CssClass="failureNotification" ErrorMessage="Password is required." ToolTip="Password is required."
                                    ValidationGroup="LoginUserValidationGroup">*</asp:RequiredFieldValidator>
                            </p>
                            <p>
                                <asp:CheckBox ID="RememberMe" runat="server" />
                                <asp:Label ID="RememberMeLabel" runat="server" AssociatedControlID="RememberMe" CssClass="inline">Keep me logged in</asp:Label>
                            </p>
                        </fieldset>
                        <p class="submitButton">
                            <asp:Button ID="LoginButton"   class="btn btn-primary btn-lg" runat="server" CommandName="Login" Text="Log In" ValidationGroup="LoginUserValidationGroup" />
                             
                        </p>
                        <p class="h4 mb-3 text-black" >
            Are you a New User? Then click  
                    <a href="/Register.aspx">Register</a>         
                        </p>
       
                    </div>
                
                </LayoutTemplate>
            </asp:Login>
           
    
        
                    

        </div>
       
        
    </form>
            

    <script src="/package/js/jquery-3.3.1.min.js"></script>
    <script src="/package/js/jquery-ui.js"></script>
    <script src="/package/js/popper.min.js"></script>
    <script src="/package/js/bootstrap.min.js"></script>ss
    <script src="/package/js/owl.carousel.min.js"></script>
    <script src="/package/js/jquery.magnific-popup.min.js"></script>
    <script src="/package/js/aos.js"></script>
    <script src="/package/js/main.js"></script>
</body>
</html>
