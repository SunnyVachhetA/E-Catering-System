<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="" />
    <meta name="keywords" content="" />
    <title>Food Ordering HTML Template</title>

	<%@include file = "commoncss.jsp" %>
</head>
<body itemscope>
    <main>
        <%@include file ="Topbar.jsp" %>
        <section>
            <div class="block">
				<div class="fixed-bg" style="background-image: url(assets/images/topbg.jpg);"></div>
                <div class="page-title-wrapper text-center">
					<div class="col-md-12 col-sm-12 col-lg-12">
						<div class="page-title-inner">
							<h1 itemprop="headline">Search Your Favourite Food</h1>
							<form class="restaurant-search-form brd-rd2">
								<div class="row mrg10">
									<div class="col-md-6 col-sm-5 col-lg-5 col-xs-12">
										<div class="input-field brd-rd2"><input class="brd-rd2" type="text" placeholder="Restaurant Name"></div>
									</div>
									<div class="col-md-4 col-sm-4 col-lg-4 col-xs-12">
										<div class="input-field brd-rd2"><i class="fa fa-map-marker"></i><input class="brd-rd2" type="text" placeholder="Search Location"><i class="fa fa-location-arrow"></i></div>
									</div>
									<div class="col-md-2 col-sm-3 col-lg-3 col-xs-12">
										<button class="brd-rd2 red-bg" type="submit">SEARCH</button>
									</div>
								</div>
							</form>
						</div>
					</div>
                </div>
            </div>
        </section>

        <div class="bread-crumbs-wrapper">
            <div class="container">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="#" title="" itemprop="url">Home</a></li>
                    <li class="breadcrumb-item active">Food Details</li>
                </ol>
            </div>
        </div>

        <section>
            <div class="block gray-bg bottom-padd210 top-padd30">
                
                    <div class="container">
                        <div class="row">
                            <div class="col-md-12">
                            <div class="sec-box">
    							<div class="sec-wrapper">
    								<div class="col-md-8 col-sm-12 col-lg-8">
    									<div class="restaurant-detail-wrapper">
    										<div class="restaurant-detail-info">
    											<div class="restaurant-detail-thumb">
    												<ul class="restaurant-detail-img-carousel">
    													<li><img class="brd-rd3" src="assets/images/resource/restaurant-detail-big-img1-1.jpg" alt="restaurant-detail-big-img1-1.jpg" itemprop="image"></li>
    													<li><img class="brd-rd3" src="assets/images/resource/restaurant-detail-big-img1-2.jpg" alt="restaurant-detail-big-img1-2.jpg" itemprop="image"></li>
    													<li><img class="brd-rd3" src="assets/images/resource/restaurant-detail-big-img1-3.jpg" alt="restaurant-detail-big-img1-3.jpg" itemprop="image"></li>
    													<li><img class="brd-rd3" src="assets/images/resource/restaurant-detail-big-img1-4.jpg" alt="restaurant-detail-big-img1-4.jpg" itemprop="image"></li>
    												</ul>
    												<ul class="restaurant-detail-thumb-carousel">
    													<li><img class="brd-rd3" src="assets/images/resource/restaurant-detail-small-img1-1.jpg" alt="restaurant-detail-small-img1-1.jpg" itemprop="image"></li>
    													<li><img class="brd-rd3" src="assets/images/resource/restaurant-detail-small-img1-2.jpg" alt="restaurant-detail-small-img1-2.jpg" itemprop="image"></li>
    													<li><img class="brd-rd3" src="assets/images/resource/restaurant-detail-small-img1-3.jpg" alt="restaurant-detail-small-img1-3.jpg" itemprop="image"></li>
    													<li><img class="brd-rd3" src="assets/images/resource/restaurant-detail-small-img1-4.jpg" alt="restaurant-detail-small-img1-4.jpg" itemprop="image"></li>
    												</ul>
    											</div>
    											<div class="restaurant-detail-title">
    												<h1 itemprop="headline">Nik Baker's</h1>
    												<div class="info-meta">
    													<span>Greater Kailash (GK) 2</span>
    													<span><a href="#" title="" itemprop="url">Domino's</a></span>
    												</div>
    												<div class="rating-wrapper">
    													<a class="gradient-brd brd-rd2" href="#" title="" itemprop="url"><i class="fa fa-star"></i> Rate <i>4.0</i></a>
    													<div class="rate-share brd-rd5">
    														<div class="rating-box-wrapper">
    															<span>Rate</span>
    															<div class="rating-box">
    																<span class="brd-rd2 clr1 on"></span>
    																<span class="brd-rd2 clr2 on"></span>
    																<span class="brd-rd2 clr3 on"></span>
    																<span class="brd-rd2 clr4 on"></span>
    																<span class="brd-rd2 clr5 on"></span>
    																<span class="brd-rd2 clr6 on"></span>
    																<span class="brd-rd2 clr7 off"></span>
    																<span class="brd-rd2 clr8 off"></span>
    																<i>4.0</i>
    															</div>
    														</div>
    														<div class="share-wrapper">
    															<div class="fb-share">
    																<label class="switch">
    																	<input type="checkbox">
    																	<span class="switch-slider brd-rd30"></span>
    																</label>
    																<a class="facebook brd-rd2" href="#" title="" itemprop="url"><i class="fa fa-facebook-square"></i> Share on Facebook</a>
    															</div>
    															<div class="fb-share">
    																<label class="switch">
    																	<input type="checkbox">
    																	<span class="switch-slider brd-rd30"></span>
    																</label>
    																<a class="twitter brd-rd2" href="#" title="" itemprop="url"><i class="fa fa-twitter"></i> Share on Twitter</a>
    															</div>
    														</div>
    													</div>
    												</div>
    												<span class="price">$85.00</span>
    												<div class="qty-wrap">
    													<input class="qty" type="text" value="1">
    												</div>
    												<p itemprop="description">Rennie White, an advertising manager in New York City, leaves for work 10 minutes later these days because she no longer has to wait in line for coffee at a Dunkin' Donuts outlet. Instead, she preorders coffee by sending a text message from her cellphone on the way to work. "I can get off the train and get the coffee and not break my flow," Ms. White says</p>
    												<p itemprop="description">Similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. uni harum quidem sed rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihilares impedit quo repellendus eligendi optio cumque nihilare impedit quo minus id quod maxime.</p>
    												<a class="brd-rd3" href="#" title="" itemprop="url">Order Now</a>
    											</div>
    										</div>
    									</div>
    								</div>
    								<div class="col-md-4 col-sm-12 col-lg-4">
    									<div class="order-wrapper">
    										<div class="order-inner gradient-brd">
    											<h4 itemprop="headline">Your Order</h4>
    											<div class="order-list-wrapper">
    												<ul class="order-list-inner">
    													<li>
    														<div class="dish-name">
    															<i>.1</i> <h6 itemprop="headline">Chicken Tandoori Special</h6> <span class="price">$85.00</span>
    														</div>
    														<div class="dish-ingredients">
    															<span class="check-box"><input type="checkbox" id="checkbox1-1"><label for="checkbox1-1"><span>Drink</span> <i>$12</i></label></span>
    															<span class="check-box"><input type="checkbox" id="checkbox1-2"><label for="checkbox1-2"><span>Butter</span> <i>$12</i></label></span>
    														</div>
    														<div class="mor-ingredients">
    															<a class="red-clr" href="#" title="" itemprop="url">Edit</a>
    														</div>
    													</li>
    													<li>
    														<div class="dish-name">
    															<i>.2</i> <h6 itemprop="headline">Chicken Tandoori Special</h6> <span class="price">$90.00</span>
    														</div>
    														<div class="dish-ingredients">
    															<span class="check-box"><input type="checkbox" id="checkbox2-1"><label for="checkbox2-1"><span>Drink</span> <i>$10</i></label></span>
    															<span class="check-box"><input type="checkbox" id="checkbox2-2"><label for="checkbox2-2"><span>Butter</span> <i>$20</i></label></span>
    														</div>
    														<div class="mor-ingredients">
    															<a class="red-clr" href="#" title="" itemprop="url">Edit</a>
    														</div>
    													</li>
    													<li>
    														<div class="dish-name">
    															<i>.3</i> <h6 itemprop="headline">Chicken Tandoori Special</h6> <span class="price">$100.00</span>
    														</div>
    														<div class="dish-ingredients">
    															<span class="check-box"><input type="checkbox" id="checkbox3-1"><label for="checkbox3-1"><span>Drink</span> <i>$30</i></label></span>
    														</div>
    														<div class="mor-ingredients">
    															<a class="red-clr" href="#" title="" itemprop="url">Edit</a>
    															<div class="ingradient-list yellow-bg">
    																<span class="check-box"><input type="checkbox" id="checkbox4-1"><label for="checkbox4-1"><span>Extra Drink</span></label></span>
    																<span class="check-box"><input type="checkbox" id="checkbox4-2"><label for="checkbox4-2"><span>Extra Drink</span></label></span>
    																<span class="check-box"><input type="checkbox" id="checkbox4-3"><label for="checkbox4-3"><span>Extra Drink</span></label></span>
    															</div>
    														</div>
    													</li>
    												</ul>
    												<ul class="order-total">
    													<li><span>SubTotal</span> <i>$158</i></li>
    													<li><span>Delivery fee</span> <i>$70</i></li>
    													<li><span>Tax</span> <i>$12</i></li>
    												</ul>
    												<ul class="order-method brd-rd2 red-bg">
    													<li><span>Total</span> <span class="price">$340</span></li>
    													<li><span class="radio-box"><input type="radio" name="method" id="pay1-1"><label for="pay1-1"><i class="fa fa-money"></i> Cash</label></span> <span class="radio-box"><input type="radio" name="method" id="pay1-2"><label for="pay1-2"><i class="fa fa-credit-card-alt"></i> Card</label></span></li>
    													<li><a class="brd-rd2" href="#" title="" itemprop="url">CONFIRM ORDER</a></li>
    												</ul>
    											</div>
    										</div>
    									</div>
    								</div>
    							</div>
                            </div>
                        </div>
                    </div>
                </div><!-- Section Box -->
            </div>
        </section>

        
        <%@include file ="Footer.jsp" %>
        <%@include file = "LogRegistration.jsp" %>
        <!-- <div class="payment-popup-wrapper cash-method text-center">
            <div class="payment-popup-inner" style="background-image: url(assets/images/payment-popup-bg.jpg);">
                <a class="payment-close-btn" href="#" title="" itemprop="url"><i class="fa fa-close"></i></a>
                <h4 class="payment-popup-title" itemprop="headline"><i class="fa fa-money red-clr"></i> Cash Payment</h4>
                <div class="payment-popup-info">
                    <h5 itemprop="headline">Billing Details</h5>
                    <form class="payment-popup-info-inner">
                        <div class="row">
                            <div class="col-md-6 col-sm-6 col-lg-6">
                                <ul class="payment-info-list">
                                    <li><span>Name:</span> John Smith</li>
                                    <li><span>Email:</span> john@domain.com</li>
                                    <li><span>Phone:</span> 0231456879</li>
                                    <li><span>Country:</span> India</li>
                                    <li><span>Address:</span> 121 King Street Melbourne Victoria Austrailia <a class="red-clr" href="#" title="" itemprop="url"><i class="fa fa-pencil"></i> Edit</a></li>
                                </ul>
                            </div>
                            <div class="col-md-6 col-sm-6 col-lg-6">
                                <label>Order Note <sup>*</sup></label>
                                <textarea class="brd-rd3" placeholder="Description..."></textarea>
                            </div>
                        </div>
                    </form>
                </div>
                <div class="confrm-order red-bg">
                    <ul class="order-total">
                        <li><span>SubTotal</span> <i>$158</i></li>
                        <li><span>Delivery fee</span> <i>$70</i></li>
                        <li><span>Tax</span> <i>$12</i></li>
                    </ul>
                    <div class="confrm-order-btn">
                        <a class="brd-rd3" href="#" title="" itemprop="url">CONFIRM ORDER</a>
                    </div>
                </div>
            </div>
        </div> -->

        <!-- <div class="payment-popup-wrapper card-method text-center">
            <div class="payment-popup-inner" style="background-image: url(assets/images/payment-popup-bg.jpg);">
                <a class="payment-close-btn" href="#" title="" itemprop="url"><i class="fa fa-close"></i></a>
                <h4 class="payment-popup-title" itemprop="headline"><i class="fa fa-money red-clr"></i> Card Payment</h4>
                <div class="payment-popup-info">
                    <h5 itemprop="headline">Billing Details</h5>
                    <form class="payment-popup-info-inner">
                        <div class="row">
                            <div class="col-md-6 col-sm-6 col-lg-6">
                                <ul class="payment-info-list">
                                    <li><span>Name:</span> John Smith</li>
                                    <li><span>Email:</span> john@domain.com</li>
                                    <li><span>Phone:</span> 0231456879</li>
                                    <li><span>Country:</span> India</li>
                                    <li><span>Address:</span> 121 King Street Melbourne Victoria Austrailia <a class="red-clr" href="#" title="" itemprop="url"><i class="fa fa-pencil"></i> Edit</a></li>
                                </ul>
                                <h5 itemprop="headline">Payment Method</h5>
                                <ul class="payment-method">
                                    <li>
                                        <div class="radio-box">
                                            <input type="radio" name="mthd22" id="mthd2-1">
                                            <label for="mthd2-1"><img src="assets/images/card-img.jpg" alt="card-img.jpg" itemprop="image"></label>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="radio-box">
                                            <input type="radio" name="mthd22" id="mthd2-2">
                                            <label for="mthd2-2"><img src="assets/images/bank-img.jpg" alt="bank-img.jpg" itemprop="image"></label>
                                        </div>
                                    </li>
                                </ul>
                            </div>
                            <div class="col-md-6 col-sm-6 col-lg-6">
                                <label>Order Note <sup>*</sup></label>
                                <textarea class="brd-rd3" placeholder="Description..."></textarea>
                            </div>
                        </div>
                    </form>
                </div>
                <div class="confrm-order red-bg">
                    <ul class="order-total">
                        <li><span>SubTotal</span> <i>$158</i></li>
                        <li><span>Delivery fee</span> <i>$70</i></li>
                        <li><span>Tax</span> <i>$12</i></li>
                    </ul>
                    <div class="confrm-order-btn">
                        <a class="brd-rd3" href="#" title="" itemprop="url">CONFIRM ORDER</a>
                    </div>
                </div>
            </div>
        </div> -->

        <!-- <div class="payment-popup-wrapper thanks-message text-center">
            <div class="payment-popup-inner red-bg">
                <i><img src="assets/images/tick-icon.png" alt="tick-icon.png" itemprop="image"></i>
                <h3 itemprop="headline">Thanks For Your Order</h3>
                <p itemprop="description">You Will Receive an email Confirmation Shortly at <a href="#" title="" itemprop="url">info@domain.com</a></p>
                <img class="thanks-message-mockup right" src="assets/images/resource/thanks-message-mockup.png" alt="thanks-message-mockup.png" itemprop="image">
            </div>
        </div> -->
    </main><!-- Main Wrapper -->

	<%@include file = "commonjs.jsp" %>
	<%@include file = "gmapjs.jsp" %>
</body>	

</html>