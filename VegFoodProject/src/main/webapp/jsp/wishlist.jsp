<!DOCTYPE html>
<%@page import="com.example.VegFoodProject.bean.Registration"%>
<%@page import="com.example.VegFoodProject.bean.Wishlist"%>
<%@page import="java.util.List"%>
<html lang="en">
  <head>
    <title>Vegefoods - Free Bootstrap 4 Template by Colorlib</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    
    <link href="https://fonts.googleapis.com/css?family=Poppins:200,300,400,500,600,700,800&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Lora:400,400i,700,700i&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Amatic+SC:400,700&display=swap" rel="stylesheet">

    <link rel="stylesheet" href="css/open-iconic-bootstrap.min.css">
    <link rel="stylesheet" href="css/animate.css">
    
    <link rel="stylesheet" href="css/owl.carousel.min.css">
    <link rel="stylesheet" href="css/owl.theme.default.min.css">
    <link rel="stylesheet" href="css/magnific-popup.css">

    <link rel="stylesheet" href="css/aos.css">

    <link rel="stylesheet" href="css/ionicons.min.css">

    <link rel="stylesheet" href="css/bootstrap-datepicker.css">
    <link rel="stylesheet" href="css/jquery.timepicker.css">

    
    <link rel="stylesheet" href="css/flaticon.css">
    <link rel="stylesheet" href="css/icomoon.css">
    <link rel="stylesheet" href="css/style.css">
    
    <link rel="stylesheet" type="text/css" href="css/util.css">
    
    
     <style>
     .ftco-section {
    padding: 1em 0;
    position: relative;
}
         
    .img-responsive {
    height: auto;
    width: auto;
    max-height: 72px;
    max-width: 250px;
    vertical-align: top;
	}
	
     
     .table tbody tr td  {
      
      padding: 4px 10px;
      font-size: 15px;
      color: #000000; }
      .product-remove a{
      padding: 6px 28px;
      }
      .table tbody tr td.product-remove a:hover {
        border: 1px solid #82ae46;
        background: #82ae46; }
    .table tbody tr td.product-delete a {
      border:none;
      padding: 4px 10px;
      color: #776868;
      font-size: 30px; }
      .table tbody tr td.product-delete a:hover {
        border:none;
        background: transparent; }
        .table tbody tr td.product-delete a:hover span {
                   color: #d40a0a;
                   border:none; }
                   
         .wrap-num-product {
  		width: 140px;
  		height: 30px;
  		border: 1px solid #e6e6e6;
  		border-radius: 3px;
  		overflow: hidden;
		}

		.btn-num-product-up,
		.btn-num-product-down {
 		 width: 45px;
  		height: 100%;
  		cursor: pointer;
		}

		.num-product {
 		 width: calc(100% - 90px);
  		height: 100%;
  		border-left: 1px solid #e6e6e6;
 		 border-right: 1px solid #e6e6e6;
  		background-color: #f7f7f7;
		}

		input.num-product {
 		-moz-appearance: textfield;
  		appearance: none;
  		-webkit-appearance: none;
		}

		input.num-product::-webkit-outer-spin-button,
		input.num-product::-webkit-inner-spin-button {
  		-webkit-appearance: none;
  		margin: 0; 
		}
       
    </style>
  </head>
 <body class="goto-here">
		<div class="py-1 bg-primary">
    	<div class="container">
    		<div class="row no-gutters d-flex align-items-start align-items-center px-md-0">
	    		<div class="col-lg-12 d-block">
		    		<div class="row d-flex">
		    			<div class="col-md pr-4 d-flex topper align-items-center">
					    	<div class="icon mr-2 d-flex justify-content-center align-items-center"><span class="icon-phone2"></span></div>
						    <span class="text">+ 1235 2355 98</span>
					    </div>
					    <div class="col-md pr-4 d-flex topper align-items-center">
					    	<div class="icon mr-2 d-flex justify-content-center align-items-center"><span class="icon-paper-plane"></span></div>
						    <span class="text">youremail@email.com</span>
					    </div>
					    <div class="col-md-5 pr-4 d-flex topper align-items-center text-lg-right">
						    <span class="text">3-5 Business days delivery &amp; Free Returns</span>
					    </div>
				    </div>
			    </div>
		    </div>
		  </div>
    </div>
    <nav class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light" id="ftco-navbar">
	    <div class="container">
	      <a class="navbar-brand" href="index"><img src="images/logo.webp" class="img-responsive" alt=""></a>
	      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#ftco-nav" aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
	        <span class="oi oi-menu"></span> Menu
	      </button>


    		

	      <div class="collapse navbar-collapse" id="ftco-nav">
	        <ul class="navbar-nav ml-auto">
	          <li class="nav-item active"><a href="index" class="nav-link">Home</a></li>
	          <li class="nav-item dropdown">
              <a class="nav-link dropdown-toggle" href="#" id="dropdown04" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Shop</a>
              <div class="dropdown-menu" aria-labelledby="dropdown04">
              	<a class="dropdown-item" href="vegetables">Vegetables</a>
               <a class="dropdown-item" href="fruits">Fruits</a>
               <a class="dropdown-item" href="juices">Juices</a>
               <a class="dropdown-item" href="dried">Dried</a>
               </div>
            </li>
	          <li class="nav-item"><a href="about" class="nav-link">About</a></li>
	          <li class="nav-item"><a href="blog" class="nav-link">Blog</a></li>
	          <li class="nav-item"><a href="membership" class="nav-link">Become a Member</a></li>
	           <li class="nav-item dropdown">
              <a class="nav-link dropdown-toggle" href="#" id="dropdown04" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Bulk/Export Queries</a>
              <div class="dropdown-menu" aria-labelledby="dropdown04">
              	<a class="dropdown-item" href="bulk-queries">Bulk/Export Queries</a>
               <a class="dropdown-item" href="contact">Contact</a>
               </div>
            </li>
	          
	             <%Registration register=(Registration)session.getAttribute("user"); %>
	          
	          <%if(register!=null){ %>
	          
	           <li class="nav-item dropdown">
              <a class="nav-link dropdown-toggle" href="#" id="dropdown04" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><span style=" text-transform:none">Hello </span><%=register.getFirst_name() %></a>
              <div class="dropdown-menu" aria-labelledby="dropdown04">
              	<a class="dropdown-item" href="shop">Profile</a>
              	<a class="dropdown-item" href="showcart">Cart</a>
              	<a class="dropdown-item" href="showwishlist">Wishlist</a>
              	<a class="dropdown-item" href="Terms-Conditions">Terms & Conditions</a>
              	 <a class="dropdown-item" href="checkout">Checkout</a>
                <a class="dropdown-item" href="logout">Log Out</a>
                
              </div>
            </li>
	          
	             <% }else{
	        	   %>
	          
	          <li class="nav-item"><a href="registration" class="nav-link">Sign in</a></li>
	          
	          	 ����������<%}%>
	          	 
	          <li class="nav-item cta cta-colored"><a href="cart" class="nav-link"><span class="icon-shopping_cart"></span>[0]</a></li>		
	        </ul>
	      </div>
	    </div>
	  </nav>
    <!-- END nav -->
    
    <div class="hero-wrap hero-bread" style="background-image: url('images/bg_1.jpg'); margin-bottom:60px">
      <div class="container">
        <div class="row no-gutters slider-text align-items-center justify-content-center">
          <div class="col-md-9 ftco-animate text-center">
          	<p class="breadcrumbs"><span class="mr-2"><a href="index">Home</a></span> <span>Wishlist</span></p>
            <h1 class="mb-0 bread">My Wishlist</h1>
          </div>
        </div>
      </div>
    </div>
    
    <% List<Wishlist> wishlist=(List)session.getAttribute("Wishlist"); 
    int sum=0,count=0;
    if(wishlist!=null){
    	for(Wishlist w:wishlist){
    
    		if(w.getWid().equals(register.getEmail())){

    		sum=sum+Integer.parseInt(w.getPrice());
    		count++;
   %>

    <section class="ftco-section ftco-cart">
			<div class="container">
				<div class="row">
    			<div class="col-md-12 ftco-animate">
    				<div class="cart-list">
	    				<table class="table">
						    <thead class="thead-primary">
						      <tr class="text-center">
						        
						        <th>&nbsp;</th>
						        <th>Product name</th>
						        <th>Price</th>
						        <th>Quantity</th>
						        <th>Total</th>
						         <th>Add to Cart</th>
						        <th>Remove</th>
						      </tr>
						    </thead>
						    <tbody>
						      <tr class="text-center">
						        
						        
						        <td class="image-prod"><div class="img" style="background-image:url(<%=w.getImage()%>);"></div></td>
						        
						        <td class="product-name">
						        	<h3><%=w.getName() %></h3>
						        </td>
						        
						        <td class="price">$<%=w.getPrice() %></td>
						        
						       <td>
						       <div class="wrap-num-product flex-w m-l-auto m-r-0">
											<div class="btn-num-product-down cl8 hov-btn3 trans-04 flex-c-m">
												<i class="ion-ios-remove"></i>
											</div>

											<input class="mtext-104 cl3 txt-center num-product" type="number" name="num-product1" value="1">

											<div class="btn-num-product-up cl8 hov-btn3 trans-04 flex-c-m">
												<i class="ion-ios-add"></i>
											</div>
										</div>
						        </td>
						        
						        <td class="total">$<%=w.getPrice() %></td>
						        <%
                         Registration r1=(Registration)session.getAttribute("user");
                         if(r1!=null){%>
						        <td class="product-remove"><a href="cart?id=<%=w.getId() %>&image=<%=w.getImage() %>&name=<%=w.getName() %>&price=<%=w.getPrice() %>&uid=<%=register.getEmail() %>">Add to Cart</a></td>
						     	 <%}
                         
                         %> 
						      <td class="product-delete"><a href="deletewish?id=<%=w.getId()%>"> <span class="ion-ios-trash"></span></a></td>
						      </tr><!-- END TR-->
						       
						    </tbody>
						  </table>
					  </div>
    			</div>
    		</div>
			</div>
		</section>
		
		<%}} }
    %>

		<section class="ftco-section ftco-no-pt ftco-no-pb py-5 bg-light">
      <div class="container py-4">
        <div class="row d-flex justify-content-center py-5">
          <div class="col-md-6">
          	<h2 style="font-size: 22px;" class="mb-0">Subcribe to our Newsletter</h2>
          	<span>Get e-mail updates about our latest shops and special offers</span>
          </div>
          <div class="col-md-6 d-flex align-items-center">
            <form action="#" class="subscribe-form">
              <div class="form-group d-flex">
                <input type="text" class="form-control" placeholder="Enter email address">
                <input type="submit" value="Subscribe" class="submit px-3">
              </div>
            </form>
          </div>
        </div>
      </div>
    </section>
    <footer class="ftco-footer ftco-section">
      <div class="container">
      	<div class="row">
      		<div class="mouse">
						<a href="#" class="mouse-icon">
							<div class="mouse-wheel"><span class="ion-ios-arrow-up"></span></div>
						</a>
					</div>
      	</div>
        <div class="row mb-5" style="margin-top:60px;">
          <div class="col-md">
            <div class="ftco-footer-widget mb-4">
              <h2 class="ftco-heading-2">Vegefoods</h2>
              <p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia.</p>
              <ul class="ftco-footer-social list-unstyled float-md-left float-lft mt-5">
                <li class="ftco-animate"><a href="#"><span class="icon-twitter"></span></a></li>
                <li class="ftco-animate"><a href="#"><span class="icon-facebook"></span></a></li>
                <li class="ftco-animate"><a href="#"><span class="icon-instagram"></span></a></li>
              </ul>
            </div>
          </div>
          <div class="col-md">
            <div class="ftco-footer-widget mb-4 ml-md-5">
              <h2 class="ftco-heading-2">Menu</h2>
              <ul class="list-unstyled">
                <li><a href="#" class="py-2 d-block">Shop</a></li>
                <li><a href="#" class="py-2 d-block">About</a></li>
                <li><a href="#" class="py-2 d-block">Journal</a></li>
                <li><a href="#" class="py-2 d-block">Contact Us</a></li>
              </ul>
            </div>
          </div>
          <div class="col-md-4">
             <div class="ftco-footer-widget mb-4">
              <h2 class="ftco-heading-2">Help</h2>
              <div class="d-flex">
	              <ul class="list-unstyled mr-l-5 pr-l-3 mr-4">
	                <li><a href="#" class="py-2 d-block">Shipping Information</a></li>
	                <li><a href="#" class="py-2 d-block">Returns &amp; Exchange</a></li>
	                <li><a href="#" class="py-2 d-block">Terms &amp; Conditions</a></li>
	                <li><a href="#" class="py-2 d-block">Privacy Policy</a></li>
	              </ul>
	              <ul class="list-unstyled">
	                <li><a href="#" class="py-2 d-block">FAQs</a></li>
	                <li><a href="#" class="py-2 d-block">Contact</a></li>
	              </ul>
	            </div>
            </div>
          </div>
          <div class="col-md">
            <div class="ftco-footer-widget mb-4">
            	<h2 class="ftco-heading-2">Have a Questions?</h2>
            	<div class="block-23 mb-3">
	              <ul>
	                <li><span class="icon icon-map-marker"></span><span class="text">203 Fake St. Mountain View, San Francisco, California, USA</span></li>
	                <li><a href="#"><span class="icon icon-phone"></span><span class="text">+2 392 3929 210</span></a></li>
	                <li><a href="#"><span class="icon icon-envelope"></span><span class="text">info@yourdomain.com</span></a></li>
	              </ul>
	            </div>
            </div>
          </div>
        </div>
        <div class="row">
          <div class="col-md-12 text-center">

            <p><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
						  Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="icon-heart color-danger" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a>
						  <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
						</p>
          </div>
        </div>
      </div>
    </footer>
    
  

  <!-- loader -->
  <div id="ftco-loader" class="show fullscreen"><svg class="circular" width="48px" height="48px"><circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee"/><circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10" stroke="#F96D00"/></svg></div>


  <script src="js/jquery.min.js"></script>
  <script src="js/jquery-migrate-3.0.1.min.js"></script>
  <script src="js/popper.min.js"></script>
  <script src="js/bootstrap.min.js"></script>
  <script src="js/jquery.easing.1.3.js"></script>
  <script src="js/jquery.waypoints.min.js"></script>
  <script src="js/jquery.stellar.min.js"></script>
  <script src="js/owl.carousel.min.js"></script>
  <script src="js/jquery.magnific-popup.min.js"></script>
  <script src="js/aos.js"></script>
  <script src="js/jquery.animateNumber.min.js"></script>
  <script src="js/bootstrap-datepicker.js"></script>
  <script src="js/scrollax.min.js"></script>
  <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
  <script src="js/google-map.js"></script>
  <script src="js/main.js"></script>

  <script>
		$(document).ready(function(){

		var quantitiy=0;
		   $('.quantity-right-plus').click(function(e){
		        
		        // Stop acting like a button
		        e.preventDefault();
		        // Get the field name
		        var quantity = parseInt($('#quantity').val());
		        
		        // If is not undefined
		            
		            $('#quantity').val(quantity + 1);

		          
		            // Increment
		        
		    });

		     $('.quantity-left-minus').click(function(e){
		        // Stop acting like a button
		        e.preventDefault();
		        // Get the field name
		        var quantity = parseInt($('#quantity').val());
		        
		        // If is not undefined
		      
		            // Increment
		            if(quantity>0){
		            $('#quantity').val(quantity - 1);
		            }
		    });
		    
		});
	</script>
     <script src="jquery/jquery-3.2.1.min.js"></script> 
    <script src="animsition/js/animsition.min.js"></script>	
    <script src="js/count.js"></script>	
  </body>
</html>