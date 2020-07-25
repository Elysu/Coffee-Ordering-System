<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="menu.aspx.cs" Inherits="Order.menu" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="tm-section row">
          <div class="col-lg-12 tm-section-header-container margin-bottom-30">
            <h2 class="tm-section-header gold-text tm-handwriting-font"><img src="img/logo.png" alt="Logo" class="tm-site-logo"> Our Menus</h2>
            <div class="tm-hr-container"><hr class="tm-hr"></div>
          </div>
          <div>
            <div class="col-lg-3 col-md-3">
              <div class="tm-position-relative margin-bottom-30">              
                <nav class="tm-side-menu">
                  <ul>
                    <li><a id="btnAmericano" runat="server" class="active" onserverclick="clickAmericano">Americano</a></li>
                    <li><a id="btnCappuccino" runat="server" onserverclick="clickCappuccino">Cappuccino</a></li>
                    <li><a id="btnLatte" runat="server" onserverclick="clickLatte">Latte</a></li>
                  </ul>  
                </nav>
                <img src="img/vertical-menu-bg-3.png" alt="Menu bg" class="tm-side-menu-bg" width="242px">
              </div>
            </div>
            <div id="menuContent" runat="server" class="tm-menu-product-content col-lg-9 col-md-9"> <!-- menu content -->
              <div class="tm-product">
                <img src="images/americano/americano.jpg" alt="Product" width="136px" height="136px">
                <div class="tm-product-text">
                  <h3 class="tm-product-title">Classic Americano</h3>
                  <p class="tm-product-description">Espresso shots topped with hot water create a light layer of crema culminating in this wonderfully rich cup with depth and nuance.</p>
                </div>
                <div class="tm-product-price">
                  <a href="#" class="tm-product-price-link tm-handwriting-font">$5</a>
                </div>
              </div>
            </div>
          </div>          
     </section>
</asp:Content>
