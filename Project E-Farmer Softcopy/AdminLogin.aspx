<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AdminLogin.aspx.cs" Inherits="AdminLogin" validateRequest="false" enableEventValidation="false" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>AdminLogin</title>
    <!-- Meta tags -->
		<meta name="viewport" content="width=device-width, initial-scale=1" />
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<meta name="keywords" content="Jolly Login Form Responsive Widget, Audio and Video players, Login Form Web Template, Flat Pricing Tables, Flat Drop-Downs, Sign-Up Web Templates, Flat Web Templates, Login Sign-up Responsive Web Template, Smartphone Compatible Web Template, Free Web Designs for Nokia, Samsung, LG, Sony Ericsson, Motorola Web Design" />
		<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
	<!-- Meta tags -->


<!-- font-awesome icons -->
   <link rel="stylesheet" href="css/font-awesome.min.css" />

<!-- //font-awesome icons -->
<!--stylesheets-->
<link href="css/style.css" rel='stylesheet' type='text/css' media="all">
<!--//style sheet end here-->

<link href="//fonts.googleapis.com/css?family=Poiret+One" rel="stylesheet">

</head>
<body>
   <h1>Admin Login Form</h1>

<div class="main-w3" >
   <form action="#" method="post" runat="server">
        <h2><span class="fa fa-user t-w3" aria-hidden="true"></span></h2>
     <div class="login-w3ls">
         <div class="icons">
             
		     <input type="text" id="name" name="name" placeholder="UserName" runat="server" required="" 
                 style="width: 195px; width: 348px;
    font-family: 'Poiret One', cursive;
    outline: none;
    letter-spacing: 1px;
    font-size: 17px;
    font-weight: 700;
    background: rgba(255, 255, 255, 0.81);/">
			 <span class="fa fa-user" aria-hidden="true"></span>
          <div class="clear"></div> 
		</div> 		   
		 <div class="icons">
				
				<input type="password" id="pass" name="pass" placeholder="Password" runat="server" required=""/>
				<span class="fa fa-key" aria-hidden="true"></span>
		         <div class="clear"></div>
		</div>
	     <div class="btnn">
         <input type="checkbox" class="checked"><span class="span">Remember me..?</span><br>
             <asp:Button ID="Button1" runat="server" Text="Login" style="width: 100%;
    background: rgb(51, 232, 255);
    outline: none;
    color: #000;
    margin: 31px 0px;
    font-size: 18px;
    font-weight: 700;
    border: 1px solid #33e8ff;
    padding: 11px 11px;
    letter-spacing: 1px;
    text-transform: uppercase;
    border-radius: 20px;
    cursor: pointer;" onclick="Button1_Click" />
	          <br>
       	      
        </div>	
     </div>
   </form>

 </div> 
</body>
</html>
