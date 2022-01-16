<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import = "com.e_catering_system.bean.User" %>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="" />
<meta name="keywords" content="" />
<title>Food Ordering HTML Template</title>
<%@include file="commoncss.jsp"%>
<style>
*,
*::before,
*::after {
  box-sizing: border-box;
}
select {
  background-color: transparent;
  border: none;
  padding: 0 1em 0 0;
  margin: 0;
  outline: none;
  width: 130%;
  height: 100%;
  font-family: inherit;
  font-size: inherit;
  cursor: inherit;
  line-height: inherit;
}
:root {
  --select-border: #777;
  --select-focus: red;
  --select-arrow: var(--select-border);
}
.select {
  width: 130%;
  height: 100%;
  min-width: 15ch;
  max-width: 30ch;
  border: 0px solid var(--select-border);
  padding: 0.25em 0.5em;
  font-size: 1.25rem;
  cursor: pointer;
  line-height: 1.1;
  background-color: #fff;
}

</style>
</head>
<body itemscope>
	<main>
		<section>
			<div class="block">
				<div style="background-image: url(assets/images/topbg.jpg);"
					class="fixed-bg"></div>
				<div class="restaurant-searching text-center">
					<div class="restaurant-searching-inner">
						<h2 itemprop="headline">
							 <span>Book Caterer And Decoration Service From Our Site</span> 
						</h2>
						<form method = "get" class="restaurant-search-form brd-rd2" action = "restaurant-found.jsp">
							<div class="row mrg10">
								<div class="col-md-6 col-sm-5 col-lg-5 col-xs-12">
									<div class="input-field brd-rd2">
										<input class="brd-rd2" type="text"
											placeholder="Event" readonly>
									</div>
								</div>
								<div class="col-md-4 col-sm-4 col-lg-4 col-xs-12">
									<div class="input-field brd-rd2">
									<div class="select">
										<!--<input class="brd-rd2"
											type="text" placeholder="Search Location"> -->
									<select  id = "event" name = "event" onchange = "getEvent()">
										<option value = "default">Select Event</option>
										<option value = "Marriage">Marriage</option>
										<option value = "Birthday Party">Birthday Party</option>
										<option value = "Anniversary">Anniversary</option>
										<option value = "Corporate Party">Corporate Party</option>
										<option value = "Ring Ceremony">Ring Ceremony</option>
										<option value = "Other Event">Other Event</option>
									</select>
									
									</div>
									</div>
								</div>
								<div class="col-md-2 col-sm-3 col-lg-3 col-xs-12">
									<button type = "submit" id = "eventtab" class="brd-rd2 red-bg" onclick = "return takeToEvent()">SEARCH</button>
								</div>
							</div>
						</form>
						<!--<div class="funfacts">
							<div class="col-md-3 col-sm-6 col-lg-3">
								<div class="fact-box">
									<i class="brd-rd50"><img
										src="assets/images/resource/fact-icon1.png" alt="fact-icon1"
										itemprop="image"></i>
									<div class="fact-inner">
										<strong><span class="counter">137</span></strong>
										<h5>Restaurant</h5>
									</div>
								</div>
								<!-- Fact Box 
							</div>
							<div class="col-md-3 col-sm-6 col-lg-3">
								<div class="fact-box">
									<i class="brd-rd50"><img
										src="assets/images/resource/fact-icon2.png" alt="fact-icon2"
										itemprop="image"></i>
									<div class="fact-inner">
										<strong><span class="counter">158</span></strong>
										<h5>People Served</h5>
									</div>
								</div>
								<!-- Fact Box
							</div>
							<div class="col-md-3 col-sm-6 col-lg-3">
								<div class="fact-box">
									<i class="brd-rd50"><img
										src="assets/images/resource/fact-icon3.png" alt="fact-icon3"
										itemprop="image"></i>
									<div class="fact-inner">
										<strong><span class="counter">659</span>K</strong>
										<h5>Happy Service</h5>
									</div>
								</div>
								<!-- Fact Box 
							</div>
							<div class="col-md-3 col-sm-6 col-lg-3">
								<div class="fact-box">
									<i class="brd-rd50"><img
										src="assets/images/resource/fact-icon4.png" alt="fact-icon4"
										itemprop="image"></i>
									<div class="fact-inner">
										<strong><span class="counter">235</span></strong>
										<h5>Regular users</h5>
									</div>
								</div>
								<!-- Fact Box 
							</div>
						</div>
						<!-- Fun Facts -->
					</div> 
					<!--   <img class="left-scooty-mockup"
						src="assets/images/resource/restaurant-mockup1.png"
						alt="restaurant-mockup1.png" itemprop="image"> <img
						class="bottom-clouds-mockup"
						src="assets/images/resource/clouds.png" alt="clouds.png"
						itemprop="image"> -->
				</div>
				<!-- Restaurant Searching -->
			</div>
		</section>

		<section>
			<div class="block remove-bottom">
				<div class="container">
					<div class="row">
						<div class="col-md-12 col-sm-12 col-lg-12">
							<div class="title1-wrapper text-center">
								<div class="title1-inner">
									<h2 itemprop="headline">GUPTA CATERERS</h2>
									<p itemprop="description">Gupta Catering and Decoration established in 2000. Since, 20 years they are providing best catering and decoration services to all their customers, this place is synonymous with delicious food that can satiate all food cravings.It is home to some of the most appreciated cuisines which include North Indian, Chinese, Rajasthani.</p>
								</div>
							</div>
							<!--<div class="top-restaurants-wrapper">
								<ul class="restaurants-wrapper style2">
									<li class="wow bounceIn" data-wow-delay="0.2s"><div
											class="top-restaurant">
											<a class="brd-rd50" href="#" title="Restaurant 1"
												itemprop="url"><img
												src="assets/images/resource/top-restaurant1.png"
												alt="top-restaurant1.png" itemprop="image"></a>
										</div></li>
									<li class="wow bounceIn" data-wow-delay="0.4s"><div
											class="top-restaurant">
											<a class="brd-rd50" href="#" title="Restaurant 2"
												itemprop="url"><img
												src="assets/images/resource/top-restaurant2.png"
												alt="top-restaurant2.png" itemprop="image"></a>
										</div></li>
									<li class="wow bounceIn" data-wow-delay="0.6s"><div
											class="top-restaurant">
											<a class="brd-rd50" href="#" title="Restaurant 3"
												itemprop="url"><img
												src="assets/images/resource/top-restaurant3.png"
												alt="top-restaurant3.png" itemprop="image"></a>
										</div></li>
									<li class="wow bounceIn" data-wow-delay="0.8s"><div
											class="top-restaurant">
											<a class="brd-rd50" href="#" title="Restaurant 4"
												itemprop="url"><img
												src="assets/images/resource/top-restaurant4.png"
												alt="top-restaurant4.png" itemprop="image"></a>
										</div></li>
									<li class="wow bounceIn" data-wow-delay="1s"><div
											class="top-restaurant">
											<a class="brd-rd50" href="#" title="Restaurant 5"
												itemprop="url"><img
												src="assets/images/resource/top-restaurant5.png"
												alt="top-restaurant5.png" itemprop="image"></a>
										</div></li>
									<li class="wow bounceIn" data-wow-delay="1.2s"><div
											class="top-restaurant">
											<a class="brd-rd50" href="#" title="Restaurant 5"
												itemprop="url"><img
												src="assets/images/resource/top-restaurant6.png"
												alt="top-restaurant6.png" itemprop="image"></a>
										</div></li>
								</ul>
							</div> -->
						</div>
					</div>
				</div>
			</div>
		</section>
		<!-- top resturents -->

		<section>
			<div class="block">
				<div class="container">
					<div class="row">
						<div class="col-md-12 col-sm-12 col-lg-12">
							<div class="title1-wrapper text-center">
								<div class="title1-inner">
									<span>Your Favourite Food</span>
									<h2 itemprop="headline">Choose & Enjoy</h2>
								</div>
							</div>
							<div class="row remove-ext5">
								<div class="col-md-4 col-sm-6 col-lg-4">
									<div class="popular-dish-box wow fadeIn" data-wow-delay="0.2s">
										<div class="popular-dish-thumb">
											<a href="food-detail.html" title="" itemprop="url"><img
												src="assets/images/resource/popular-dish-img1.jpg"
												alt="popular-dish-img1.jpg" itemprop="image"></a> <span
												class="post-rate yellow-bg brd-rd2"><i
												class="fa fa-star-o"></i> 4.25</span> <span
												class="post-likes brd-rd4"><i class="fa fa-heart-o"></i>
												12</span>
										</div>
										<div class="popular-dish-info">
											<h4 itemprop="headline">
												<a href="food-detail.html" title="" itemprop="url">
													Maenaam Thai Restaurant</a>
											</h4>
											<p itemprop="description">Lorem Ipsum is simply dummy
												text of the printing and typesetting industry</p>
											<span class="price">$85.00</span> <a class="brd-rd2"
												href="food-detail.html" title="Order Now" itemprop="url">Order
												Now</a>
											<div class="restaurant-info">
												<img src="assets/images/resource/restaurant-logo1.png"
													alt="restaurant-logo1.png" itemprop="image">
												<div class="restaurant-info-inner">
													<h6 itemprop="headline">
														<a href="restaurant-detail.html" title="" itemprop="url">Fabio
															al Porto Ristorante</a>
													</h6>
													<span class="red-clr">5th Avenue New York 68</span>
												</div>
											</div>
										</div>
									</div>
									<!-- Popular Dish Box -->
								</div>
								<div class="col-md-4 col-sm-6 col-lg-4">
									<div class="popular-dish-box wow fadeIn" data-wow-delay="0.4s">
										<div class="popular-dish-thumb">
											<a href="food-detail.html" title="" itemprop="url"><img
												src="assets/images/resource/popular-dish-img2.jpg"
												alt="popular-dish-img2.jpg" itemprop="image"></a> <span
												class="post-rate yellow-bg brd-rd2"><i
												class="fa fa-star-o"></i> 3.25</span> <span
												class="post-likes brd-rd4"><i class="fa fa-heart-o"></i>
												10</span>
										</div>
										<div class="popular-dish-info">
											<h4 itemprop="headline">
												<a href="food-detail.html" title="" itemprop="url">
													Champignon somen Noodles</a>
											</h4>
											<p itemprop="description">Lorem Ipsum is simply dummy
												text of the printing and typesetting industry</p>
											<span class="price">$70.00</span> <a class="brd-rd2"
												href="food-detail.html" title="Order Now" itemprop="url">Order
												Now</a>
											<div class="restaurant-info">
												<img src="assets/images/resource/restaurant-logo1.png"
													alt="restaurant-logo2.png" itemprop="image">
												<div class="restaurant-info-inner">
													<h6 itemprop="headline">
														<a href="restaurant-detail.html" title="" itemprop="url">Fabio
															al Porto Ristorante</a>
													</h6>
													<span class="red-clr">5th Avenue New York 68</span>
												</div>
											</div>
										</div>
									</div>
									<!-- Popular Dish Box -->
								</div>
								<div class="col-md-4 col-sm-6 col-lg-4">
									<div class="popular-dish-box wow fadeIn" data-wow-delay="0.6s">
										<div class="popular-dish-thumb">
											<a href="food-detail.html" title="" itemprop="url"><img
												src="assets/images/resource/popular-dish-img3.jpg"
												alt="popular-dish-img3.jpg" itemprop="image"></a> <span
												class="post-rate yellow-bg brd-rd2"><i
												class="fa fa-star-o"></i> 5.00</span> <span
												class="post-likes brd-rd4"><i class="fa fa-heart-o"></i>
												15</span>
										</div>
										<div class="popular-dish-info">
											<h4 itemprop="headline">
												<a href="food-detail.html" title="" itemprop="url">
													Tomatoes & Clams Pasta</a>
											</h4>
											<p itemprop="description">Lorem Ipsum is simply dummy
												text of the printing and typesetting industry</p>
											<span class="price">$99.00</span> <a class="brd-rd2"
												href="food-detail.html" title="Order Now" itemprop="url">Order
												Now</a>
											<div class="restaurant-info">
												<img src="assets/images/resource/restaurant-logo1.png"
													alt="restaurant-logo3.png" itemprop="image">
												<div class="restaurant-info-inner">
													<h6 itemprop="headline">
														<a href="restaurant-detail.html" title="" itemprop="url">Fabio
															al Porto Ristorante</a>
													</h6>
													<span class="red-clr">5th Avenue New York 68</span>
												</div>
											</div>
										</div>
									</div>
									<!-- Popular Dish Box -->
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
		<!-- choose and enjoy meal -->

		<section>
			<div class="block grayish low-opacity">
				<div class="fixed-bg"
					style="background-image: url(assets/images/pattern.png)"></div>
				<div class="top-mockup">
					<img src="assets/images/resource/mockup2.png" alt="">
				</div>
				<div class="container">
					<div class="row">
						<div class="col-md-12 col-sm-12 col-lg-12 col-xs-12">
							<div class="filters-wrapper">
								<div class="title1-wrapper text-center">
									<div class="title1-inner">
										<span>Your Favourite Food</span>
										<h2 itemprop="headline">Popular This Month</h2>
										<b>In Your City</b>
									</div>
								</div>
							</div>
						</div>
						<div class="col-md-4 col-xs-12">
							<div class="dishes-caro">
								<div class="dish-item">
									<figure>
										<img src="assets/images/resource/dish-caro1.jpg" alt="">
									</figure>
									<div class="item-meta">
										<img src="assets/images/resource/restaurant-logo2.png" alt="">
										<div>
											<span>Jagnetina Na Raznju</span>
											<p>68 5th Avenue New York</p>
										</div>
									</div>
									<div class="caro-dish-name">
										<h4>Korean Bibimbap Yamyam</h4>
										<span>$10.00–$30.00</span>
									</div>
								</div>
								<div class="dish-item">
									<figure>
										<img src="assets/images/resource/dish-caro1.jpg" alt="">
									</figure>
									<div class="item-meta">
										<img src="assets/images/resource/restaurant-logo3.png" alt="">
										<div>
											<span>Central Caffe Pizzeria</span>
											<p>68 5th Avenue New York</p>
										</div>
									</div>
									<div class="caro-dish-name">
										<h4>Korean Bibimbap Yamyam</h4>
										<span>$10.00–$30.00</span>
									</div>
								</div>
								<div class="dish-item">
									<figure>
										<img src="assets/images/resource/dish-caro1.jpg" alt="">
									</figure>
									<div class="item-meta">
										<img src="assets/images/resource/restaurant-logo4.png" alt="">
										<div>
											<span>Dream Food By Opaq</span>
											<p>68 5th Avenue New York</p>
										</div>
									</div>
									<div class="caro-dish-name">
										<h4>Korean Bibimbap Yamyam</h4>
										<span>$10.00–$30.00</span>
									</div>
								</div>
							</div>
						</div>
						<div class="col-md-8 col-xs-12">
							<div class="popular-of-month">
								<div class="pop-dish wow fadeIn" data-wow-delay="0.1s">
									<div class="poplr-dish">
										<img src="assets/images/resource/round-pic1.jpg" alt="">
										<div class="dish-meta">
											<span>$10.00–$30.00</span>
											<h4>
												<a href="#" title="">Tequila & Lime hake</a>
											</h4>
										</div>
									</div>
									<div class="item-meta">
										<img alt="" src="assets/images/resource/restaurant-logo2.png">
										<div>
											<span>Jagnetina Na Raznju</span>
											<p>68 5th Avenue New York</p>
										</div>
									</div>
								</div>
								<div class="pop-dish wow fadeIn" data-wow-delay="0.2s">
									<div class="poplr-dish">
										<img src="assets/images/resource/round-pic2.jpg" alt="">
										<div class="dish-meta">
											<span>$10.00–$30.00</span>
											<h4>
												<a href="#" title="">Maximus nibh facilisis</a>
											</h4>
										</div>
									</div>
									<div class="item-meta">
										<img alt="" src="assets/images/resource/restaurant-logo3.png">
										<div>
											<span>Central Caffe Pizzeria</span>
											<p>68 5th Avenue New York</p>
										</div>
									</div>
								</div>
								<div class="pop-dish wow fadeIn" data-wow-delay="0.3s">
									<div class="poplr-dish">
										<img src="assets/images/resource/round-pic3.jpg" alt="">
										<div class="dish-meta">
											<span>$10.00–$30.00</span>
											<h4>
												<a href="#" title="">Hendrerit nisi venenatis</a>
											</h4>
										</div>
									</div>
									<div class="item-meta">
										<img alt="" src="assets/images/resource/restaurant-logo4.png">
										<div>
											<span>Dream Food By Opaq</span>
											<p>68 5th Avenue New York</p>
										</div>
									</div>
								</div>
								<div class="pop-dish">
									<div class="poplr-dish wow fadeIn" data-wow-delay="0.4s">
										<img src="assets/images/resource/round-pic4.jpg" alt="">
										<div class="dish-meta">
											<span>$10.00–$30.00</span>
											<h4>
												<a href="#" title="">Grilled Shrimp Scampi</a>
											</h4>
										</div>
									</div>
									<div class="item-meta">
										<img alt="" src="assets/images/resource/restaurant-logo5.png">
										<div>
											<span>Fabio Al Porto Ristorante</span>
											<p>68 5th Avenue New York</p>
										</div>
									</div>
								</div>
							</div>
							<div class="rite-meta">
								<a href="#" title="" class="view-more">view more food</a>
							</div>
						</div>
					</div>
				</div>
				<div class="bottom-mockup">
					<img src="assets/images/resource/mockup1.png" alt="">
				</div>
			</div>
		</section>

		<section>
			<div class="block blackish low-opacity">
				<div class="fixed-bg"
					style="background-image: url(assets/images/parallax1.jpg);"></div>
				<div class="container">
					<div class="row">
						<div class="col-md-12 col-sm-12 col-lg-12">
							<div class="title1-wrapper text-center">
								<div class="title1-inner">
									<span>Website for Restaurant and Cafe</span>
									<h2 class="text-white" itemprop="headline">easy order in 3
										steps</h2>
								</div>
							</div>
							<div class="remove-ext text-center">
								<div class="row">
									<div class="col-md-4 col-sm-4 col-lg-4">
										<div class="step-box wow fadeIn" data-wow-delay="0.2s">
											<i><img src="assets/images/resource/setp-img1.png"
												alt="setp-img1.png" itemprop="image"> <span
												class="brd-rd50 red-bg">1</span></i>
											<div class="setp-box-inner">
												<h4 itemprop="headline">Explore Restaurants</h4>
												<p itemprop="description">Lorem Ipsum is simply dummy
													text of the printing and typesetting industry</p>
											</div>
										</div>
										<!-- Step Box -->
									</div>
									<div class="col-md-4 col-sm-4 col-lg-4">
										<div class="step-box wow fadeIn" data-wow-delay="0.4s">
											<i><img src="assets/images/resource/setp-img2.png"
												alt="setp-img2.png" itemprop="image"> <span
												class="brd-rd50 red-bg">2</span></i>
											<div class="setp-box-inner">
												<h4 itemprop="headline">Choose a Tasty Dish</h4>
												<p itemprop="description">Lorem Ipsum is simply dummy
													text of the printing and typesetting industry</p>
											</div>
										</div>
										<!-- Step Box --> 
									</div>
									<div class="col-md-4 col-sm-4 col-lg-4">
										<div class="step-box wow fadeIn" data-wow-delay="0.6s">
											<i><img src="assets/images/resource/setp-img3.png"
												alt="setp-img3.png" itemprop="image"> <span
												class="brd-rd50 red-bg">3</span></i>
											<div class="setp-box-inner">
												<h4 itemprop="headline">Follow The Status</h4>
												<p itemprop="description">Lorem Ipsum is simply dummy
													text of the printing and typesetting industry</p>
											</div>
										</div>
										<!-- Step Box -->
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section> 

		<!--<section>
			<div class="block">
				<div class="container">
					<div class="row">
						<div class="col-md-12 col-sm-12 col-lg-12">
							<div class="title1-wrapper text-center">
								<div class="title1-inner">
									<span>Website for Restaurant and Cafe</span>
									<h2 itemprop="headline">Featured resturents</h2>
								</div>
							</div>
							<div class="featured-restaurants-wrapper">
								<div class="row">
									<div class="col-md-6 col-sm-12 col-lg-6">
										<div class="featured-restaurants-list">
											<div class="featured-restaurant-box wow fadeIn"
												data-wow-delay="0.1s">
												<div class="featured-restaurant-thumb">
													<a href="food-detail.html" title="" itemprop="url"><img
														class="brd-rd2"
														src="assets/images/resource/featured-restaurant-img1.jpg"
														alt="featured-restaurant-img1.jpg" itemprop="image"></a>
												</div>
												<div class="featured-restaurant-info">
													<span class="red-clr">5th Avenue New York 68</span>
													<h4 itemprop="headline">
														<a href="food-detail.html" title="" itemprop="url">Tuna
															Roast Source</a>
													</h4>
													<span class="price">$85.00</span>

													<ul class="post-meta">
														<li><i class="fa fa-check-circle-o"></i> Min order
															$50</li>
														<li><i class="flaticon-transport"></i> 30min</li>
													</ul>
													<span class="post-rate yellow-bg brd-rd2"><i
														class="fa fa-star-o"></i> 4.25</span>
												</div>
											</div>
											<div class="featured-restaurant-box wow fadeIn"
												data-wow-delay="0.2s">
												<div class="featured-restaurant-thumb">
													<a href="food-detail.html" title="" itemprop="url"><img
														class="brd-rd2"
														src="assets/images/resource/featured-restaurant-img2.jpg"
														alt="featured-restaurant-img2.jpg" itemprop="image"></a>
												</div>
												<div class="featured-restaurant-info">
													<span class="red-clr">5th Avenue New York 68</span>
													<h4 itemprop="headline">
														<a href="food-detail.html" title="" itemprop="url">Crab
															With Curry Sources</a>
													</h4>
													<span class="price">$70.00</span>

													<ul class="post-meta">
														<li><i class="fa fa-check-circle-o"></i> Min order
															$40</li>
														<li><i class="flaticon-transport"></i> 20min</li>
													</ul>
													<span class="post-rate yellow-bg brd-rd2"><i
														class="fa fa-star-o"></i> 4.03</span>
												</div>
											</div>
											<div class="featured-restaurant-box wow fadeIn"
												data-wow-delay="0.3s">
												<div class="featured-restaurant-thumb">
													<a href="food-detail.html" title="" itemprop="url"><img
														class="brd-rd2"
														src="assets/images/resource/featured-restaurant-img3.jpg"
														alt="featured-restaurant-img3.jpg" itemprop="image"></a>
												</div>
												<div class="featured-restaurant-info">
													<span class="red-clr">5th Avenue New York 68</span>
													<h4 itemprop="headline">
														<a href="food-detail.html" title="" itemprop="url">Imported
															Salmon Steak</a>
													</h4>
													<span class="price">$90.00</span>

													<ul class="post-meta">
														<li><i class="fa fa-check-circle-o"></i> Min order
															$60</li>
														<li><i class="flaticon-transport"></i> 45min</li>
													</ul>
													<span class="post-rate yellow-bg brd-rd2"><i
														class="fa fa-star-o"></i> 5.00</span>
												</div>
											</div>
										</div>
										<!-- Featured Restaurants List 
									</div>
									<div class="col-md-6 col-sm-12 col-lg-6">
										<div class="featured-restaurant-gallery">
											<div class="featured-restaurant-carousel">
												<div class="featured-restaurant-thumb">
													<img class="brd-rd2"
														src="assets/images/resource/featured-restaurant-gallery1.jpg"
														alt="featured-restaurant-gallery1.jpg" itemprop="image">
												</div>
												<div class="featured-restaurant-thumb">
													<img class="brd-rd2"
														src="assets/images/resource/featured-restaurant-gallery2.jpg"
														alt="featured-restaurant-gallery2.jpg" itemprop="image">
												</div>
											</div>
											<div class="featured-restaurant-box">
												<div class="featured-restaurant-thumb">
													<a class="red-bg brd-rd2" data-fancybox
														href="https://vimeo.com/49674259" title="Click To Play"
														itemprop="url"><i class="fa fa-play"></i></a> <span
														class="video-time">15mint</span>
												</div>
												<div class="featured-restaurant-info">
													<span class="red-clr">5th Avenue New York 68</span>
													<h4 itemprop="headline">
														<a href="food-detail.html" title="" itemprop="url">Maenaam
															Thai Restaurant</a>
													</h4>
													<span class="price">$85.00</span>

													<ul class="post-meta">
														<li><i class="fa fa-check-circle-o"></i> Min order
															$50</li>
														<li><i class="flaticon-transport"></i> 30min</li>
													</ul>
													<span class="post-rate yellow-bg brd-rd2"><i
														class="fa fa-star-o"></i> 4.25</span>
												</div>
											</div>
										</div>
										<!-- Featured Restaurant Gallery
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section> -->

		<section>
			<div class="block grayish low-opacity ">
				<div class="fixed-bg"
					style="background-image: url(assets/images/pattern.png)"></div>
				<div class="container">
					<div class="row">
						<div class="col-md-12 col-sm-12 col-lg-12">
							<div class="filters-wrapper">
								<div class="title1-wrapper text-center">
									<div class="title1-inner">
										<span>Your Favourite Food</span>
										<h2 itemprop="headline">choose your food</h2>
									</div>
								</div>
								<ul class="filter-buttons center ext-btm20">
									<li class="active"><a class="brd-rd30" data-filter="*"
										href="#" itemprop="url">All</a></li>
									<li><a class="brd-rd30" data-filter=".filter-item1"
										href="#" itemprop="url">Beverages</a></li>
									<li><a class="brd-rd30" data-filter=".filter-item2"
										href="#" itemprop="url">Burgers</a></li>
									<li><a class="brd-rd30" data-filter=".filter-item3"
										href="#" itemprop="url">Pasta</a></li>
								</ul>
								<!-- Filter Buttons -->
								<div class="filters-inner">
									<div class="row">
										<div class="masonry">
											<div
												class="col-md-6 col-sm-6 col-lg-6 filter-item filter-item1">
												<div
													class="featured-restaurant-box style2 brd-rd12 wow fadeIn"
													data-wow-delay="0.1s">
													<div class="featured-restaurant-thumb">
														<a href="restaurant-detail.html" title="" itemprop="url"><img
															src="assets/images/resource/most-popular-img1-1.png"
															alt="most-popular-img1-1.png" itemprop="image"></a>
													</div>
													<div class="featured-restaurant-info">
														<span class="red-clr">5th Avenue New York 68</span>
														<h4 itemprop="headline">
															<a href="restaurant-detail.html" title="" itemprop="url">Domino's
																Pizza</a>
														</h4>
														<span class="food-types">Type of food: <a href="#"
															title="" itemprop="url">Apple Juice</a>, <a href="#"
															title="" itemprop="url">BB.Q</a>, <a href="#" title=""
															itemprop="url">Beef Roast</a></span>
														<ul class="post-meta">
															<li><i class="fa fa-check-circle-o"></i> Min order
																$50</li>
															<li><i class="flaticon-transport"></i> 30min</li>
															<li><i class="flaticon-money"></i> Accepts cash &
																online payments</li>
														</ul>
														<span class="post-rate yellow-bg brd-rd2"><i
															class="fa fa-star-o"></i> 4.25</span> <span
															class="post-likes style2 red-clr"><i
															class="fa fa-heart-o"></i> 12</span> <a class="brd-rd5"
															href="restaurant-detail.html" title="Order Online">Order
															Now</a>
													</div>
												</div>
											</div>
											<div
												class="col-md-6 col-sm-6 col-lg-6 filter-item filter-item2">
												<div
													class="featured-restaurant-box style2 brd-rd12 wow fadeIn"
													data-wow-delay="0.2s">
													<div class="featured-restaurant-thumb">
														<a href="restaurant-detail.html" title="" itemprop="url"><img
															src="assets/images/resource/most-popular-img1-2.png"
															alt="most-popular-img1-2.png" itemprop="image"></a>
													</div>
													<div class="featured-restaurant-info">
														<span class="red-clr">5th Avenue New York 68</span>
														<h4 itemprop="headline">
															<a href="restaurant-detail.html" title="" itemprop="url">Burger
																King</a>
														</h4>
														<span class="food-types">Type of food: <a href="#"
															title="" itemprop="url">Apple Juice</a>, <a href="#"
															title="" itemprop="url">BB.Q</a>, <a href="#" title=""
															itemprop="url">Beef Roast</a></span>
														<ul class="post-meta">
															<li><i class="fa fa-check-circle-o"></i> Min order
																$50</li>
															<li><i class="flaticon-transport"></i> 30min</li>
															<li><i class="flaticon-money"></i> Accepts cash &
																online payments</li>
														</ul>
														<span class="post-rate yellow-bg brd-rd2"><i
															class="fa fa-star-o"></i> 4.25</span> <span
															class="post-likes style2 red-clr"><i
															class="fa fa-heart-o"></i> 12</span> <a class="brd-rd5"
															href="restaurant-detail.html" title="Order Online">Order
															Now</a>
													</div>
												</div>
											</div>
											<div
												class="col-md-6 col-sm-6 col-lg-6 filter-item filter-item3">
												<div
													class="featured-restaurant-box style2 brd-rd12 wow fadeIn"
													data-wow-delay="0.3s">
													<div class="featured-restaurant-thumb">
														<a href="restaurant-detail.html" title="" itemprop="url"><img
															src="assets/images/resource/most-popular-img1-3.png"
															alt="most-popular-img1-3.png" itemprop="image"></a>
													</div>
													<div class="featured-restaurant-info">
														<span class="red-clr">5th Avenue New York 68</span>
														<h4 itemprop="headline">
															<a href="restaurant-detail.html" title="" itemprop="url">Wendy's
																Cafe</a>
														</h4>
														<span class="food-types">Type of food: <a href="#"
															title="" itemprop="url">Apple Juice</a>, <a href="#"
															title="" itemprop="url">BB.Q</a>, <a href="#" title=""
															itemprop="url">Beef Roast</a></span>
														<ul class="post-meta">
															<li><i class="fa fa-check-circle-o"></i> Min order
																$50</li>
															<li><i class="flaticon-transport"></i> 30min</li>
															<li><i class="flaticon-money"></i> Accepts cash &
																online payments</li>
														</ul>
														<span class="post-rate yellow-bg brd-rd2"><i
															class="fa fa-star-o"></i> 4.25</span> <span
															class="post-likes style2 red-clr"><i
															class="fa fa-heart-o"></i> 12</span> <a class="brd-rd5"
															href="restaurant-detail.html" title="Order Online">Order
															Now</a>
													</div>
												</div>
											</div>
											<div
												class="col-md-6 col-sm-6 col-lg-6 filter-item filter-item1 filter-item2 filter-item3">
												<div
													class="featured-restaurant-box style2 brd-rd12 wow fadeIn"
													data-wow-delay="0.4s">
													<div class="featured-restaurant-thumb">
														<a href="restaurant-detail.html" title="" itemprop="url"><img
															src="assets/images/resource/most-popular-img1-4.png"
															alt="most-popular-img1-4.png" itemprop="image"></a>
													</div>
													<div class="featured-restaurant-info">
														<span class="red-clr">5th Avenue New York 68</span>
														<h4 itemprop="headline">
															<a href="restaurant-detail.html" title="" itemprop="url">Restaurant</a>
														</h4>
														<span class="food-types">Type of food: <a href="#"
															title="" itemprop="url">Apple Juice</a>, <a href="#"
															title="" itemprop="url">BB.Q</a>, <a href="#" title=""
															itemprop="url">Beef Roast</a></span>
														<ul class="post-meta">
															<li><i class="fa fa-check-circle-o"></i> Min order
																$50</li>
															<li><i class="flaticon-transport"></i> 30min</li>
															<li><i class="flaticon-money"></i> Accepts cash &
																online payments</li>
														</ul>
														<span class="post-rate yellow-bg brd-rd2"><i
															class="fa fa-star-o"></i> 4.25</span> <span
															class="post-likes style2 red-clr"><i
															class="fa fa-heart-o"></i> 12</span> <a class="brd-rd5"
															href="restaurant-detail.html" title="Order Online">Order
															Now</a>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
							<!-- Filters Wrapper -->
						</div>
					</div>
				</div>
			</div>
		</section>

		<!--  <section>
			<div class="block bottom-padd210">
				<div class="container">
					<div class="row">
						<div class="col-md-12">
							<div class="title1-wrapper text-center">
								<div class="title1-inner">
									<span>Website for Restaurant and Cafe</span>
									<h2 itemprop="headline">Featured resturents</h2>
								</div>
							</div>
						</div>
						<div class="col-md-4 col-sm-6 col-lg-4">
							<div class="article-dev wow fadeIn" data-wow-delay="0.2s">
								<figure>
									<img src="assets/images/resource/article1.jpg" alt="">
								</figure>
								<div class="article-data">
									<div class="article-info-meta">
										<span>thu</span> <a href="#" title="">15 dec 2018</a> <a
											href="#" title="">By webinane</a>
									</div>
									<div class="article-meta">
										<h3>
											<a href="#" title=""> Special Food Recipes For
												DpecialOccasions. </a>
										</h3>
										<div class="like-meta">
											<span><i class="fa fa-heart-o"></i> 12</span> <span><i
												class="fa fa-comment-o"></i> 7</span>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="col-md-4 col-sm-6 col-lg-4">
							<div class="article-dev wow fadeIn" data-wow-delay="0.4s">
								<figure>
									<img src="assets/images/resource/article2.jpg" alt="">
								</figure>
								<div class="article-data">
									<div class="article-info-meta">
										<span>Mon</span> <a href="#" title="">25 Sep 2018</a> <a
											href="#" title="">By webinane</a>
									</div>
									<div class="article-meta">
										<h3>
											<a href="#" title=""> Candy Canes Wafer Sweet Roll 2 </a>
										</h3>
										<div class="like-meta">
											<span><i class="fa fa-heart-o"></i> 12</span> <span><i
												class="fa fa-comment-o"></i> 7</span>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="col-md-4 col-sm-6 col-lg-4">
							<div class="article-dev wow fadeIn" data-wow-delay="0.6s">
								<figure>
									<img src="assets/images/resource/article3.jpg" alt="">
								</figure>
								<div class="article-data">
									<div class="article-info-meta">
										<span>Wed</span> <a href="#" title="">11 july 2018</a> <a
											href="#" title="">By webinane</a>
									</div>
									<div class="article-meta">
										<h3>
											<a href="#" title=""> Cheesecake Pastry Marshmallow </a>
										</h3>
										<div class="like-meta">
											<span><i class="fa fa-heart-o"></i> 12</span> <span><i
												class="fa fa-comment-o"></i> 7</span>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section> -->

		<%--
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
        </section><!-- red section --> --%>

		<%@include file="Footer.jsp"%>


		<%--  <div class="newsletter-popup-wrapper text-center">
            <div class="newsletter-popup-inner" style="background-image: url(assets/images/newsletter-bg.jpg);">
                <a class="close-btn brd-rd50" href="#" title="Close Button" itemprop="url"><i class="fa fa-close"></i></a>
                <h3 itemprop="headline"><i class="fa fa-envelope-open red-clr"></i> SIGN UP FOR RECENT UPDATES</h3>
                <p itemprop="description">Join our Subscribers list to get the latest news, updates and special offers delivered directly in your inbox.</p>
                <form class="newsletter-frm brd-rd30">
                    <input class="brd-rd30" type="email" placeholder="ENTER YOUR EMAIL">
                    <button class="brd-rd30 red-bg" type="submit">SUBSCRIBE</button>
                </form>
                <span class="red-clr"><i class="fa fa-check"></i> Thanks, your address has been added.</span>
            </div>
        </div><!-- Newsletter Popup Wrapper --> --%>

		<%@include file="LogRegistration.jsp"%>

	</main>
	<!-- Main Wrapper -->
	<%@include file="commonjs.jsp"%>
	<%@include file="Topbar.jsp"%> 

	<script>
		var event;
		function getEvent()
		{
			event = document.getElementById("event").value;
		}
		function takeToEvent()
		{
			getEvent();
			alert(event);
			if(event == "default")
				return false;
			else
				return true;
		}
	</script>
</body>

</html>