<!DOCTYPE html>
<%@page import="com.example.VegFoodProject.bean.Registration"%>
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
    
         <style>
    .img-responsive {
    height: auto;
    width: auto;
    max-height: 72px;
    max-width: 250px;
    vertical-align: top;
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
	          
	          	           <%}%>
	          	 
	          <li class="nav-item cta cta-colored"><a href="cart" class="nav-link"><span class="icon-shopping_cart"></span>[0]</a></li>

				
				
				
				
	        </ul>
	      </div>
	    </div>
	  </nav>
    <!-- END nav -->



    <div class="hero-wrap hero-bread" style="background-image: url('images/bg_1.jpg');">
      <div class="container">
        <div class="row no-gutters slider-text align-items-center justify-content-center">
          <div class="col-md-9 ftco-animate text-center">
          	<p class="breadcrumbs"><span class="mr-2"><a href="index.html">Home</a></span> <span>Terms &amp; Conditions</span></p>
            <h1 class="mb-0 bread">Terms &amp; Conditions</h1>
          </div>
        </div>
      </div>
    </div>

    <section class="ftco-section contact-section bg-light">
      <div class="container">
      	
        
        <h3 style="font-weight: bold;">      
      <span>
        Terms &amp; Conditions
      </span>
    </h3>
                
          </header>

          <div class="rte">
            <p><span style="font-weight: 400;">The Terms and Conditions (T&amp;C) described below constitute an electronic contract, enforceable as per provisions of the Information Technology Act, 2000 and Rules made thereunder, as amended from time to time. Please note that the T &amp; C will not require any signature for acceptance and enforceability. We encourage our esteemed customers to read these terms fully before purchasing any organic fruits and vegetables from our website or mobile apps.</span></p>
      <p><strong>Offer and Acceptance:</strong></p>
      <p><span style="font-weight: 400;">The Customer agrees to these T&amp;C by accessing this Website. All commercial/contractual terms are offered by and agreed to between Customers and Fresh India Organics LLP (FIO) alone.</span></p>
      <p><span style="font-weight: 400;">FIO may include additional or conflicting terms and conditions of sale in the organic fruits and vegetables listing or organic fruits and vegetables description as made available on the website ('Additional Terms of Sale'). If there is any conflict between the T&amp;C and the additional terms of sale, the additional terms of sale shall take precedence to the extent of such conflict and in relation to that sale.</span></p>
      <p><span style="font-weight: 400;">FIO may at any time modify the Terms and Conditions for use of the Website without any prior notification to the customers. If a customer does not agree with the T&amp;C he/she is advised not to buy or attempt to buy any organic fruits and vegetables listed on the Website. However, if the customer continues to use the service he/she shall be deemed to have agreed to accept and abide by the modified Terms &amp; Conditions of Use of this Website.</span></p>
      <p><strong>Limitations:</strong></p>
      <p><span style="font-weight: 400;">Services associated with the Website would be available to only select geographies in India as solely determined by FIO.</span></p>
      <p><span style="font-weight: 400;">Persons who are "incompetent to contract" within the meaning of the Indian Contract Act, 1872 as detailed in the Privacy Policy are not eligible to use the Website.&nbsp; FIO shall not be held directly or indirectly liable for any damages arising from the customerâ€™s or any 3rd partyâ€™s misuse or violation of the Terms &amp; Conditions of the Fresh India Organics site and mobile apps, and any other related policies associated with the Website.</span></p>
      <p><span style="font-weight: 400;">FIO does not implicitly or explicitly endorse or advertise the organic fruits and vegetables and associated brands on the Website. References on this Website to any names, marks, organic fruits and vegetables or services of third parties or hypertext links to third party sites or information are provided solely as a convenience to the Customer and do not in any way constitute or imply to be FIOâ€™s endorsement, sponsorship or recommendation of the third party, information, organic fruits and vegetables or service</span></p>
      <p><strong>Intellectual Property Rights (IPR):</strong></p>
      <p><span style="font-weight: 400;">&nbsp;FIO expressly reserves all intellectual property rights in all text, programs, organic fruits and vegetables, processes, technology, content and other materials, which appear on this Website and mobile apps. Access to this Website does not confer and shall not be considered as conferring upon anyone any license under any of&nbsp; FIOâ€™s or any third party's intellectual property rights.</span></p>
      <p><span style="font-weight: 400;">Apart from the brands / Intellectual Property Rights (IPR) owned by FIO, all other trademarks/ brands displayed on the Website are the property of their respective brand owners and displayed on the Website with prior consent by FIO.</span></p>
      <p><span style="font-weight: 400;">FIO hereby allows the Customer to only access the website for personal use and not to download or modify any portion of it. This website or any portion of this Website may not be reproduced, duplicated, copied, sold, resold, visited, or otherwise exploited for any commercial purpose without the express written consent of FIO.</span></p>
      <p><span style="font-weight: 400;">All reviews, comments, feedback, postcards, suggestions, ideas, and other submissions disclosed, submitted or offered to the Website on or by this Site or otherwise disclosed, submitted or offered in connection with the use of this Website (collectively, the "Feedback") shall be and remain the property of &nbsp; FIO. Such disclosure, submission or offer of any Feedback on the Website shall constitute an assignment to FIO of all worldwide rights, titles and interests in all copyrights and other intellectual properties in the Feedback by the Users.</span></p>
      <p><strong>Representation:</strong></p>
      <p><span style="font-weight: 400;">FIO does not make any Representation as to produce being organic fruits and vegetables proposed to be sold or offered to be sold or purchased on the Website</span></p>
      <p><span style="font-weight: 400;">All offers of sale of organic fruits and vegetables are governed by the description and specifications of the produce.</span></p>
      <p><strong>Warranty:</strong></p>
      <p><span style="font-weight: 400;">With respect to the sale of Product by FIO to the Customer, FIO hereby represents and warrants to the Customer that:</span></p>
      <ul>
      <li style="font-weight: 400;"><span style="font-weight: 400;">FIO has the right to sell the Products to the Customer through the Website;</span></li>
      <li style="font-weight: 400;"><span style="font-weight: 400;">Customer shall have and enjoy quiet possession of the Products on completion of sale;</span></li>
      <li style="font-weight: 400;"><span style="font-weight: 400;">Products shall be free from any charge or encumbrance in favor of third party;</span></li>
      <li style="font-weight: 400;"><span style="font-weight: 400;">Customer shall be entitled to all the warranties and other collaterals applicable to the Product or as generally made available by the farmers or farms of the Product;</span></li>
      <li style="font-weight: 400;"><span style="font-weight: 400;">&nbsp;FIO has made every effort to display the Products that appear on the Website as accurately as possible. However, any deviance in appearance in actual product cannot be held against FIO.</span></li>
      </ul>
      <p><span style="font-weight: 400;">The Customer hereby represents and warrants to FIO:</span></p>
      <ul>
      <li style="font-weight: 400;"><span style="font-weight: 400;">That the Customer is accessing the Website and transacting at his/her sole risk and is using his/her best informed and prudent judgment before entering into any transaction through this Website.</span></li>
      <li style="font-weight: 400;"><span style="font-weight: 400;">Customer will use the Website for lawful purposes only and comply with all applicable laws and regulations while using and transacting on the Website.</span></li>
      <li style="font-weight: 400;"><span style="font-weight: 400;">Customer will provide authentic and true information in all instances where such information is requested by FIO. FIO reserves the right to confirm and validate the information and other details provided by the customer at any point of time.</span></li>
      <li style="font-weight: 400;"><span style="font-weight: 400;">If upon confirmation the Customerâ€™s details are found not to be true (wholly or partly), FIO has the right in its sole discretion to reject the registration and debar such customer from accessing the Website without prior intimation whatsoever.</span></li>
      <li style="font-weight: 400;"><span style="font-weight: 400;">The address at which delivery of the product ordered by the Customer is to be made will be correct and proper in all respects. Customer is completely responsible and liable for the correctness of delivery address details in this regard.</span></li>
      <li style="font-weight: 400;"><span style="font-weight: 400;">That before placing an order customer will check the product description carefully. By placing an order for a product he/she agrees to be bound by the conditions of sale included in the item's description.</span></li>
      </ul>
      <p><strong>Pricing Information:</strong></p>
      <p><span style="font-weight: 400;">All the products listed on the Website will be sold at MRP unless otherwise specified. The prices mentioned at the time of ordering will be the prices charged on the date of the delivery. All prices are inclusive of GST unless stated otherwise.</span></p>
      <p><strong>Delivery of the Product:</strong></p>
      <p><span style="font-weight: 400;">FIO currently offers two modes of delivery for purchases made on&nbsp;freshindiaorganics.com.</span></p>
      <p><strong>Home Delivery:</strong></p>
      <p><span style="font-weight: 400;">Please note that for all home deliveries, FIO will charge a delivery fee. This delivery fee will be added to the billed amount at the time of checkout, while placing the order online.</span></p>
      <p><strong>Tentative Time for Delivery:</strong></p>
      <p><span style="font-weight: 400;">The typical time that is required to process order is 24 hours from receiving the order online. Please note all items (including gifts) will be shipped with an invoice mentioning the price. There is no guaranteed dispatch time and any information about the dispatch time is estimate only and should not be relied upon as such. Therefore, time is not the essence of the bi-partite contract between the Customer and FIO for purchase and sale of Product through the Website.</span></p>
      <p><span style="font-weight: 400;">If you believe that the products you ordered are not in good condition, or if the packaging is tampered with or damaged, please refuse to take delivery of the package. In case you find an issue with the product after accepting delivery, you may return the said product and seek recourse as per the terms of refund policy.</span></p>
      <p><span style="font-weight: 400;">FIO will make its best efforts to service all customer orders accurately and on time. However, if in certain pressing situations (including force majeure), we are unable to fulfill an order we will not recompense the customer for the delay or the non-delivery of the orders.</span></p>
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
        <div class="row mb-5">
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
    
  </body>
</html>