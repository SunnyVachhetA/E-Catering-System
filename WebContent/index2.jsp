<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="" />
    <meta name="keywords" content="" />
    <title>Food Ordering HTML Template</title>
    <%@include file="commoncss.jsp" %>
</head>
<body itemscope>
    <main>
 <%@include file="Topbar.jsp" %>
        <section>
            <div class="block blackish opac50">
                <div class="fixed-bg" style="background-image: url(assets/images/parallax2.jpg);"></div>
                <div class="restaurant-searching style2 text-center">
                    <div class="restaurant-searching-inner">
						<span>Delicious <i>Food</i> </span>
                        <h2 itemprop="headline">Order Delivery & Take-Out</h2>
                        <form class="restaurant-search-form2 brd-rd30">
                            <input class="brd-rd30" type="text" placeholder="RESTAURANT NAME">
                            <button class="brd-rd30 red-bg" type="submit">SEARCH</button>
                        </form>
                    </div>
                </div><!-- Restaurant Searching -->
            </div>
        </section>

        <section>
            <div class="block no-padding overlape-45">
                <div class="container">
                    <div class="row">
                        <div class="col-md-12 col-sm-12 col-lg-12">
                            <div class="top-restaurants-wrapper">
                                <ul class="restaurants-wrapper style2">
                                    <li class="wow bounceIn" data-wow-delay="0.2s"><div class="top-restaurant"><a class="brd-rd50" href="#" title="Restaurant 1" itemprop="url"><img src="assets/images/resource/top-restaurant1.png" alt="top-restaurant1.png" itemprop="image"></a></div></li>
                                    <li class="wow bounceIn" data-wow-delay="0.4s"><div class="top-restaurant"><a class="brd-rd50" href="#" title="Restaurant 2" itemprop="url"><img src="assets/images/resource/top-restaurant2.png" alt="top-restaurant2.png" itemprop="image"></a></div></li>
                                    <li class="wow bounceIn" data-wow-delay="0.6s"><div class="top-restaurant"><a class="brd-rd50" href="#" title="Restaurant 3" itemprop="url"><img src="assets/images/resource/top-restaurant3.png" alt="top-restaurant3.png" itemprop="image"></a></div></li>
                                    <li class="wow bounceIn" data-wow-delay="0.8s"><div class="top-restaurant"><a class="brd-rd50" href="#" title="Restaurant 4" itemprop="url"><img src="assets/images/resource/top-restaurant4.png" alt="top-restaurant4.png" itemprop="image"></a></div></li>
                                    <li class="wow bounceIn" data-wow-delay="1s"><div class="top-restaurant"><a class="brd-rd50" href="#" title="Restaurant 5" itemprop="url"><img src="assets/images/resource/top-restaurant5.png" alt="top-restaurant5.png" itemprop="image"></a></div></li>
                                    <li class="wow bounceIn" data-wow-delay="1.2s"><div class="top-restaurant"><a class="brd-rd50" href="#" title="Restaurant 5" itemprop="url"><img src="assets/images/resource/top-restaurant6.png" alt="top-restaurant6.png" itemprop="image"></a></div></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section><!-- top returents -->
		
		<section>
            <div class="block remove-bottom">
                <div class="container">
                    <div class="row">
						<div class="welcome-sec">
							<div class="col-md-6 col-sm-6 col-lg-6">
								<div class="welcome-secinfo">
									<h2>Welcome To FoodChow</h2>
									<span>We Create Delicious Memories</span>
									<p>Proin luctus, justo sit amet laoreet venenatis, libero velit tincidunt mi, nec 
	fermentum ante massa id quam. In gravida erat vel diam blandit consequat morbi. Ut interdum nuceu egestas arcu uspend isse sodales. Eiusmod tempor incidiunt labore velit dolore magna aliqu sed enimi nim.</p>
									<div class="award">
										<img src="assets/images/award.png" alt="">
										<span><em>middle east</em>hotel <i>award</i></span>
									</div>
									<span class="sign">
										<img src="assets/images/sign.png" alt="">
									</span>
								</div>
							</div>
							<div class="col-md-6 col-sm-6 col-lg-6">
								<div class="welcome-gallery">
									<img src="assets/images/resource/food1.jpg" alt="">
									<img src="assets/images/resource/food2.jpg" alt="">
									<img src="assets/images/resource/food3.jpg" alt="">
								</div>
							</div>
						</div>	
                    </div>
                </div>
            </div>
        </section><!-- welcome section -->

        <section>
            <div class="block">
                <div class="container">
                    <div class="row">
                        <div class="col-md-12 col-sm-12 col-lg-12">
                            <div class="title1-wrapper text-center">
                                <div class="title1-inner">
                                    <span>Website for Restaurant and Cafe</span>
                                    <h2 itemprop="headline">popular of the month</h2>
                                </div>
                            </div>
                            <div class="remove-ext">
                                <div class="row">
                                    <div class="col-md-4 col-sm-6 col-lg-4">
                                        <div class="popular-dish-box style2 wow fadeIn" data-wow-delay="0.2s">
                                            <div class="popular-dish-thumb">
                                                <a href="food-detail.html" title="" itemprop="url"><img src="assets/images/resource/popular-dish-img1.jpg" alt="popular-dish-img1.jpg" itemprop="image"></a>
                                                <span class="post-rate yellow-bg brd-rd2"><i class="fa fa-star-o"></i> 4.25</span>
                                                <span class="likes"><i class="fa fa-heart-o"></i> 12</span>
                                            </div>
                                            <div class="popular-dish-info">
                                                <h4 itemprop="headline"><a href="food-detail.html" title="" itemprop="url">Chili Spicy Food</a></h4>
                                                <p itemprop="description">Lorem Ipsum is simply dummy text of the printing and typesetting industry</p>
                                                <span class="price">$85.00</span>
                                                <a class="brd-rd4 " href="food-detail.html" title="Order Now" itemprop="url">Order Now</a>
                                                <div class="restaurant-info">
                                                    <img src="assets/images/resource/restaurant-logo1.png" alt="restaurant-logo1.png" itemprop="image">
                                                    <div class="restaurant-info-inner">
                                                        <h6 itemprop="headline"><a href="restaurant-detail.html" title="" itemprop="url">Fabio al Porto Ristorante</a></h6>
                                                        <span class="red-clr">5th Avenue New York 68</span>
                                                    </div>
                                                </div>
                                            </div>
                                        </div><!-- Popular Dish Box -->
                                    </div>
                                    <div class="col-md-4 col-sm-6 col-lg-4">
                                        <div class="popular-dish-box style2 wow fadeIn" data-wow-delay="0.4s">
                                            <div class="popular-dish-thumb">
                                                <a href="food-detail.html" title="" itemprop="url"><img src="assets/images/resource/popular-dish-img2.jpg" alt="popular-dish-img2.jpg" itemprop="image"></a>
                                                <span class="post-rate yellow-bg brd-rd2"><i class="fa fa-star-o"></i> 3.25</span>
												<span class="likes"><i class="fa fa-heart-o"></i> 08</span>
                                            </div>
                                            <div class="popular-dish-info">
                                                <h4 itemprop="headline"><a href="food-detail.html" title="" itemprop="url">Crab With Curry Sources</a></h4>
                                                <p itemprop="description">Lorem Ipsum is simply dummy text of the printing and typesetting industry</p>
                                                <span class="price">$70.00</span>
                                                <a class="brd-rd4" href="food-detail.html" title="Order Now" itemprop="url">Order Now</a>
                                                <div class="restaurant-info">
                                                    <img src="assets/images/resource/restaurant-logo1.png" alt="restaurant-logo1.png" itemprop="image">
                                                    <div class="restaurant-info-inner">
                                                        <h6 itemprop="headline"><a href="restaurant-detail.html" title="" itemprop="url">Fabio al Porto Ristorante</a></h6>
                                                        <span class="red-clr">5th Avenue New York 68</span>
                                                    </div>
                                                </div>
                                            </div>
                                        </div><!-- Popular Dish Box -->
                                    </div>
                                    <div class="col-md-4 col-sm-6 col-lg-4">
                                        <div class="popular-dish-box style2 wow fadeIn" data-wow-delay="0.6s">
                                            <div class="popular-dish-thumb">
                                                <a href="food-detail.html" title="" itemprop="url"><img src="assets/images/resource/popular-dish-img3.jpg" alt="popular-dish-img3.jpg" itemprop="image"></a>
                                                <span class="post-rate yellow-bg brd-rd2"><i class="fa fa-star-o"></i> 5.00</span>
												<span class="likes"><i class="fa fa-heart-o"></i> 10</span>
                                            </div>
                                            <div class="popular-dish-info">
                                                <h4 itemprop="headline"><a href="food-detail.html" title="" itemprop="url">Salted Fried Chicken $20</a></h4>
                                                <p itemprop="description">Lorem Ipsum is simply dummy text of the printing and typesetting industry</p>
                                                <span class="price">$99.00</span>
                                                <a class="brd-rd4" href="food-detail.html" title="Order Now" itemprop="url">Order Now</a>
                                                <div class="restaurant-info">
                                                    <img src="assets/images/resource/restaurant-logo1.png" alt="restaurant-logo1.png" itemprop="image">
                                                    <div class="restaurant-info-inner">
                                                        <h6 itemprop="headline"><a href="restaurant-detail.html" title="" itemprop="url">Fabio al Porto Ristorante</a></h6>
                                                        <span class="red-clr">5th Avenue New York 68</span>
                                                    </div>
                                                </div>
                                            </div>
                                        </div><!-- Popular Dish Box -->
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <section>
            <div class="block remove-bottom blackish low-opacity margin-bottom">
                <div class="fixed-bg" style="background-image: url(assets/images/parallax3.jpg);"></div>
                <div class="container">
                    <div class="row">
                        <div class="col-md-12 col-sm-12 col-lg-12">
                            <div class="title1-wrapper text-center text-white">
                                <div class="title1-inner">
                                    <span>Website for Restaurant and Cafe</span>
                                    <h2 itemprop="headline">Popular Localities </h2>
                                </div>
                            </div>
                            <div class="localities-wrapper">
                                <div class="localities-inner brd-rd2 wow fadeIn" data-wow-delay="0.2s">
                                    <div class="row">
                                        <div class="col-md-4 col-sm-6 col-lg-4">
                                            <ul class="locat-list">
                                                <li>England <span>( 98 Places )</span></li>
                                                <li>Berkshire <span>( 98 Places )</span></li>
                                                <li>Bedfords <span>( 98 Places )</span></li>
                                                <li>Scotland <span>( 98 Places )</span></li>
                                                <li>Cambridges <span>( 98 Places )</span></li>
                                                <li>London <span>( 98 Places )</span></li>
                                                <li>Canada <span>( 98 Places )</span></li>
                                            </ul>
                                        </div>
                                        <div class="col-md-4 col-sm-6 col-lg-4">
                                            <ul class="locat-list">
                                                <li>England <span>( 98 Places )</span></li>
                                                <li>Berkshire <span>( 98 Places )</span></li>
                                                <li>Bedfords <span>( 98 Places )</span></li>
                                                <li>Scotland <span>( 98 Places )</span></li>
                                                <li>Cambridges <span>( 98 Places )</span></li>
                                                <li>London <span>( 98 Places )</span></li>
                                                <li>Canada <span>( 98 Places )</span></li>
                                            </ul>
                                        </div>
                                        <div class="col-md-4 col-sm-6 col-lg-4">
                                            <ul class="locat-list">
                                                <li>England <span>( 98 Places )</span></li>
                                                <li>Berkshire <span>( 98 Places )</span></li>
                                                <li>Bedfords <span>( 98 Places )</span></li>
                                                <li>Scotland <span>( 98 Places )</span></li>
                                                <li>Cambridges <span>( 98 Places )</span></li>
                                                <li>London <span>( 98 Places )</span></li>
                                                <li>Canada <span>( 98 Places )</span></li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div><!-- Localities Wrapper -->
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <section>
            <div class="block gray-bg2 top-padd210">
                <div class="container">
                    <div class="row">
                        <div class="col-md-12 col-sm-12 col-lg-12">
							<div class="filters-wrapper">
                            <div class="title1-wrapper text-center">
								<div class="title1-inner">
									<span>Your Favourite Food</span>
									<h2 itemprop="headline">featured food</h2>
								</div>
							</div>
                            
							<ul class="filter-buttons center">
								<li class="active"><a class="brd-rd30" data-filter="*" href="#" itemprop="url">All</a></li>
								<li><a class="brd-rd30" data-filter=".filter-item1" href="#" itemprop="url">Beverages</a></li>
								<li><a class="brd-rd30" data-filter=".filter-item2" href="#" itemprop="url">Burgers</a></li>
								<li><a class="brd-rd30" data-filter=".filter-item3" href="#" itemprop="url">Pasta</a></li>
							</ul><!-- Filter Buttons -->
							<div class="filters-inner style2">
								<div class="row">
									<div class="masonry">
										<div class="col-md-6 col-sm-12 col-lg-6 filter-item filter-item1">
											<div class="featured-restaurant-box wow fadeIn" data-wow-delay="0.1s">
												<div class="featured-restaurant-thumb">
													<a href="food-detail.html" title="" itemprop="url"><img class="brd-rd50" src="assets/images/resource/featured-restaurant-img1.jpg" alt="featured-restaurant-img1.jpg" itemprop="image"></a>
												</div>
												<div class="featured-restaurant-info">
													<span class="red-clr">5th Avenue New York 68</span>
													<h4 itemprop="headline"><a href="food-detail.html" title="" itemprop="url">Pork Tenderloin Marinated</a></h4>
													<span class="price">$85.00</span>
													
													<ul class="post-meta">
														<li><i class="fa fa-check-circle-o"></i> Min order $50</li>
														<li><i class="flaticon-transport"></i> 30min</li>
													</ul>
													<span class="post-rate yellow-bg brd-rd2"><i class="fa fa-star-o"></i> 4.25</span>
												</div>
											</div>
										</div>
										<div class="col-md-6 col-sm-12 col-lg-6 filter-item filter-item2">
											<div class="featured-restaurant-box wow fadeIn" data-wow-delay="0.2s">
												<div class="featured-restaurant-thumb">
													<a href="food-detail.html" title="" itemprop="url"><img class="brd-rd50" src="assets/images/resource/featured-restaurant-img2.jpg" alt="featured-restaurant-img2.jpg" itemprop="image"></a>
												</div>
												<div class="featured-restaurant-info">
													<span class="red-clr">5th Avenue New York 68</span>
													<h4 itemprop="headline"><a href="food-detail.html" title="" itemprop="url">Baked Potato Pizza</a></h4>
													<span class="price">$70.00</span>
													
													<ul class="post-meta">
														<li><i class="fa fa-check-circle-o"></i> Min order $40</li>
														<li><i class="flaticon-transport"></i> 20min</li>
													</ul>
													<span class="post-rate yellow-bg brd-rd2"><i class="fa fa-star-o"></i> 4.03</span>
												</div>
											</div>
										</div>
										<div class="col-md-6 col-sm-12 col-lg-6 filter-item filter-item3">
											<div class="featured-restaurant-box wow fadeIn" data-wow-delay="0.3s">
												<div class="featured-restaurant-thumb">
													<a href="food-detail.html" title="" itemprop="url"><img class="brd-rd50" src="assets/images/resource/featured-restaurant-img3.jpg" alt="featured-restaurant-img3.jpg" itemprop="image"></a>
												</div>
												<div class="featured-restaurant-info">
													<span class="red-clr">5th Avenue New York 68</span>
													<h4 itemprop="headline"><a href="food-detail.html" title="" itemprop="url">Grilled Pork with Preserved</a></h4>
													<span class="price">$90.00</span>
													
													<ul class="post-meta">
														<li><i class="fa fa-check-circle-o"></i> Min order $60</li>
														<li><i class="flaticon-transport"></i> 45min</li>
													</ul>
													<span class="post-rate yellow-bg brd-rd2"><i class="fa fa-star-o"></i> 5.00</span>
												</div>
											</div>
										</div>
										<div class="col-md-6 col-sm-12 col-lg-6 filter-item filter-item2 filter-item3">
											<div class="featured-restaurant-box wow fadeIn" data-wow-delay="0.4s">
												<div class="featured-restaurant-thumb">
													<a href="food-detail.html" title="" itemprop="url"><img class="brd-rd50" src="assets/images/resource/featured-restaurant-img4.jpg" alt="featured-restaurant-img4.jpg" itemprop="image"></a>
												</div>
												<div class="featured-restaurant-info">
													<span class="red-clr">5th Avenue New York 68</span>
													<h4 itemprop="headline"><a href="food-detail.html" title="" itemprop="url">Chicken with White Sauce</a></h4>
													<span class="price">$85.00</span>
													
													<ul class="post-meta">
														<li><i class="fa fa-check-circle-o"></i> Min order $50</li>
														<li><i class="flaticon-transport"></i> 30min</li>
													</ul>
													<span class="post-rate yellow-bg brd-rd2"><i class="fa fa-star-o"></i> 4.25</span>
												</div>
											</div>
										</div>
										<div class="col-md-6 col-sm-12 col-lg-6 filter-item filter-item1 filter-item3">
											<div class="featured-restaurant-box wow fadeIn" data-wow-delay="0.5s">
												<div class="featured-restaurant-thumb">
													<a href="food-detail.html" title="" itemprop="url"><img class="brd-rd50" src="assets/images/resource/featured-restaurant-img5.jpg" alt="featured-restaurant-img5.jpg" itemprop="image"></a>
												</div>
												<div class="featured-restaurant-info">
													<span class="red-clr">5th Avenue New York 68</span>
													<h4 itemprop="headline"><a href="food-detail.html" title="" itemprop="url">Lemon-Rosemary Chicken</a></h4>
													<span class="price">$70.00</span>
													
													<ul class="post-meta">
														<li><i class="fa fa-check-circle-o"></i> Min order $40</li>
														<li><i class="flaticon-transport"></i> 20min</li>
													</ul>
													<span class="post-rate yellow-bg brd-rd2"><i class="fa fa-star-o"></i> 4.03</span>
												</div>
											</div>
										</div>
										<div class="col-md-6 col-sm-12 col-lg-6 filter-item filter-item1 filter-item2">
											<div class="featured-restaurant-box wow fadeIn" data-wow-delay="0.6s">
												<div class="featured-restaurant-thumb">
													<a href="food-detail.html" title="" itemprop="url"><img class="brd-rd50" src="assets/images/resource/featured-restaurant-img6.jpg" alt="featured-restaurant-img6.jpg" itemprop="image"></a>
												</div>
												<div class="featured-restaurant-info">
													<span class="red-clr">5th Avenue New York 68</span>
													<h4 itemprop="headline"><a href="food-detail.html" title="" itemprop="url">Black Pepper-Honey BBQ</a></h4>
													<span class="price">$90.00</span>
													
													<ul class="post-meta">
														<li><i class="fa fa-check-circle-o"></i> Min order $60</li>
														<li><i class="flaticon-transport"></i> 45min</li>
													</ul>
													<span class="post-rate yellow-bg brd-rd2"><i class="fa fa-star-o"></i> 5.00</span>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
		
		<section>
			<div class="block no-padding">
				<div class="container-fluid">
					<div class="row merged">
						<div class="col-md-6 col-sm-12 col-xs-12">
							<div class="tab-content">
								<div class="tab-pane active fade in" id="link1">
									<div class="chef-box">
										<img src="assets/images/resource/chef.png" alt="">
										<ul>
											<li class="wow fadeInUp" data-wow-delay="0.2s">
												<span class="food-price">$70.00</span>
												<h5><a href="#" title="#">Accumsan urna orci</a></h5>
												<p>Breakfast with Egg Salad</p>
											</li>
											<li class="wow fadeInUp" data-wow-delay="0.4s">
												<span class="food-price">$110.00</span>
												<h5><a href="#" title="#">Biltong ribeye shank </a></h5>
												<p>Breakfast with Egg Salad</p>
											</li>
											<li class="wow fadeInUp" data-wow-delay="0.6s">
												<span class="food-price">$120.00</span>
												<h5><a href="#" title="#">Ball prosciutto cow </a></h5>
												<p>Breakfast with Egg Salad</p>
											</li>
											<li class="wow fadeInUp" data-wow-delay="0.8s">
												<span class="food-price">$78.00</span>
												<h5><a href="#" title="#">Bresaola capicola tail  </a></h5>
												<p>Breakfast with Egg Salad</p>
											</li>
										</ul>
										
									</div>
								</div>
								<div class="tab-pane fade" id="link2">
									<div class="chef-box">
										<img src="assets/images/resource/chef.png" alt="">
										<ul>
											<li>
												<span class="food-price">$70.00</span>
												<h5><a href="#" title="#">Accumsan urna orci</a></h5>
												<p>Breakfast with Egg Salad</p>
											</li>
											<li>
												<span class="food-price">$110.00</span>
												<h5><a href="#" title="#">Biltong ribeye shank </a></h5>
												<p>Breakfast with Egg Salad</p>
											</li>
											<li>
												<span class="food-price">$120.00</span>
												<h5><a href="#" title="#">Ball prosciutto cow </a></h5>
												<p>Breakfast with Egg Salad</p>
											</li>
											<li>
												<span class="food-price">$78.00</span>
												<h5><a href="#" title="#">Bresaola capicola tail  </a></h5>
												<p>Breakfast with Egg Salad</p>
											</li>
										</ul>
									</div>
								</div>
								<div class="tab-pane fade" id="link3">
									<div class="chef-box">
										<img src="assets/images/resource/chef.png" alt="">
										<ul>
											<li class="wow fadeInUp" data-wow-delay="0.2s">
												<span class="food-price">$70.00</span>
												<h5><a href="#" title="#">Accumsan urna orci</a></h5>
												<p>Breakfast with Egg Salad</p>
											</li>
											<li class="wow fadeInUp" data-wow-delay="0.4s">
												<span class="food-price">$110.00</span>
												<h5><a href="#" title="#">Biltong ribeye shank </a></h5>
												<p>Breakfast with Egg Salad</p>
											</li>
											<li class="wow fadeInUp" data-wow-delay="0.6s">
												<span class="food-price">$120.00</span>
												<h5><a href="#" title="#">Ball prosciutto cow </a></h5>
												<p>Breakfast with Egg Salad</p>
											</li>
											<li class="wow fadeInUp" data-wow-delay="0.8s">
												<span class="food-price">$78.00</span>
												<h5><a href="#" title="#">Bresaola capicola tail  </a></h5>
												<p>Breakfast with Egg Salad</p>
											</li>
										</ul>
									</div>
								</div>
								<div class="tab-pane fade" id="link4">
									<div class="chef-box">
										<img src="assets/images/resource/chef.png" alt="">
										<ul>
											<li>
												<span class="food-price">$70.00</span>
												<h5><a href="#" title="#">Accumsan urna orci</a></h5>
												<p>Breakfast with Egg Salad</p>
											</li>
											<li>
												<span class="food-price">$110.00</span>
												<h5><a href="#" title="#">Biltong ribeye shank </a></h5>
												<p>Breakfast with Egg Salad</p>
											</li>
											<li>
												<span class="food-price">$120.00</span>
												<h5><a href="#" title="#">Ball prosciutto cow </a></h5>
												<p>Breakfast with Egg Salad</p>
											</li>
											<li>
												<span class="food-price">$78.00</span>
												<h5><a href="#" title="#">Bresaola capicola tail  </a></h5>
												<p>Breakfast with Egg Salad</p>
											</li>
										</ul>
									</div>
								</div>
								<div class="tab-pane fade" id="link5">
									<div class="chef-box">
										<img src="assets/images/resource/chef.png" alt="">
										<ul>
											<li>
												<span class="food-price">$70.00</span>
												<h5><a href="#" title="#">Accumsan urna orci</a></h5>
												<p>Breakfast with Egg Salad</p>
											</li>
											<li>
												<span class="food-price">$110.00</span>
												<h5><a href="#" title="#">Biltong ribeye shank </a></h5>
												<p>Breakfast with Egg Salad</p>
											</li>
											<li>
												<span class="food-price">$120.00</span>
												<h5><a href="#" title="#">Ball prosciutto cow </a></h5>
												<p>Breakfast with Egg Salad</p>
											</li>
											<li>
												<span class="food-price">$78.00</span>
												<h5><a href="#" title="#">Bresaola capicola tail  </a></h5>
												<p>Breakfast with Egg Salad</p>
											</li>
										</ul>
									</div>
								</div>
							</div>
						</div>					
						<div class="col-md-6 col-sm-12 col-xs-12">
							<div class="food-menu-sec blackish low-opacity">
								<div class="fit-bg" style="background-image: url(assets/images/resource/half-bg.jpg);"></div>
								<i>Website for Restaurant and Cafe</i>
								<h1>Resturant Menu</h1>
								<ul class="tab tab-btn">
									 <li><a href="#link1" data-toggle="tab"><i class="fa fa-angle-double-left"></i>
										 all
										 <img src="assets/images/icon7.png" alt="">
										 </a>
									</li>
									 <li><a href="#link2" data-toggle="tab"><i class="fa fa-angle-double-left"></i>
										 Alcolholic drink
										 <img src="assets/images/icon7.png" alt="">
										 </a>
									</li>
									 <li class="active"><a href="#link3" data-toggle="tab"><i class="fa fa-angle-double-left"></i>
										 Breakfast
										 <img src="assets/images/icon7.png" alt="">
										 </a>
									</li>
									<li><a href="#link4" data-toggle="tab"><i class="fa fa-angle-double-left"></i>
										Dinner
										<img src="assets/images/icon7.png" alt="">
										</a>
									</li>
									<li><a href="#link5" data-toggle="tab"><i class="fa fa-angle-double-left"></i>
										Pancake
										<img src="assets/images/icon7.png" alt="">
										</a>
									</li>
								</ul>
							</div>	
						</div>	
					</div>
				</div>
			</div>
		</section>
		
		<section>
			<div class="block">
                <div class="container">
                    <div class="row">
						<div class="col-md-12 col-sm-12 col-lg-12">
							<div class="title1-wrapper text-center">
								<div class="title1-inner">
									<span>Website for Restaurant and Cafe</span>
									<h2 itemprop="headline">Restaurant Services</h2>
								</div>
							</div>
						</div>	
						<div class="resturent-services remove-ext">
							<div class="col-md-4 col-sm-6">
								<div class="servise-box wow fadeIn" data-wow-delay="0.2s">
									<figure>
										<img src="assets/images/resource/resto-service1.jpg" alt="">
									</figure>
									<div class="uper-meta">
										<i><img src="assets/images/icon1.png" alt=""></i>
										<h4><a href="#" title="">High Quality Food</a></h4>
										<span>About electric do in market</span>
									</div>
								</div>
							</div>
							<div class="col-md-4 col-sm-6">
								<div class="servise-box wow fadeIn" data-wow-delay="0.3s">
									<figure>
										<img src="assets/images/resource/resto-service2.jpg" alt="">
									</figure>
									<div class="uper-meta">
										<i><img src="assets/images/icon2.png" alt=""></i>
										<h4><a href="#" title="">Clean Eating</a></h4>
										<span>About electric do in market</span>
									</div>
								</div>
							</div>
							<div class="col-md-4 col-sm-6">
								<div class="servise-box wow fadeIn" data-wow-delay="0.4s">
									<figure>
										<img src="assets/images/resource/resto-service3.jpg" alt="">
									</figure>
									<div class="uper-meta">
										<i><img src="assets/images/icon3.png" alt=""></i>
										<h4><a href="#" title="">Food Free Delivery</a></h4>
										<span>About electric do in market</span>
									</div>
								</div>
							</div>
							<div class="col-md-4 col-sm-6">
								<div class="servise-box wow fadeIn" data-wow-delay="0.5s">
									<figure>
										<img src="assets/images/resource/resto-service4.jpg" alt="">
									</figure>
									<div class="uper-meta">
										<i><img src="assets/images/icon4.png" alt=""></i>
										<h4><a href="#" title="">Italian Food</a></h4>
										<span>About electric do in market</span>
									</div>
								</div>
							</div>
							<div class="col-md-4 col-sm-6">
								<div class="servise-box wow fadeIn" data-wow-delay="0.6s">
									<figure>
										<img src="assets/images/resource/resto-service5.jpg" alt="">
									</figure>
									<div class="uper-meta">
										<i><img src="assets/images/icon5.png" alt=""></i>
										<h4><a href="#" title="">Russian Food</a></h4>
										<span>About electric do in market</span>
									</div>
								</div>
							</div>
							<div class="col-md-4 col-sm-6">
								<div class="servise-box wow fadeIn" data-wow-delay="0.7s">
									<figure>
										<img src="assets/images/resource/resto-service6.jpg" alt="">
									</figure>
									<div class="uper-meta">
										<i><img src="assets/images/icon6.png" alt=""></i>
										<h4><a href="#" title="">American Food</a></h4>
										<span>About electric do in market</span>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section><!-- our services -->
		
		<section>
            <div class="block gray-bg">
				<div class="top-mockup"><img src="assets/images/resource/mockup2.png" alt=""></div>
                <div class="container">
                    <div class="row">
						<div class="col-md-5 col-sm-5">
							<div class="booking-form-sec wow fadeIn" data-wow-delay="0.2s">
								<div class="fit-bg" style="background-image: url(assets/images/resource/booking-frombg.jpg)"></div>
								<div class="form-meta">
									<h2>Book Your Order</h2>
									<span>Place Your Order Now</span>
									<form method="post">
										<input type="text" placeholder="Name">
										<input type="text" placeholder="Email">
										<input type="text" placeholder="Phone No">
										<button type="submit">place order now</button>
									</form>
								</div>
							</div>
						</div>
						<div class="col-md-7 col-sm-7">
							<div class="upcoming-event">
								<div class="title1-wrapper">
									<i><img alt="" src="assets/images/resource/icon.png"></i>
									<div class="title1-inner">
										<span>Easiest Way To Your Favourite Food</span>
										<h2 itemprop="headline">UPCOMING EVENT</h2>
										<b>Place Your Order Now</b>
									</div>
								</div>
								<div class="article-data">
									<div class="article-info-meta">
										<span>Mon</span>
										<a title="" href="#">25 Sep 2018</a>
										<a title="" href="#">By webinane</a>
									</div>
									<div class="article-meta">
										<h3><a title="" href="#">
												Kick-Start The New Year With The Serpentine Running
											</a>
										</h3>
										<p>
											Pellentesque nibh felis, eleifend id, commodo in, interdum vitae, leo praese
Ut eu ligula. Class aptent taciti sociosqu ad litora torquent conubia.
										</p>
										
									</div>
								</div>
								<div class="counter-meta">
									<ul class="countdown">
										<li class="white-bg">
											<span class="days">00</span>
											<p class="days_ref">Days</p>
										</li>
										<li class="white-bg">
											<span class="hours">00</span>
											<p class="hours_ref">Hours</p>
										</li>
										<li class="white-bg">
											<span class="minutes">00</span>
											<p class="minutes_ref">Minutes</p>
										</li>
										<li class="white-bg">
											<span class="seconds">00</span>
											<p class="seconds_ref">Seconds</p>
										</li>
									</ul>
									<a class="view-more" title="" href="#">view more food</a>
								</div>	
							</div>
						</div>
					</div>	
				</div>
				<div class="bottom-mockup"><img src="assets/images/resource/mockup1.png" alt=""></div>
            </div>
        </section>

        <section>
            <div class="block bottom-padd210">
                <div class="container">
                    <div class="row">
                        <div class="col-md-12 col-sm-12 col-lg-12">
                            <div class="title1-wrapper text-center">
                                <div class="title1-inner">
                                    <span>Website for Restaurant and Cafe</span>
                                    <h2 itemprop="headline">Recent News & Updates</h2>
                                </div>
                            </div>
                            <div class="remove-ext margn-btm">
                                <div class="row">
                                    <div class="col-md-4 col-sm-6 col-lg-4">
                                        <div class="news-box wow fadeIn" data-wow-delay="0.2s">
                                            <div class="news-thumb">
                                                <a class="brd-rd2" href="blog-detail-right-sidebar.html" title="" itemprop="url"><img src="assets/images/resource/news-img1.jpg" alt="news-img1.jpg" itemprop="image"></a>
                                                <div class="news-btns">
                                                    <a class="post-date red-bg" href="#" title="" itemprop="url">JUNE 14</a>
                                                    <a class="read-more" href="blog-detail-right-sidebar.html" itemprop="url">READ MORE</a>
                                                </div>
                                            </div>
                                            <div class="news-info">
                                                <h4 itemprop="headline"><a href="blog-detail-right-sidebar.html" title="" itemprop="url">Floury Bakery is The Best Choice</a></h4>
                                                <p itemprop="description">The only thing bad about the place was the time they .took to provide us with our food</p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-4 col-sm-6 col-lg-4">
                                        <div class="news-box wow fadeIn" data-wow-delay="0.4s">
                                            <div class="news-thumb">
                                                <a class="brd-rd2" href="blog-detail-left-sidebar.html" title="" itemprop="url"><img src="assets/images/resource/news-img2.jpg" alt="news-img2.jpg" itemprop="image"></a>
                                                <div class="news-btns">
                                                    <a class="post-date red-bg" href="#" title="" itemprop="url">AUGUST 14</a>
                                                    <a class="read-more" href="blog-detail-left-sidebar.html" itemprop="url">READ MORE</a>
                                                </div>
                                            </div>
                                            <div class="news-info">
                                                <h4 itemprop="headline"><a href="blog-detail-left-sidebar.html" title="" itemprop="url">Cras venenatis erat ac massa Ultricies</a></h4>
                                                <p itemprop="description">The only thing bad about the place was the time they .took to provide us with our food</p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-4 col-sm-6 col-lg-4">
                                        <div class="news-box wow fadeIn" data-wow-delay="0.6s">
                                            <div class="news-thumb">
                                                <a class="brd-rd2" href="blog-detail.html" title="" itemprop="url"><img src="assets/images/resource/news-img3.jpg" alt="news-img3.jpg" itemprop="image"></a>
                                                <div class="news-btns">
                                                    <a class="post-date red-bg" href="#" title="" itemprop="url">APRIL 14</a>
                                                    <a class="read-more" href="blog-detail.html" itemprop="url">READ MORE</a>
                                                </div>
                                            </div>
                                            <div class="news-info">
                                                <h4 itemprop="headline"><a href="blog-detail.html" title="" itemprop="url">Easy Homemade Shahi Tukda Recipe</a></h4>
                                                <p itemprop="description">The only thing bad about the place was the time they .took to provide us with our food</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <section>
            <div class="block no-padding red-bg">
                <img class="bottom-clouds-mockup" src="assets/images/resource/clouds2.png" alt="clouds2.png" itemprop="image">
                <div class="container">
                    <div class="row">
                        <div class="col-md-12 col-sm-12 col-lg-12">
                            <div class="app-sec">
                                <div class="row">
                                    <div class="col-md-4 hidden-sm col-md-offset-1 col-sm-4 col-sm-offset-0 col-lg-4 col-lg-offset-1">
                                        <div class="app-mockup text-right overlape-110 wow fadeInUp" data-wow-delay="0.2s"><img src="assets/images/resource/app-mockup.png" alt="app-mockup.png" itemprop="image"></div>
                                    </div>
                                    <div class="col-md-6 col-md-offset-1 col-sm-12 col-sm-offset-0 col-lg-6 col-lg-offset-1">
                                        <div class="app-info">
                                            <h4 itemprop="headline">The Best Food Delivery App</h4>
                                            <p itemprop="description">We have a launch team that focuses on one city at a time. At the end of the day, we're a marketplace. In order to make an effective marketplace, you need critical mass. We need enough restaurants that  quality and variety</p>
                                            <div class="app-download-btns">
                                                <a class="" href="#" title="Google Play Store" itemprop="url" target="_blank"><img src="assets/images/resource/app-download-btn1.png" alt="app-download-btn1.png" itemprop="image"></a>
                                                <a class="" href="#" title="Apple App Store" itemprop="url" target="_blank"><img src="assets/images/resource/app-download-btn2.png" alt="app-download-btn2.png" itemprop="image"></a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div><!-- App Section -->
                        </div>
                    </div>
                </div>
            </div>
        </section><!-- red section -->

        <footer>
            <div class="block top-padd80 bottom-padd80 dark-bg">
                <div class="container">
                    <div class="row">
                        <div class="col-md-12 col-sm-12 col-lg-12">
                            <div class="footer-data">
                                <div class="row">
                                    <div class="col-md-3 col-sm-6 col-lg-3">
                                        <div class="widget about_widget wow fadeIn" data-wow-delay="0.1s">
                                            <div class="logo"><h1 itemprop="headline"><a href="#" title="Home" itemprop="url"><img src="assets/images/logo.png" alt="logo.png" itemprop="image"></a></h1></div>
                                            <p itemprop="description">Food Ordering is a Premium HTML Template. Best choice for your online store. Let purchase it to enjoy now</p>
                                            <div class="social2">
                                                <a class="brd-rd50" href="#" title="Facebook" itemprop="url" target="_blank"><i class="fa fa-facebook"></i></a>
                                                <a class="brd-rd50" href="#" title="Google Plus" itemprop="url" target="_blank"><i class="fa fa-google-plus"></i></a>
                                                <a class="brd-rd50" href="#" title="Twitter" itemprop="url" target="_blank"><i class="fa fa-twitter"></i></a>
                                                <a class="brd-rd50" href="#" title="Pinterest" itemprop="url" target="_blank"><i class="fa fa-pinterest"></i></a>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-3 col-sm-6 col-lg-3">
                                        <div class="widget information_links wow fadeIn" data-wow-delay="0.2s">
                                            <h4 class="widget-title" itemprop="headline">INFORMATION</h4>
                                            <ul>
                                                <li><a href="#" title="" itemprop="url">Careers</a></li>
                                                <li><a href="#" title="" itemprop="url">Investor Relations</a></li>
                                                <li><a href="#" title="" itemprop="url">Press Releases</a></li>
                                                <li><a href="#" title="" itemprop="url">Shop with Points</a></li>
                                                <li><a href="#" title="" itemprop="url">More Branches</a></li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="col-md-3 col-sm-6 col-lg-3">
                                        <div class="widget customer_care wow fadeIn" data-wow-delay="0.3s">
                                            <h4 class="widget-title" itemprop="headline">CUSTOMER CARE</h4>
                                            <ul>
                                                <li><a href="#" title="" itemprop="url">Returns</a></li>
                                                <li><a href="#" title="" itemprop="url">Shipping Info</a></li>
                                                <li><a href="#" title="" itemprop="url">Gift Cards</a></li>
                                                <li><a href="#" title="" itemprop="url">Size Guide</a></li>
                                                <li><a href="#" title="" itemprop="url">Money Back</a></li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="col-md-3 col-sm-6 col-lg-3">
                                        <div class="widget get_in_touch wow fadeIn" data-wow-delay="0.4s">
                                            <h4 class="widget-title" itemprop="headline">GET IN TOUCH</h4>
                                            <ul>
                                               <li><i class="fa fa-map-marker"></i> 123 New Design Str, ABC Building, melbourne, Australia.</li>
                                               <li><i class="fa fa-phone"></i> (0044) 8647 1234 587</li>
                                               <li><i class="fa fa-envelope"></i> <a href="#" title="" itemprop="url">hello@yourdomain.com</a></li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div><!-- Footer Data -->
                        </div>
                    </div>
                </div>
            </div>
        </footer><!-- footer -->
        <div class="bottom-bar dark-bg text-center">
            <div class="container">
                <p itemprop="description"><a target="_blank" href="https://www.templateshub.net">Templates Hub</a></p>
            </div>
        </div><!-- Bottom Bar -->

        <div class="log-popup text-center">
            <div class="sign-popup-wrapper brd-rd5">
                <div class="sign-popup-inner brd-rd5">
                    <a class="log-close-btn" href="#" title="" itemprop="url"><i class="fa fa-close"></i></a>
                    <div class="sign-popup-title text-center">
                        <h4 itemprop="headline">SIGN IN</h4>
                        <span>with your social network</span>
                    </div>
                    <div class="popup-social text-center">
                        <a class="facebook brd-rd3" href="#" title="Facebook" itemprop="url" target="_blank"><i class="fa fa-facebook"></i> Facebook</a>
                        <a class="google brd-rd3" href="#" title="Google Plus" itemprop="url" target="_blank"><i class="fa fa-google-plus"></i> Google</a>
                        <a class="twitter brd-rd3" href="#" title="Twitter" itemprop="url" target="_blank"><i class="fa fa-twitter"></i> Twitter</a>
                    </div>
                    <span class="popup-seprator text-center"><i class="brd-rd50">or</i></span>
                    <form class="sign-form">
                        <div class="row">
                            <div class="col-md-12 col-sm-12 col-lg-12">
                                <input class="brd-rd3" type="text" placeholder="Username or Email">
                            </div>
                            <div class="col-md-12 col-sm-12 col-lg-12">
                                <input class="brd-rd3" type="password" placeholder="Password">
                            </div>
                            <div class="col-md-12 col-sm-12 col-lg-12">
                                <button class="red-bg brd-rd3" type="submit">SIGN IN</button>
                            </div>
                            <div class="col-md-12 col-sm-12 col-lg-12">
                                <a class="sign-btn" href="#" title="" itemprop="url">Not a member? Sign up</a>
                                <a class="recover-btn" href="#" title="" itemprop="url">Recover my password</a>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>

        <div class="sign-popup text-center">
            <div class="sign-popup-wrapper brd-rd5">
                <div class="sign-popup-inner brd-rd5">
                    <a class="sign-close-btn" href="#" title="" itemprop="url"><i class="fa fa-close"></i></a>
                    <div class="sign-popup-title text-center">
                        <h4 itemprop="headline">SIGN UP</h4>
                        <span>with your social network</span>
                    </div>
                    <div class="popup-social text-center">
                        <a class="facebook brd-rd3" href="#" title="Facebook" itemprop="url" target="_blank"><i class="fa fa-facebook"></i> Facebook</a>
                        <a class="google brd-rd3" href="#" title="Google Plus" itemprop="url" target="_blank"><i class="fa fa-google-plus"></i> Google</a>
                        <a class="twitter brd-rd3" href="#" title="Twitter" itemprop="url" target="_blank"><i class="fa fa-twitter"></i> Twitter</a>
                    </div>
                    <span class="popup-seprator text-center"><i class="brd-rd50">or</i></span>
                    <form class="sign-form">
                        <div class="row">
                            <div class="col-md-12 col-sm-12 col-lg-12">
                                <input class="brd-rd3" type="text" placeholder="Username">
                            </div>
                            <div class="col-md-12 col-sm-12 col-lg-12">
                                <input class="brd-rd3" type="email" placeholder="Email">
                            </div>
                            <div class="col-md-12 col-sm-12 col-lg-12">
                                <input class="brd-rd3" type="password" placeholder="Password">
                            </div>
                            <div class="col-md-12 col-sm-12 col-lg-12">
                                <button class="red-bg brd-rd3" type="submit">REGISTER NOW</button>
                            </div>
                            <div class="col-md-12 col-sm-12 col-lg-12">
                                <a class="sign-btn" href="#" title="" itemprop="url">Already Registered? Sign in</a>
                                <a class="recover-btn" href="#" title="" itemprop="url">Recover my password</a>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </main><!-- Main Wrapper -->

    <%@include file="commonjs.jsp" %>
   
</body>	

</html>