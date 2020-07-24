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
                    <li><a href="#" class="active">Affogato</a></li>
                    <li><a href="#">Caffè Americano</a></li>
                    <li><a href="#">Caffè latte</a></li>
                    <li><a href="#">Coffee milk</a></li>
                    <li><a href="#">Café mocha</a></li>
                    <li><a href="#">Cappuccino</a></li>
                    <li><a href="#">Espresso</a></li>
                    <li><a href="#">Iced coffee</a></li>
                    <li><a href="#">Instant coffee</a></li>
                    <li><a href="#">Mocha</a></li>
                    <li><a href="#">black coffee</a></li>
                  </ul>              
                </nav>    
                <img src="img/vertical-menu-bg.png" alt="Menu bg" class="tm-side-menu-bg">
              </div>  
            </div>            
            <div class="tm-menu-product-content col-lg-9 col-md-9"> <!-- menu content -->
              <div class="tm-product">
                <img src="img/menu-1.jpg" alt="Product">
                <div class="tm-product-text">
                  <h3 class="tm-product-title">Americano 1</h3>
                  <p class="tm-product-description">Maecenas tempus, tellus eget condimentum rhoncus, sem quam semper libero, sit amet adipiscing sem neque. Red ipsum.</p>
                </div>
                <div class="tm-product-price">
                  <a href="#" class="tm-product-price-link tm-handwriting-font"><span class="tm-product-price-currency">$</span>30</a>
                </div>
              </div>
              <div class="tm-product">
                <img src="img/menu-2.jpg" alt="Product">
                <div class="tm-product-text">
                  <h3 class="tm-product-title">Americano 2</h3>
                  <p class="tm-product-description">Maecenas tempus, tellus eget condimentum rhoncus, sem quam semper libero, sit amet adipiscing sem neque. Red ipsum.</p>
                </div>
                <div class="tm-product-price">
                  <a href="#" class="tm-product-price-link tm-handwriting-font"><span class="tm-product-price-currency">$</span>20</a>
                </div>
              </div>
              <div class="tm-product">
                <img src="img/menu-3.jpg" alt="Product">
                <div class="tm-product-text">
                  <h3 class="tm-product-title">Americano 3</h3>
                  <p class="tm-product-description">Maecenas tempus, tellus eget condimentum rhoncus, sem quam semper libero, sit amet adipiscing sem neque. Red ipsum.</p>
                </div>
                <div class="tm-product-price">
                  <a href="#" class="tm-product-price-link tm-handwriting-font"><span class="tm-product-price-currency">$</span>15</a>
                </div>
              </div>
              <div class="tm-product">
                <img src="img/menu-4.jpg" alt="Product">
                <div class="tm-product-text">
                  <h3 class="tm-product-title">Americano 4</h3>
                  <p class="tm-product-description">Maecenas tempus, tellus eget condimentum rhoncus, sem quam semper libero, sit amet adipiscing sem neque. Red ipsum.</p>
                </div>
                <div class="tm-product-price">
                  <a href="#" class="tm-product-price-link tm-handwriting-font"><span class="tm-product-price-currency">$</span>25</a>
                </div>
              </div>
              <div class="tm-product">
                <img src="img/menu-5.jpg" alt="Product">
                <div class="tm-product-text">
                  <h3 class="tm-product-title">Americano 5</h3>
                  <p class="tm-product-description">Maecenas tempus, tellus eget condimentum rhoncus, sem quam semper libero, sit amet adipiscing sem neque. Red ipsum.</p>
                </div>
                <div class="tm-product-price">
                  <a href="#" class="tm-product-price-link tm-handwriting-font"><span class="tm-product-price-currency">$</span>45</a>
                </div>
              </div>
            </div>
          </div>          
        </section>
</asp:Content>
