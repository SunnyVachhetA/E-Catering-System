<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="" />
    <meta name="keywords" content="" />
    <title>Food Ordering HTML Template</title>
    <%@include file = "commoncss.jsp"%>
    </head>
<body itemscope>
    <main>
        <%@include file = "Topbar.jsp" %>
        <section>
            <div class="block">
				<div class="fixed-bg" style="background-image:url(assets/images/topbg.jpg);"></div>
                <div class="page-title-wrapper text-center">
					<div class="col-md-12 col-sm-12 col-lg-12">
						<div class="page-title-inner">
							<h1 itemprop="headline">Contact Us</h1>
							<span>A Greate Restaurant Website</span>
						</div>
					</div>
                </div>
            </div>
        </section>

        <div class="bread-crumbs-wrapper">
            <div class="container">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="#" title="" itemprop="url">Home</a></li>
                    <li class="breadcrumb-item active">Contact Us</li>
                </ol>
            </div>
        </div>

        <section>
            <div class="block less-spacing gray-bg top-padd30">
                
                    <div class="container">
                        <div class="row">
                            
                            <div class="col-md-12 col-sm-12 col-lg-12">
                                <div class="sec-box">
                                <div class="loc-map" id="loc-map"></div>
                                <div class="contact-info-sec text-center">
                                    <div class="row">
                                        <div class="col-md-4 col-sm-4 col-lg-4">
                                            <div class="contact-info-box">
                                                <i class="fa fa-phone-square"></i>
                                                <h5 itemprop="headline">PHONE</h5>
                                                <p itemprop="description">Phone 01: (+91) 9376111403</p>
                                            </div>
                                        </div>
                                        <div class="col-md-4 col-sm-4 col-lg-4">
                                            <div class="contact-info-box">
                                                <i class="fa fa-map-marker"></i>
                                                <h5 itemprop="headline">ADDRESS</h5>
                                                <p itemprop="description">Shop No: 4, Opp. Parshwanath Bus-Stop, B/H Krishnanagar, 
New-Naroda, Ahmedabad – 382345.
                                                </p>
                                            </div>
                                        </div>
                                        <div class="col-md-4 col-sm-4 col-lg-4">
                                            <div class="contact-info-box">
                                                <i class="fa fa-envelope"></i>
                                                <h5 itemprop="headline">EMAIL</h5>
                                                <p itemprop="description">guptacatering11@gmail.com</p>
                                            
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!-- <div class="contact-form-wrapper text-center">
                                    <div class="contact-form-inner">
                                        <h3 itemprop="headline">If You Got Any Questions <br> Please Do Not Hesitate to Send us a Message.</h3>
                                        <div id="message"></div>
                                        <form method="post" action="https://html.webinane.com/food-chow/contact.php" id="contactform">
                                            <div class="row">
                                                <div class="col-md-12 col-sm-6 col-lg-12">
                                                    <input id="name" type="text" placeholder="Your Name">
                                                </div>
                                                <div class="col-md-12 col-sm-6 col-lg-12">
                                                    <input id="email" type="email" placeholder="Your Email">
                                                </div>
                                                <div class="col-md-12 col-sm-12 col-lg-12">
                                                    <input type="text" placeholder="Subject">
                                                </div>
                                                <div class="col-md-12 col-sm-12 col-lg-12">
                                                    <textarea id="comments" placeholder="Message"></textarea>
                                                </div>
                                                <!--<div class="col-md-12 col-sm-12 col-lg-12">
                                                    <div class="g-recaptcha" data-sitekey="6LelmzAUAAAAAHBE2SJeRMfnzYVxH9RMGQstUij2"></div> 
                                                </div>
                                                <div class="col-md-12 col-sm-12 col-lg-12">
                                                    <button class="brd-rd2" id="submit" type="submit">SEND MESSAGE</button>
                                                    <img src="assets/images/ajax-loader.gif" class="loader" alt="ajax-loader.gif" itemprop="image">
                                                </div>
                                            </div>
                                        </form>
                                    </div>
                                </div><!-- Contact Form Wrapper -->
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
		<%@include file = "Footer.jsp" %>
        </main><!-- Main Wrapper -->
	<%@include file = "commonjs.jsp" %>
	<%@include file = "gmapjs.jsp" %>
    </body>	

</html>