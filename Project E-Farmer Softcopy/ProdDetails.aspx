<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ProdDetails.aspx.cs" Inherits="ProdDetails" validateRequest="false" enableEventValidation="false" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>ProductDetails</title>
    
    <!-- Google Fonts -->
    <link href='http://fonts.googleapis.com/css?family=Titillium+Web:400,200,300,700,600' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Roboto+Condensed:400,700,300' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Raleway:400,100' rel='stylesheet' type='text/css'>
    
    <!-- Bootstrap -->
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
    
    <!-- Font Awesome -->
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">
    
    <!-- Custom CSS -->
    <link rel="stylesheet" href="css/owl.carousel.css">
    <link rel="stylesheet" href="style.css">
    <link rel="stylesheet" href="css/responsive.css">

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
     <script type="text/javascript" src="http://code.jquery.com/jquery-1.8.2.js"></script>
<script src="js/jquery.elevatezoom.min.js" type="text/javascript"></script>



<script type="text/javascript">
    //var x = document.getElementById('filename').value;

    function ShowLabelContent() {
        var x = document.getElementById('Label7').innerText;
      //  alert(x);
        document.getElementById("myid").setAttribute("max", x);

    }


    onload = ShowLabelContent;
          
        

        
    </script>
  </head>

  <body>
   <form id="form1" runat="server">
    <div class="header-area">
        <div class="container">
            <div class="row">
                <div class="col-md-8">
                    <div class="user-menu">
                        <ul>
                            <li><a href="#"><i class="fa fa-user"></i> My Account</a></li>
                            <li><a href="#"><i class="fa fa-heart"></i> Wishlist</a></li>
                            <li><a href="#"><i class="fa fa-user"></i> My Cart</a></li>
                            <li><a href="#"><i class="fa fa-user"></i> Checkout</a></li>
                           
                        </ul>
                    </div>
                </div>
                
               
            </div>
        </div>
    </div> <!-- End header area -->
   
    <div class="site-branding-area">
        <div class="container">
            <div class="row">
                <div class="col-sm-6">
                    <div class="logo">
                        <h1><a href="Default.aspx">e<span>Farmer</span></a></h1>
                    </div>
                </div>
                
               
            </div>
        </div>
    </div> <!-- End site branding area -->
    
    <div class="mainmenu-area">
        <div class="container">
            <div class="row">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                </div> 
                <div class="navbar-collapse collapse">
                    <ul class="nav navbar-nav">
                        <li><a href="Default.aspx">Home</a></li>
                        <li><a href="#">Others</a></li>
                        <li><a href="#">Contact</a></li>
                    </ul>
                     <div class="col-sm-6" style="margin-left: 584px;">
                    <div class="shopping-item" style="margin-top: -53px;
    margin-left: -65px; background-color: white;">
                     <a href="#">Cart <i class="fa fa-shopping-cart"></i> 
                         <asp:Label ID="Label4" CssClass="product-count" runat="server" Text="" 
                          ></asp:Label></a>
                </div>
                </div>
                </div>  
            </div>
        </div>
    </div> <!-- End mainmenu area -->
    
    <div class="product-big-title-area">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="product-bit-title text-center">
                        <h2>Shop</h2>
                    </div>
                </div>
            </div>
        </div>
    </div>
    
    
    <div class="single-product-area">
        <div class="zigzag-bottom"></div>
        <div class="container">
            <div class="row">
                <div class="col-md-4">
                    <div class="single-sidebar">
                        <h2 class="sidebar-title">Search Products</h2>
                        <form action="">
                            <input type="text" placeholder="Search products...">
                            <input type="submit" value="Search">
                        </form>
                    </div>
                    
                    <div class="single-sidebar">
                        <h2 class="sidebar-title">Products</h2>
                        <div class="thubmnail-recent">
                            <img src="img/RecentlyViewed1.jpg" class="recent-thumb" alt="">
                            <h2><a href="">Powder Mono Potassium Phosphate</a></h2>
                            <div class="product-sidebar-price">
                                <ins>Rs.130.00</ins> <del>Rs.150.00</del>
                            </div>                             
                        </div>
                        <div class="thubmnail-recent">
                            <img src="img/RecentlyViewed2.jpg" class="recent-thumb" alt="">
                            <h2><a href="">Bio Insecticides Uneem 10000 Plus</a></h2>
                            <div class="product-sidebar-price">
                                <ins>Rs.920.00</ins> <del>Rs.925.00</del>
                            </div>                             
                        </div>
                        <div class="thubmnail-recent">
                            <img src="img/RecentlyViewed3.jpg" class="recent-thumb" alt="">
                            <h2><a href="">Rijk Zwaan Pareso Tomato Seeds</a></h2>
                            <div class="product-sidebar-price">
                                <ins>Rs.8800.00</ins> <del>Rs.8900.00</del>
                            </div>                             
                        </div>
                        <div class="thubmnail-recent">
                            <img src="img/TopNew1.png" class="recent-thumb" alt="">
                            <h2><a href="">Water Soluble NPK 13:00:45</a></h2>
                            <div class="product-sidebar-price">
                                <ins>Rs.220.00</ins> <del>Rs.250.00</del>
                            </div>                             
                        </div>
                    </div>
                    
                    <div class="single-sidebar">
                        <h2 class="sidebar-title">Recent Posts</h2>
                        <ul>
                            <li><a href=""> Powder Mono Potassium Phosphate</a></li>
                            <li><a href="">Bio Insecticides Uneem 10000 Plus</a></li>
                            <li><a href="">Rijk Zwaan Pareso Tomato Seeds</a></li>
                            <li><a href="">Water Soluble NPK 13:00:45</a></li>
                            <li><a href="">SV AGRO Grape Seed ExtractPack Size 25 kg</a></li>
                        </ul>
                    </div>
                </div>
                
                <div class="col-md-8">
                    <div class="product-content-right">
                        
                        <div class="row">
                            <div class="col-sm-6">
                                <div class="product-images">
                                      <br />
    <br />
    <div class="maincontent-area">
    
       <div  runat="server" id="ImagesDiv" 
            style="margin-left: 144px;
    width: 354px;
    background-color: #FFFFFF;">
      
           <asp:Image ID="Image1" runat="server" style="height: 259px;
    margin-left: -139px;"  />
         
  
      </div> 
     
      <script type="text/javascript">




          $("#Image1").elevateZoom({
              zoomType: "lens",
              lensShape: "round",
              lensSize: 300
          });
</script>

   
    </div> <!-- End main content area -->
   
                                    
                                    <div class="product-gallery">
                                        <img src="img/TopSeller2.jpg" alt=""/>
                                        <img src="img/TopSeller3.jpg" alt="">
                                        <img src="img/RecentlyViewed1.jpg" alt="">
                                        <img src="img/RecentlyViewed2.jpg" alt="">
                                    </div>
                                </div>
                            </div>
                            
                           <div class="col-md-6">
                                <div class="product-inner">
                                   <asp:Label ID="Label1" runat="server" Text="Label" style="font-size: 25px;
    margin-bottom: 20px; font-weight: 700;
    margin: 0 0 15px;"></asp:Label> <hr style=" 
 border: 0;
    border-top: 1px solid #eee;
    width: 547px;
    margin-top: 23px;
    margin-left: -7px;"/>
                                   <asp:Label ID="Label2" runat="server" Text="Label" style="font-size: 23px;
    color: #ff2341;
    text-overflow: ellipsis;
    display: -webkit-box;
    -webkit-line-clamp: 2;
    line-height: 27px;
    -webkit-box-orient: vertical;
    overflow: hidden;
    "></asp:Label>
     <asp:Label ID="Label3" runat="server" Text="Available Stock:" style="font-size: 23px;
    color: #0e0e0e;
    text-overflow: ellipsis;
    display: -webkit-box;
    -webkit-line-clamp: 2;
    line-height: 27px;
    -webkit-box-orient: vertical;
    overflow: hidden;
    margin-top: -27px;
    margin-left: 147px;"></asp:Label>
                                    <asp:Label ID="Label7" runat="server" Text="Label" style="font-size: 23px;
    color: #0e0e0e;
    text-overflow: ellipsis;
    display: -webkit-box;
    -webkit-line-clamp: 2;
    line-height: 27px;
    -webkit-box-orient: vertical;
    overflow: hidden;
    margin-top: -27px;
    margin-left: 300px;"></asp:Label>
    <br />  
                                 
                                        <div class="quantity">
                                      
                                           
                                              <input id="myid" name="myid" type="number" size="4"  class="input-text qty text" title="Qty"  value="1" step="1"/>
                                          
                                        </div>
                                        <asp:Button ID="Button1" runat="server" Text="ADD TO CART" onclick="Button1_Click" 
         />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Button2" runat="server" Text="BUY NOW" />
                                   
                                    
                                    <div class="product-inner-category">

                                        <p style="margin-top: 12px;">Category:         <asp:Label ID="Label5" runat="server" Text="Label" ForeColor="#00CC99"></asp:Label> </p>
                                    </div> 
                                    
                                    <div role="tabpanel">
                                        <ul class="product-tab" role="tablist">
                                            <li role="presentation" class="active"><a href="#home" aria-controls="home" role="tab" data-toggle="tab">Description</a></li>
                                            <li role="presentation"><a href="#profile" aria-controls="profile" role="tab" data-toggle="tab">Reviews</a></li>
                                        </ul>
                                        <div class="tab-content">
                                            <div role="tabpanel" class="tab-pane fade in active" id="home">
                                                <h2>Product Description</h2>  
                                               
                                            <asp:Label ID="Label6" runat="server" Text="Label"></asp:Label>

                                            </div>
                                            <div role="tabpanel" class="tab-pane fade" id="profile">
                                                <h2>Reviews</h2>
                                                <div class="submit-review">
                                                    <p><label for="name">Name</label> <input name="name" type="text"></p>
                                                    <p><label for="email">Email</label> <input name="email" type="email"></p>
                                                    <div class="rating-chooser">
                                                        <p>Your rating</p>

                                                        <div class="rating-wrap-post">
                                                            <i class="fa fa-star"></i>
                                                            <i class="fa fa-star"></i>
                                                            <i class="fa fa-star"></i>
                                                            <i class="fa fa-star"></i>
                                                            <i class="fa fa-star"></i>
                                                        </div>
                                                    </div>
                                                    <p><label for="review">Your review</label> <textarea name="review" id="" cols="30" rows="10"></textarea></p>
                                                    <p><input type="submit" value="Submit"></p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    
                                </div>
                            </div>
                        </div>
                        
                        
                        <div class="related-products-wrapper">
                            <h2 class="related-products-title">Related Products</h2>
                            <div class="related-products-carousel">
                                <div class="single-product">
                                    <div class="product-f-image">
                                        <img src="img/TopSeller1.jpg" alt="">
                                        <div class="product-hover">
                                            <a href="" class="add-to-cart-link"><i class="fa fa-shopping-cart"></i> Add to cart</a>
                                            <a href="" class="view-details-link"><i class="fa fa-link"></i> See details</a>
                                        </div>
                                    </div>

                                    <h2><a href="">SV AGRO Grape Seed ExtractPack Size 25 kg</a></h2>

                                    <div class="product-carousel-price">
                                        <ins>Rs.700.00</ins> <del>Rs.725.00</del>
                                    </div> 
                                </div>
                                <div class="single-product">
                                    <div class="product-f-image">
                                        <img src="img/TopSeller2.jpg" alt="">
                                        <div class="product-hover">
                                            <a href="" class="add-to-cart-link"><i class="fa fa-shopping-cart"></i> Add to cart</a>
                                            <a href="" class="view-details-link"><i class="fa fa-link"></i> See details</a>
                                        </div>
                                    </div>

                                    <h2><a href="">Universal Biocon Bio Bassiana</a></h2>
                                    <div class="product-carousel-price">
                                        <ins>Rs.380.00</ins> <del>Rs.425.00</del>
                                    </div> 
                                </div>
                                <div class="single-product">
                                    <div class="product-f-image">
                                        <img src="img/TopSeller3.jpg" alt="">
                                        <div class="product-hover">
                                            <a href="" class="add-to-cart-link"><i class="fa fa-shopping-cart"></i> Add to cart</a>
                                            <a href="" class="view-details-link"><i class="fa fa-link"></i> See details</a>
                                        </div>
                                    </div>

                                    <h2><a href="">Sikko Tone Micro Nutrient Fertilizer</a></h2>

                                    <div class="product-carousel-price">
                                        <ins>Rs.180.00</ins> <del>Rs.225.00</del>
                                    </div>                                 
                                </div>
                                <div class="single-product">
                                    <div class="product-f-image">
                                        <img src="img/RecentlyViewed1.jpg" alt="">
                                        <div class="product-hover">
                                            <a href="" class="add-to-cart-link"><i class="fa fa-shopping-cart"></i> Add to cart</a>
                                            <a href="" class="view-details-link"><i class="fa fa-link"></i> See details</a>
                                        </div>
                                    </div>

                                    <h2><a href="">Powder Mono Potassium Phosphate</a></h2>

                                    <div class="product-carousel-price">
                                        <ins>Rs.130.00</ins> <del>Rs.150.00</del>
                                    </div>                            
                                </div>
                                <div class="single-product">
                                    <div class="product-f-image">
                                        <img src="img/RecentlyViewed2.jpg" alt="">
                                        <div class="product-hover">
                                            <a href="" class="add-to-cart-link"><i class="fa fa-shopping-cart"></i> Add to cart</a>
                                            <a href="" class="view-details-link"><i class="fa fa-link"></i> See details</a>
                                        </div>
                                    </div>

                                    <h2><a href="">Bio Insecticides Uneem 10000 Plus</a></h2>

                                    <div class="product-carousel-price">
                                        <ins>Rs.920.00</ins> <del>Rs.925.00</del>
                                    </div>                                 
                                </div>
                                <div class="single-product">
                                    <div class="product-f-image">
                                        <img src="img/RecentlyViewed3.jpg" alt="">
                                        <div class="product-hover">
                                            <a href="" class="add-to-cart-link"><i class="fa fa-shopping-cart"></i> Add to cart</a>
                                            <a href="" class="view-details-link"><i class="fa fa-link"></i> See details</a>
                                        </div>
                                    </div>

                                    <h2><a href="">Rijk Zwaan Pareso Tomato Seeds</a></h2>

                                    <div class="product-carousel-price">
                                        <ins>Rs.8800.00</ins><del>Rs.8900.00</del>
                                    </div>                            
                                </div>                                    
                            </div>
                        </div>
                    </div>                    
                </div>
            </div>
        </div>
    </div>


    <div class="footer-top-area">
        <div class="zigzag-bottom"></div>
        <div class="container">
            <div class="row">
                <div class="col-md-3 col-sm-6">
                    <div class="footer-about-us">
                        <h2>e<span>Farmer</span></h2>
                         <div class="footer-social">
                            <a href="#" target="_blank"><i class="fa fa-facebook"></i></a>
                            <a href="#" target="_blank"><i class="fa fa-twitter"></i></a>
                            <a href="#" target="_blank"><i class="fa fa-youtube"></i></a>
                            <a href="#" target="_blank"><i class="fa fa-linkedin"></i></a>
                            <a href="#" target="_blank"><i class="fa fa-pinterest"></i></a>
                        </div>
                    </div>
                </div>
                
                <div class="col-md-3 col-sm-6">
                    <div class="footer-menu">
                        <h2 class="footer-wid-title">User Navigation </h2>
                        <ul>
                            <li><a href="">My account</a></li>
                            <li><a href="">Order history</a></li>
                            <li><a href="">Wishlist</a></li>
                            <li><a href="">Vendor contact</a></li>
                            <li><a href="">Front page</a></li>
                        </ul>                        
                    </div>
                </div>
                
                <div class="col-md-3 col-sm-6">
                    <div class="footer-menu">
                        <h2 class="footer-wid-title">Categories</h2>
                        <ul>
                            <li><a href="">Mobile Phone</a></li>
                            <li><a href="">Home accesseries</a></li>
                            <li><a href="">LED TV</a></li>
                            <li><a href="">Computer</a></li>
                            <li><a href="">Gadets</a></li>
                        </ul>                        
                    </div>
                </div>
                
                <div class="col-md-3 col-sm-6">
                    <div class="footer-newsletter">
                        <h2 class="footer-wid-title">Newsletter</h2>
                        <p>Sign up to our newsletter and get exclusive deals you wont find anywhere else straight to your inbox!</p>
                        <div class="newsletter-form">
                            <input type="email" placeholder="Type your email">
                            <input type="submit" value="Subscribe">
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
      <div class="footer-bottom-area">
        <div class="container">
            <div class="row">
                <div class="col-md-8">
                    <div class="copyright">
                        <p>&copy; 2019 eFarming.  All Rights Reserved. Coded by Pratiksha,Pooja,Neha,Siddhi
                    </div>
                </div>
                
                <div class="col-md-4">
                    <div class="footer-card-icon">
                        <i class="fa fa-cc-discover"></i>
                        <i class="fa fa-cc-mastercard"></i>
                        <i class="fa fa-cc-paypal"></i>
                        <i class="fa fa-cc-visa"></i>
                    </div>
                </div>
            </div>
        </div>
    </div> <!-- End footer bottom area -->
   
    <!-- Latest jQuery form server -->
    <script src="https://code.jquery.com/jquery.min.js"></script>
    
    <!-- Bootstrap JS form CDN -->
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
    
    <!-- jQuery sticky menu -->
    <script src="js/owl.carousel.min.js"></script>
    <script src="js/jquery.sticky.js"></script>
    
    <!-- jQuery easing -->
    <script src="js/jquery.easing.1.3.min.js"></script>
    
    <!-- Main Script -->
    <script src="js/main.js"></script>
    </form>
  </body>
</html>