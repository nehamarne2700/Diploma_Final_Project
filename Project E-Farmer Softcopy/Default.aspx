<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Buying And Selling</title>
    
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



    <script type="text/javascript">
        var buttonClicked = false;
        function DivClick() {
            if (!buttonClicked) {
                //--write code..
              //  alert("DivClick");
               // window.top.location = "http://www.yesmamu.com/TodaysLuck.aspx";
              
               // window.location.assign("http://www.yesmamu.com/TodaysLuck.aspx");
               // self.location = "http://www.yesmamu.com/TodaysLuck.aspx";
               window.location = "~/TodaysLuck.aspx";
                //Response.Redirect("~/TodaysLuck.aspx");
            }
            buttonClicked = false;
            return false;
        }
       
    </script>
  </head>
  <body>
   <form id="form1" runat="server">
    <div class="header-area">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="user-menu">
                        <h2>                        
                            <ul>
                           <li><b><a href="#"><i class="fa fa-user"></i>My Account</a></b></li> 
                             <li><a href="AdminLogin.aspx"><i class="fa fa-user"></i>Login</a></li> 
                             <li><b><a href="FarmerLogin.aspx"><i class="fa fa-user"></i>Farmer Login</a></b></li> 

                             <li><b><a href="ManufacturerLogin.aspx"><i class="fa fa-user"></i>Manufacturer Login</a></b></li> 
                             <%-- <li><b><a href="ImgProcessing.aspx"><i class="fa fa-user"></i>Image Processing</a></b></li> --%>
                                 <li><b><a href="FarmProduct.aspx"><i class="fa fa-user"></i>Farmer Product</a></b></li>
                        </ul>
                            </h2>

                        
                    </div>
                </div>
                
                <div class="col-md-4">
                    <div class="header-right">
                        <ul class="list-unstyled list-inline">
                            <li class="dropdown dropdown-small">
                                <ul class="dropdown-menu">
                                    <li><a href="#">USD</a></li>
                                    <li><a href="#">INR</a></li>
                                    <li><a href="#">GBP</a></li>
                                </ul>
                            </li>

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
                        <li class="active"><a href="Default.aspx">Home</a></li>
                        <li><a href="converter.aspx">Translation Page</a></li>
                        <li><a href="#">Others</a></li>
                        <li><a href="#">Contact</a></li>
                       
                    </ul>
                </div>  
            </div>
        </div>
    </div> <!-- End mainmenu area -->
    
    <div class="slider-area">
        <div class="zigzag-bottom"></div>
        <div id="slide-list" class="carousel carousel-fade slide" data-ride="carousel">
            
            <div class="slide-bulletz">
                <div class="container">
                    <div class="row">
                        <div class="col-md-12">
                            <ol class="carousel-indicators slide-indicators">
                                <li data-target="#slide-list" data-slide-to="0" class="active"></li>
                                <li data-target="#slide-list" data-slide-to="1"></li>
                                <li data-target="#slide-list" data-slide-to="2"></li>
                            </ol>                            
                        </div>
                    </div>
                </div>
            </div>
             
            <div class="carousel-inner" role="listbox">
                <div class="item active">
                   
                </div>
                <%--<div class="item">
                   <div class="single-slide">
                        <div class="slide-bg slide-two"></div>
                        <div class="slide-text-wrapper">
                            <div class="slide-text">
                                <div class="container">
                                    <div class="row">
                                        <div class="col-md-6 col-md-offset-6">
                                            <div class="slide-content">
                                                <h2>We are great</h2>
                                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Saepe aspernatur, dolorum harum molestias tempora deserunt voluptas possimus quos eveniet, vitae voluptatem accusantium atque deleniti inventore. Enim quam placeat expedita! Quibusdam!</p>
                                                <a href="" class="readmore">Learn more</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>--%>
               <%-- </div>
                <div class="item">
                   --%><%-- <div class="single-slide">
                        <div class="slide-bg slide-three"></div>
                        <div class="slide-text-wrapper">
                            <div class="slide-text">
                                <div class="container">
                                    <div class="row">
                                        <div class="col-md-6 col-md-offset-6">
                                            <div class="slide-content">
                                                <h2>We are superb</h2>
                                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolores, eius?</p>
                                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Deleniti voluptates necessitatibus dicta recusandae quae amet nobis sapiente explicabo voluptatibus rerum nihil quas saepe, tempore error odio quam obcaecati suscipit sequi.</p>
                                                <a href="" class="readmore">Learn more</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
             <%--       </div>--%>
              <%--  </div>
            </div>

        </div>        
    </div>--%> <!-- En--%>d slider area -->
    <%-- 
    <div class="promo-area" style="    margin-top: -77px;">
    <span style="background: none repeat scroll 0 0 #1abc9c;
    color: #fff;
    border: 1px solid #1abc9c;
    display: inline-block;
    font-size: 20px;
    margin-top: -38px;
    padding: 10px 20px;
    text-transform: uppercase;
    margin-left: 589px;"><b>Today's Luck</b></span>
        <div class="zigzag-bottom"></div>
        <div class="container">
            <div class="row">
                <div class="col-md-3 col-sm-6">
                    <div class="single-promo" runat="server">
                    
                        <asp:ImageButton ID="ImageButton1"  style="width: 297px; max-width: 100%;
    height: auto;" runat="server" ImageUrl="~/img/luck.jpg" 
                            PostBackUrl="~/TodaysLuck.aspx" />          
    

                         <p  style="    font-size: -webkit-xxx-large;">?</p>
                        </div>
                    
                </div>
                <div class="col-md-3 col-sm-6">
                    <div class="single-promo">
                  <asp:ImageButton ID="ImageButton2"  style="width: 297px; max-width: 100%;
    height: auto;" runat="server" ImageUrl="~/img/luck.jpg" 
                            PostBackUrl="~/TodaysLuck.aspx" />
                         <p  style="    font-size: -webkit-xxx-large;">?</p>
                    </div>
                </div>
                <div class="col-md-3 col-sm-6">
                    <div class="single-promo">
                  <asp:ImageButton ID="ImageButton3"  style="width: 297px; max-width: 100%;
    height: auto;" runat="server" ImageUrl="~/img/luck.jpg" 
                            PostBackUrl="~/TodaysLuck.aspx" />
                      <p  style="    font-size: -webkit-xxx-large;">?</p>
                    </div>
                </div>
                <div class="col-md-3 col-sm-6">
                    <div class="single-promo">
                   <asp:ImageButton ID="ImageButton4"  style="width: 297px; max-width: 100%;
    height: auto;" runat="server" ImageUrl="~/img/luck.jpg" PostBackUrl="~/TodaysLuck.aspx" />
                         <p  style="    font-size: -webkit-xxx-large;">?</p>
                    </div>
                </div>
            </div>
        </div>
    </div> <!-- End promo area -->
    --%>
    <div class="maincontent-area">
        <div class="zigzag-bottom"></div>
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="latest-product">
                        <h2 class="section-title">Latest Products</h2>
                     <div class="product-carousel">
                            <div class="single-product">
                              <asp:Label ID="Label1" runat="server" Text="" style="font-size: xx-large;
    margin-left: 65px;"></asp:Label>
                                <div class="product-f-image">
  
                                    <img src="img/product-1.jpg" alt="" />
                                    <div class="product-hover">
                                      
                                        <a href="seeds.aspx" class="view-details-link"><i class="fa fa-link"></i> See details</a>
                                    </div>
                                </div>
                                
                            </div>
                            <div class="single-product">
                             <asp:Label ID="Label2" runat="server" Text="" style="font-size: xx-large;
    margin-left: 50px;"></asp:Label>
                                <div class="product-f-image">
                                 <img src="img/product-2.jpg" alt="">
                                    <div class="product-hover">
                                    
                                        <a href="Fertillizer.aspx" class="view-details-link"><i class="fa fa-link"></i> See details</a>
                                    </div>
                                </div>
                                
                            </div>
                            <div class="single-product">
                             <asp:Label ID="Label3" runat="server" Text="" style="font-size: xx-large;
    margin-left: 50px;"></asp:Label>
                                <div class="product-f-image">
                                  <img src="img/product-3.jpg" alt="">
                                    <div class="product-hover">
                                       
                                        <a href="Pestisides.aspx" class="view-details-link"><i class="fa fa-link"></i> See details</a>
                                    </div>
                                </div>
                                
                            </div>
                           

                          <div class="single-product">
                             <asp:Label ID="Label5" runat="server" Text="" style="font-size: xx-large;
    margin-left: 50px;"></asp:Label>
                                <div class="product-f-image">                                  
                                    <img src="img/weather1.jpg" />
                                    <div class="product-hover">
                                       <a href="https://openweathermap.org/" class="view-details-link"><i class="fa fa-link"></i> See details</a>
                                       
                                    </div>
                                </div>
                                
                           
                           
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div> <!-- End main content area -->
    
    <div class="brands-area">
        <div class="zigzag-bottom"></div>
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="brand-wrapper">
                        <h2 class="section-title">Brands</h2>
                        <div class="brand-list">
                            <img src="img/Brand1.png" alt=""/>
                            <img src="img/Brand2.jpg"  alt=""/>
                            <img src="img/Brand3.jpg"  alt=""/>
                            <img src="img/Brand4.jpg" alt="" />  
                            <img src="img/Brand5.jpg" alt="" />
                            <img src="img/Brand1.png" alt=""/>
                            <img src="img/Brand2.jpg"  alt=""/>
                            <img src="img/Brand3.jpg"  alt=""/>
                            <img src="img/Brand4.jpg" alt="" />  
                            <img src="img/Brand5.jpg" alt="" />               
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div> <!-- End brands area -->
    
    <div class="product-widget-area">
        <div class="zigzag-bottom"></div>
        <div class="container">
            <div class="row">
                <div class="col-md-4">
                    <div class="single-product-widget">
                        <h2 class="product-wid-title">Top Sellers</h2>
                        <a href="" class="wid-view-more">View All</a>
                        <div class="single-wid-product">
                            <a href="#"><img src="img/TopSeller1.jpg" alt="" class="product-thumb"/></a>
                            <h2><a href="#">SV AGRO Grape Seed ExtractPack Size 25 kg</a></h2>
                            <div class="product-wid-rating">
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                            </div>
                            <div class="product-wid-price">
                                <ins>Rs.700.00</ins> <del>Rs.725.00</del>
                            </div>                            
                        </div>
                        <div class="single-wid-product">
                            <a href="#"><img src="img/TopSeller2.jpg" alt="" class="product-thumb"/></a>
                            <h2><a href="#">Universal Biocon Bio Bassiana</a></h2>
                            <div class="product-wid-rating">
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                            </div>
                            <div class="product-wid-price">
                                <ins>Rs.380.00</ins> <del>Rs.425.00</del>
                            </div>                            
                        </div>
                        <div class="single-wid-product">
                            <a href="#"><img src="img/TopSeller3.jpg" alt="" class="product-thumb"/></a>
                            <h2><a href="#">Sikko Tone Micro Nutrient Fertilizer</a></h2>
                            <div class="product-wid-rating">
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                            </div>
                            <div class="product-wid-price">
                                <ins>Rs.180</ins> <del>Rs.225.00</del>
                            </div>                            
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="single-product-widget">
                        <h2 class="product-wid-title">Recently Viewed</h2>
                        <a href="#" class="wid-view-more">View All</a>
                        <div class="single-wid-product">
                            <a href="#"><img src="img/RecentlyViewed1.jpg" alt="" class="product-thumb"/></a>
                            <h2><a href="#">Powder Mono Potassium Phosphate</a></h2>
                            <div class="product-wid-rating">
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                            </div>
                            <div class="product-wid-price">
                                <ins>Rs.130.00</ins> <del>Rs.150.00</del>
                            </div>                            
                        </div>
                        <div class="single-wid-product">
                            <a href="#"><img src="img/RecentlyViewed2.jpg" alt="" class="product-thumb"/></a>
                            <h2><a href="#">Bio Insecticides Uneem 10000 Plus</a></h2>
                            <div class="product-wid-rating">
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                            </div>
                            <div class="product-wid-price">
                                <ins>Rs.920.00</ins> <del>Rs.925.00</del>
                            </div>                            
                        </div>
                        <div class="single-wid-product">
                            <a href="#"><img src="img/RecentlyViewed3.jpg" alt="" class="product-thumb"/></a>
                            <h2><a href="#">Rijk Zwaan Pareso Tomato Seeds</a></h2>
                            <div class="product-wid-rating">
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                            </div>
                            <div class="product-wid-price">
                                <ins>Rs.8800.00</ins> <del>Rs.8900.00</del>
                            </div>                            
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="single-product-widget">
                        <h2 class="product-wid-title">Top New</h2>
                        <a href="#" class="wid-view-more">View All</a>
                        <div class="single-wid-product">
                            <a href="#"><img src="img/TopNew1.png" alt="" class="product-thumb"/></a>
                            <h2><a href="#">Water Soluble NPK 13:00:45</a></h2>
                            <div class="product-wid-rating">
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                            </div>
                            <div class="product-wid-price">
                                <ins>Rs.220.00</ins> <del>Rs.250.00</del>
                            </div>                            
                        </div>
                        <div class="single-wid-product">
                            <a href="#"><img src="img/TopNew2.jpg" alt="" class="product-thumb"/></a>
                            <h2><a href="#">Prominent Dry Neem Seed</a></h2>
                            <div class="product-wid-rating">
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                            </div>
                            <div class="product-wid-price">
                                <ins>Rs.10000.00</ins> <del>Rs.10200.00</del>
                            </div>                            
                        </div>
                        <div class="single-wid-product">
                            <a href="#"><img src="img/TopNew3.jpg" alt="" class="product-thumb"/></a>
                            <h2><a href="#">mono-acid-calcium-phosphate</a></h2>
                            <div class="product-wid-rating">
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                            </div>
                            <div class="product-wid-price">
                                <ins>Rs.120.00</ins> <del>Rs.150.00</del>
                            </div>                            
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div> <!-- End product widget area -->
    
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
                            <li><a href="#">My account</a></li>
                            <li><a href="#">Order history</a></li>
                            <li><a href="#">Wishlist</a></li>
                            <li><a href="#">Vendor contact</a></li>
                            <li><a href="#">Front page</a></li>
                        </ul>                        
                    </div>
                </div>
                
                <div class="col-md-3 col-sm-6">
                    <div class="footer-menu">
                        <h2 class="footer-wid-title">Categories</h2>
                        <ul>
                            <li><a href="#">Seeds</a></li>
                            <li><a href="#">Fertilizers</a></li>
                            <li><a href="#">Pesticides</a></li>
                           
                        </ul>                        
                    </div>
                </div>
                <%-- 
                <div class="col-md-3 col-sm-6">
                    <div class="footer-newsletter">
                        <h2 class="footer-wid-title">Newsletter</h2>
                        <p>Sign up to our newsletter and get exclusive deals you wont find anywhere else straight to your inbox!</p>
                        <div class="newsletter-form">
                            <form action="#">
                                <input type="email" placeholder="Type your email"/>
                                <input type="submit" value="Subscribe"/>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div> <!-- End footer top area -->
    --%>
    <div class="footer-bottom-area">
        <div class="container">
            <div class="row">
                <div class="col-md-8">
                    <div class="copyright">
                        <p>&copy; 2019 eFarming.  All Rights Reserved. Coded by Pratiksha,Pooja,Neha,Siddhi
                    </div>
                </div>
                <%-- 
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
   --%>
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