<%@ page import="com.e_catering_system.bean.*"%>
<%@ page import="java.util.List"%>
<%@ page import="java.util.ArrayList"%>
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
<%
	HttpSession session3 = request.getSession(false);
%>
<%
	User user = (User) session3.getAttribute("LoggedUser");
%>
<%
	int user_status = (int) user.getUser_role();
%>

<style>
#edita {
  background-color: red;
  box-shadow: 0 5px 0 darkred;
  color: white;
  padding: 1em 1.5em;
  position: relative;
  text-decoration: none;
  text-transform: uppercase;
}

#edita:hover {
  background-color: #ce0606;
  cursor: pointer;
}

#edita:active {
  box-shadow: none;
  top: 5px;
}
#UIcon {
	height: 100px;
	width: 100px;
}

.submitDetails {
	margin-left: 110px;
	text-align: center;
	height: 25px;
	width: 100px;
	color: white;
	background-color: red;
	font-family: verdana;
	border-radius: 4px;
}

.submitDetails:hover {
	margin-left: 110px;
	text-align: center;
	height: 27px;
	width: 103px;
	color: black;
	background-color: orange;
	font-family: verdana;
	border-radius: 4px;
}
</style>
<script src="assets/js/jquery.min.js"></script>
<script>
	$(document).ready(function() {
		$('#list_user').hide();
		$('#inventory').hide();
<%if (user_status == 1) {%>
	$('#list_user').show();
		$('#inventory').show();
<%}%>
	});
</script>
</head>
<body itemscope>
	<%@include file="editProfileValidation.jsp"%>
	<jsp:include page="/DisplayUserList" />
	<jsp:include page="/GetProductList" />
	<%
		List<Food_items> list_of_product = new ArrayList<Food_items>();
	%>
	<%
		List<User> list_of_user = new ArrayList<User>();
	%>
	<%
		list_of_user = (List) request.getAttribute("list_of_user");
	%>
	<%
		list_of_product = (List) request.getAttribute("list_of_product");
	%>
	<main>
		<%@include file="Topbar.jsp"%>
		<section>
			<div class="block">
				<div class="fixed-bg"
					style="background-image: url(assets/images/topbg.jpg);"></div>
				<div class="page-title-wrapper text-center">
					<div class="col-md-12 col-sm-12 col-lg-12">
						<div class="page-title-inner">
							<h1 itemprop="headline">Dashboard</h1>
							<span>A Great Catering Website</span>
						</div>
					</div>
				</div>
			</div>
		</section>

		<div class="bread-crumbs-wrapper">
			<div class="container">
				<ol class="breadcrumb">
					<li class="breadcrumb-item"><a href="#" title=""
						itemprop="url">Home</a></li>
					<li class="breadcrumb-item active">Dashboard</li>
				</ol>
			</div>
		</div>

		<section>
			<div class="block less-spacing gray-bg top-padd30">
				<div class="container">
					<div class="row">
						<div class="col-md-12 col-sm-12 col-lg-12">
							<div class="sec-box">
								<div class="dashboard-tabs-wrapper">
									<div class="row">
										<div class="col-md-4 col-sm-12 col-lg-4">
											<div class="profile-sidebar brd-rd5 wow fadeIn"
												data-wow-delay="0.2s">
												<div class="profile-sidebar-inner brd-rd5">
													<div class="user-info red-bg">
														<img id="UIcon" class="brd-rd50"
															src="assets/images/UserIcon.png" alt="user-avatar.jpg"
															itemprop="image">
														<div class="user-info-inner">
															<h5 itemprop="headline">
																<a href="#" title="" itemprop="url">USER PROFILE</a>
															</h5>
															<span><a href="#" title="" itemprop="url"><%=user.getUser_email()%></a></span>
															<a class="brd-rd3 sign-out-btn yellow-bg"
																href="UserLogout" title="" itemprop="url"><i
																class="fa fa-sign-out"></i> LOGOUT</a>
														</div>
													</div>
													<ul class="nav nav-tabs">
														<li class="active"><a href="#dashboard"
															data-toggle="tab"><i class="fa fa-dashboard"></i>
																DASHBOARD</a></li>
														<li><a id="bookings" href="#my-bookings"
															data-toggle="tab"><i class="fa fa-file-text"></i> MY
																BOOKINGS</a></li>
														<li><a id="reviews" href="#my-reviews"
															data-toggle="tab"><i class="fa fa-comments"></i> MY
																REVIEWS</a></li>
														<li><a id="myorder" href="#my-orders"
															data-toggle="tab"><i class="fa fa-shopping-basket"></i>
																MY ORDERS</a></li>
														<li><a id="cart" href="#shortlists" data-toggle="tab"><i
																class="fa fa-heart"></i> SHORTLISTS</a></li>
														<li><a id="statement" href="#statement"
															data-toggle="tab"><i class="fa fa-wpforms"></i>
																STATEMENT</a></li>
														<li><a id="account_setting" href="#account-settings"
															data-toggle="tab"><i class="fa fa-cog"></i> ACCOUNT
																SETTINGS</a></li>
														<li><a id="list_user" href="#user_details"
															data-toggle="tab"><i class="fa fa-cog"></i> USER
																ACCOUNTS</a></li>
														<li><a id="inventory" href="#my_inventory"
															data-toggle="tab"><i class="fa fa-cog"></i> INVENTORY
														</a></li>
													</ul>
												</div>
											</div>
										</div>
										<div class="col-md-8 col-sm-12 col-lg-8">
											<div class="tab-content">
												<div class="tab-pane fade in active" id="dashboard">
													<div class="dashboard-wrapper brd-rd5">
														<div class="welcome-note yellow-bg brd-rd5">
															<h4 itemprop="headline">WELCOME TO YOUR ACCOUNT</h4>
															<p itemprop="description">Things that get tricky are
																things like burgers and fries, or things that are
																deep-fried. We do have a couple of burger restaurants
																that are capable of doing a good</p>
															<img src="assets/images/resource/welcome-note-img.png"
																alt="welcome-note-img.png" itemprop="image"> <a
																class="remove-noti" href="#" title="" itemprop="url"><img
																src="assets/images/close-icon.png" alt="close-icon.png"
																itemprop="image"></a>
														</div>
														<div class="dashboard-title">
															<h4 itemprop="headline">SUGGESTED RESTAURANTS</h4>
															<span>Define <a class="red-clr" href="#" title=""
																itemprop="url">Search criteria</a> to search for
																specific
															</span>
														</div>
														<div class="restaurants-list">
															<div
																class="featured-restaurant-box style3 brd-rd5 wow fadeInUp"
																data-wow-delay="0.2s">
																<div class="featured-restaurant-thumb">
																	<a href="#" title="" itemprop="url"><img
																		src="assets/images/resource/restaurant-logo1-1.png"
																		alt="restaurant-logo1-1.png" itemprop="image"></a>
																</div>
																<div class="featured-restaurant-info">
																	<span class="red-clr">5th Avenue New York 68</span>
																	<h4 itemprop="headline">
																		<a href="#" title="" itemprop="url">Domino's Pizza</a>
																	</h4>
																	<ul class="post-meta">
																		<li><i class="fa fa-check-circle-o"></i> Min
																			order $50</li>
																		<li><i class="flaticon-transport"></i> 30min</li>
																	</ul>
																</div>
																<div class="view-menu-liks">
																	<span class="red-bg brd-rd4 post-likes"><i
																		class="fa fa-heart-o"></i> 12</span> <a class="brd-rd3"
																		href="#" title="" itemprop="url">View Menu</a>
																</div>
															</div>
															<div
																class="featured-restaurant-box style3 brd-rd5 wow fadeInUp"
																data-wow-delay="0.3s">
																<div class="featured-restaurant-thumb">
																	<a href="#" title="" itemprop="url"><img
																		src="assets/images/resource/restaurant-logo1-2.png"
																		alt="restaurant-logo1-2.png" itemprop="image"></a>
																</div>
																<div class="featured-restaurant-info">
																	<span class="red-clr">5th Avenue New York 68</span>
																	<h4 itemprop="headline">
																		<a href="#" title="" itemprop="url">Pizza Hut</a>
																	</h4>
																	<ul class="post-meta">
																		<li><i class="fa fa-check-circle-o"></i> Min
																			order $40</li>
																		<li><i class="flaticon-transport"></i> 30min</li>
																	</ul>
																</div>
																<div class="view-menu-liks">
																	<span class="red-bg brd-rd4 post-likes"><i
																		class="fa fa-heart-o"></i> 20</span> <a class="brd-rd3"
																		href="#" title="" itemprop="url">View Menu</a>
																</div>
															</div>
															<div
																class="featured-restaurant-box style3 brd-rd5 wow fadeInUp"
																data-wow-delay="0.4s">
																<div class="featured-restaurant-thumb">
																	<a href="#" title="" itemprop="url"><img
																		src="assets/images/resource/restaurant-logo1-1.png"
																		alt="restaurant-logo1-1.png" itemprop="image"></a>
																</div>
																<div class="featured-restaurant-info">
																	<span class="red-clr">5th Avenue New York 68</span>
																	<h4 itemprop="headline">
																		<a href="#" title="" itemprop="url">Burger King</a>
																	</h4>
																	<ul class="post-meta">
																		<li><i class="fa fa-check-circle-o"></i> Min
																			order $100</li>
																		<li><i class="flaticon-transport"></i> 30min</li>
																	</ul>
																</div>
																<div class="view-menu-liks">
																	<span class="red-bg brd-rd4 post-likes"><i
																		class="fa fa-heart-o"></i> 15</span> <a class="brd-rd3"
																		href="#" title="" itemprop="url">View Menu</a>
																</div>
															</div>
														</div>
													</div>
												</div>
												<div class="tab-pane fade" id="my-bookings">
													<div class="tabs-wrp brd-rd5">
														<h4 itemprop="headline">MY BOOKINGS</h4>
														<div class="select-wrap-inner">
															<div class="select-wrp2">
																<select>
																	<option>Select Booking Status</option>
																	<option>Select Booking Status</option>
																	<option>Select Booking Status</option>
																</select>
															</div>
															<div class="select-wrp2">
																<select>
																	<option>Select Date Range</option>
																	<option>Select Date Range</option>
																	<option>Select Date Range</option>
																</select>
															</div>
														</div>
														<div class="booking-table">
															<table>
																<thead>
																	<tr>
																		<th>RESTAURANT NAME</th>
																		<th>DATE</th>
																		<th>STATUS</th>
																	</tr>
																</thead>
																<tbody>
																	<tr>
																		<td><h5 itemprop="headline">
																				<a href="#" title="" itemprop="url">Jet's
																					Kitchen ( #8589 )</a>
																			</h5></td>
																		<td>Aug 17,2017</td>
																		<td><span class="brd-rd3 processing">PROCESSING</span>
																			<a class="detail-link brd-rd50" href="#" title=""
																			itemprop="url"><i class="fa fa-chain"></i></a></td>
																	</tr>
																	<tr>
																		<td><h5 itemprop="headline">
																				<a href="#" title="" itemprop="url">Jet's
																					Kitchen ( #8589 )</a>
																			</h5></td>
																		<td>Aug 17,2017</td>
																		<td><span class="brd-rd3 processing">PROCESSING</span>
																			<a class="detail-link brd-rd50" href="#" title=""
																			itemprop="url"><i class="fa fa-chain"></i></a></td>
																	</tr>
																	<tr>
																		<td><h5 itemprop="headline">
																				<a href="#" title="" itemprop="url">Jet's
																					Kitchen ( #8589 )</a>
																			</h5></td>
																		<td>Aug 17,2017</td>
																		<td><span class="brd-rd3 completed">COMPLETED</span>
																			<a class="detail-link brd-rd50" href="#" title=""
																			itemprop="url"><i class="fa fa-chain"></i></a></td>
																	</tr>
																	<tr>
																		<td><h5 itemprop="headline">
																				<a href="#" title="" itemprop="url">Jet's
																					Kitchen ( #8589 )</a>
																			</h5></td>
																		<td>Aug 17,2017</td>
																		<td><span class="brd-rd3 processing">PROCESSING</span>
																			<a class="detail-link brd-rd50" href="#" title=""
																			itemprop="url"><i class="fa fa-chain"></i></a></td>
																	</tr>
																	<tr>
																		<td><h5 itemprop="headline">
																				<a href="#" title="" itemprop="url">Jet's
																					Kitchen ( #8589 )</a>
																			</h5></td>
																		<td>Aug 17,2017</td>
																		<td><span class="brd-rd3 completed">COMPLETED</span>
																			<a class="detail-link brd-rd50" href="#" title=""
																			itemprop="url"><i class="fa fa-chain"></i></a></td>
																	</tr>
																</tbody>
															</table>
														</div>
													</div>
												</div>
												<div class="tab-pane fade" id="my-reviews">
													<div class="tabs-wrp brd-rd5">
														<h4 itemprop="headline">MY REVIEWS</h4>
														<div class="select-wrap-inner">
															<div class="select-wrp2">
																<select>
																	<option>Newest Reviews</option>
																	<option>Newest Reviews</option>
																	<option>Newest Reviews</option>
																</select>
															</div>
															<div class="select-wrp2">
																<select>
																	<option>Select Date Range</option>
																	<option>Select Date Range</option>
																	<option>Select Date Range</option>
																</select>
															</div>
														</div>
														<div class="review-list">
															<div class="review-box brd-rd5">
																<h4 itemprop="headline">
																	<a href="#" title="" itemprop="url">RESTAURANT DEMO</a>
																</h4>
																<div class="ratings">
																	<i class="fa fa-star on"></i> <i class="fa fa-star on"></i>
																	<i class="fa fa-star on"></i> <i class="fa fa-star off"></i>
																	<i class="fa fa-star off"></i>
																</div>
																<p itemprop="description">FoodBakery order today. So
																	great to be able to order food and not have to talk to
																	anyone.</p>
																<div class="review-info">
																	<img class="brd-rd50"
																		src="assets/images/resource/reviewr-img1.jpg"
																		alt="reviewr-img1.jpg" itemprop="image">
																	<div class="review-info-inner">
																		<h5 itemprop="headline">QLARK JAKSON</h5>
																		<i class="red-clr">2 months Ago</i>
																	</div>
																</div>
															</div>
															<div class="review-box brd-rd5">
																<h4 itemprop="headline">
																	<a href="#" title="" itemprop="url">RESTAURANT DEMO</a>
																</h4>
																<div class="ratings">
																	<i class="fa fa-star on"></i> <i class="fa fa-star on"></i>
																	<i class="fa fa-star on"></i> <i class="fa fa-star on"></i>
																	<i class="fa fa-star off"></i>
																</div>
																<p itemprop="description">FoodBakery order today. So
																	great to be able to order food and not have to talk to
																	anyone.</p>
																<div class="review-info">
																	<img class="brd-rd50"
																		src="assets/images/resource/reviewr-img2.jpg"
																		alt="reviewr-img2.jpg" itemprop="image">
																	<div class="review-info-inner">
																		<h5 itemprop="headline">QLARK JAKSON</h5>
																		<i class="red-clr">2 months Ago</i>
																	</div>
																</div>
															</div>
															<div class="review-box brd-rd5">
																<h4 itemprop="headline">
																	<a href="#" title="" itemprop="url">RESTAURANT DEMO</a>
																</h4>
																<div class="ratings">
																	<i class="fa fa-star on"></i> <i class="fa fa-star on"></i>
																	<i class="fa fa-star on"></i> <i class="fa fa-star on"></i>
																	<i class="fa fa-star on"></i>
																</div>
																<p itemprop="description">FoodBakery order today. So
																	great to be able to order food and not have to talk to
																	anyone.</p>
																<div class="review-info">
																	<img class="brd-rd50"
																		src="assets/images/resource/reviewr-img3.jpg"
																		alt="reviewr-img3.jpg" itemprop="image">
																	<div class="review-info-inner">
																		<h5 itemprop="headline">QLARK JAKSON</h5>
																		<i class="red-clr">2 months Ago</i>
																	</div>
																</div>
															</div>
														</div>
														<!-- Review List -->
													</div>
												</div>
												<div class="tab-pane fade" id="my-orders">
													<div class="tabs-wrp brd-rd5">
														<h4 itemprop="headline">MY ORDERS</h4>
														<div class="select-wrap-inner">
															<div class="select-wrp2">
																<select>
																	<option>Select Orders Status</option>
																	<option>Select Orders Status</option>
																	<option>Select Orders Status</option>
																</select>
															</div>
															<div class="select-wrp2">
																<select>
																	<option>Select Date Range</option>
																	<option>Select Date Range</option>
																	<option>Select Date Range</option>
																</select>
															</div>
														</div>
														<div class="order-list">
															<div class="order-item brd-rd5">
																<div class="order-thumb brd-rd5">
																	<a href="#" title="" itemprop="url"><img
																		src="assets/images/resource/order-img1.jpg"
																		alt="order-img1.jpg" itemprop="image"></a> <span
																		class="post-rate yellow-bg brd-rd2"><i
																		class="fa fa-star-o"></i> 4.25</span>
																</div>
																<div class="order-info">
																	<span class="red-clr">5th Avenue New York 68</span>
																	<h4 itemprop="headline">
																		<a href="#" title="" itemprop="url">Maenaam Thai
																			Restaurant</a>
																	</h4>

																	<span class="price">$85.00</span> <span
																		class="processing brd-rd3">PROCESSING</span> <a
																		class="brd-rd2" href="#" title="" itemprop="url">Order
																		Detail</a>
																</div>
															</div>
															<div class="order-item brd-rd5">
																<div class="order-thumb brd-rd5">
																	<a href="#" title="" itemprop="url"><img
																		src="assets/images/resource/order-img2.jpg"
																		alt="order-img2.jpg" itemprop="image"></a> <span
																		class="post-rate yellow-bg brd-rd2"><i
																		class="fa fa-star-o"></i> 3.0</span>
																</div>
																<div class="order-info">
																	<span class="red-clr">5th Avenue New York 68</span>
																	<h4 itemprop="headline">
																		<a href="#" title="" itemprop="url">Maenaam Thai
																			Restaurant</a>
																	</h4>

																	<span class="price">$85.00</span> <span
																		class="completed brd-rd3">COMPLETED</span> <a
																		class="brd-rd2" href="#" title="" itemprop="url">Order
																		Detail</a>
																</div>
															</div>
															<div class="order-item brd-rd5">
																<div class="order-thumb brd-rd5">
																	<a href="#" title="" itemprop="url"><img
																		src="assets/images/resource/order-img3.jpg"
																		alt="order-img3.jpg" itemprop="image"></a> <span
																		class="post-rate yellow-bg brd-rd2"><i
																		class="fa fa-star-o"></i> 5.00</span>
																</div>
																<div class="order-info">
																	<span class="red-clr">5th Avenue New York 68</span>
																	<h4 itemprop="headline">
																		<a href="#" title="" itemprop="url">Maenaam Thai
																			Restaurant</a>
																	</h4>

																	<span class="price">$85.00</span> <span
																		class="completed brd-rd3">COMPLETED</span> <a
																		class="brd-rd2" href="#" title="" itemprop="url">Order
																		Detail</a>
																</div>
															</div>
															<div class="order-item brd-rd5">
																<div class="order-thumb brd-rd5">
																	<a href="#" title="" itemprop="url"><img
																		src="assets/images/resource/order-img4.jpg"
																		alt="order-img4.jpg" itemprop="image"></a> <span
																		class="post-rate yellow-bg brd-rd2"><i
																		class="fa fa-star-o"></i> 5.30</span>
																</div>
																<div class="order-info">
																	<span class="red-clr">5th Avenue New York 68</span>
																	<h4 itemprop="headline">
																		<a href="#" title="" itemprop="url">Maenaam Thai
																			Restaurant</a>
																	</h4>

																	<span class="price">$85.00</span> <span
																		class="completed brd-rd3">COMPLETED</span> <a
																		class="brd-rd2" href="#" title="" itemprop="url">Order
																		Detail</a>
																</div>
															</div>
														</div>
														<div class="pagination-wrapper text-center style2">
															<ul class="pagination justify-content-center">
																<li class="page-item prev"><a
																	class="page-link brd-rd2" href="#" itemprop="url">PREV</a></li>
																<li class="page-item"><a class="page-link brd-rd2"
																	href="#" itemprop="url">1</a></li>
																<li class="page-item"><a class="page-link brd-rd2"
																	href="#" itemprop="url">2</a></li>
																<li class="page-item active"><span
																	class="page-link brd-rd2">3</span></li>
																<li class="page-item"><a class="page-link brd-rd2"
																	href="#" itemprop="url">4</a></li>
																<li class="page-item"><a class="page-link brd-rd2"
																	href="#" itemprop="url">5</a></li>
																<li class="page-item">........</li>
																<li class="page-item"><a class="page-link brd-rd2"
																	href="#" itemprop="url">18</a></li>
																<li class="page-item next"><a
																	class="page-link brd-rd2" href="#" itemprop="url">NEXT</a></li>
															</ul>
														</div>
														<!-- Pagination Wrapper -->
													</div>
												</div>
												<div class="tab-pane fade" id="shortlists">
													<div class="tabs-wrp brd-rd5">
														<h4 itemprop="headline">SHORTLISTS</h4>
														<div class="restaurants-list">
															<div class="featured-restaurant-box style3 brd-rd5">
																<div class="featured-restaurant-thumb">
																	<a href="#" title="" itemprop="url"><img
																		src="assets/images/resource/restaurant-logo1-1.png"
																		alt="restaurant-logo1-1.png" itemprop="image"></a>
																</div>
																<div class="featured-restaurant-info">
																	<span class="red-clr">5th Avenue New York 68</span>
																	<h4 itemprop="headline">
																		<a href="#" title="" itemprop="url">Domino's Pizza</a>
																	</h4>
																	<ul class="post-meta">
																		<li><i class="fa fa-check-circle-o"></i> Min
																			order $50</li>
																		<li><i class="flaticon-transport"></i> 30min</li>
																	</ul>
																</div>
																<div class="view-menu-liks">
																	<a class="brd-rd3" href="#" title="" itemprop="url">View
																		Menu</a>
																</div>
															</div>
															<div class="featured-restaurant-box style3 brd-rd5">
																<div class="featured-restaurant-thumb">
																	<a href="#" title="" itemprop="url"><img
																		src="assets/images/resource/restaurant-logo1-2.png"
																		alt="restaurant-logo1-2.png" itemprop="image"></a>
																</div>
																<div class="featured-restaurant-info">
																	<span class="red-clr">5th Avenue New York 68</span>
																	<h4 itemprop="headline">
																		<a href="#" title="" itemprop="url">Pizza Hut</a>
																	</h4>
																	<ul class="post-meta">
																		<li><i class="fa fa-check-circle-o"></i> Min
																			order $40</li>
																		<li><i class="flaticon-transport"></i> 30min</li>
																	</ul>
																</div>
																<div class="view-menu-liks">
																	<a class="brd-rd3" href="#" title="" itemprop="url">View
																		Menu</a>
																</div>
															</div>
															<div class="featured-restaurant-box style3 brd-rd5">
																<div class="featured-restaurant-thumb">
																	<a href="#" title="" itemprop="url"><img
																		src="assets/images/resource/restaurant-logo1-3.png"
																		alt="restaurant-logo1-3.png" itemprop="image"></a>
																</div>
																<div class="featured-restaurant-info">
																	<span class="red-clr">5th Avenue New York 68</span>
																	<h4 itemprop="headline">
																		<a href="#" title="" itemprop="url">Burger King</a>
																	</h4>
																	<ul class="post-meta">
																		<li><i class="fa fa-check-circle-o"></i> Min
																			order $100</li>
																		<li><i class="flaticon-transport"></i> 30min</li>
																	</ul>
																</div>
																<div class="view-menu-liks">
																	<a class="brd-rd3" href="#" title="" itemprop="url">View
																		Menu</a>
																</div>
															</div>
														</div>
														<div class="pagination-wrapper text-center style2">
															<ul class="pagination justify-content-center">
																<li class="page-item prev"><a
																	class="page-link brd-rd2" href="#" itemprop="url">PREV</a></li>
																<li class="page-item"><a class="page-link brd-rd2"
																	href="#" itemprop="url">1</a></li>
																<li class="page-item"><a class="page-link brd-rd2"
																	href="#" itemprop="url">2</a></li>
																<li class="page-item active"><span
																	class="page-link brd-rd2">3</span></li>
																<li class="page-item"><a class="page-link brd-rd2"
																	href="#" itemprop="url">4</a></li>
																<li class="page-item"><a class="page-link brd-rd2"
																	href="#" itemprop="url">5</a></li>
																<li class="page-item">........</li>
																<li class="page-item"><a class="page-link brd-rd2"
																	href="#" itemprop="url">18</a></li>
																<li class="page-item next"><a
																	class="page-link brd-rd2" href="#" itemprop="url">NEXT</a></li>
															</ul>
														</div>
														<!-- Pagination Wrapper -->
													</div>
												</div>
												<div class="tab-pane fade" id="statement">
													<div class="tabs-wrp brd-rd5">
														<h4 itemprop="headline">STATEMENTS</h4>
														<div class="select-wrap-inner">
															<div class="select-wrp2"></div>
															<div class="select-wrp2">
																<select>
																	<option>Select Date Range</option>
																	<option>Select Date Range</option>
																	<option>Select Date Range</option>
																</select>
															</div>
														</div>
														<div class="statement-table">
															<table>
																<thead>
																	<tr>
																		<th>TRANSACTION ID</th>
																		<th>ORDER ID</th>
																		<th>DATE</th>
																		<th>DETAIL</th>
																		<th>AMOUNT</th>
																	</tr>
																</thead>
																<tbody>
																	<tr>
																		<td>#30737723</td>
																		<td>8720</td>
																		<td>Aug 17,2017</td>
																		<td>Order - Misumisu Thai</td>
																		<td><span class="red-clr">$35.97</span></td>
																	</tr>
																	<tr>
																		<td>#30737723</td>
																		<td>8720</td>
																		<td>Aug 17,2017</td>
																		<td>Order - Jet's Kitchen</td>
																		<td><span class="red-clr">$35.97</span></td>
																	</tr>
																	<tr>
																		<td>#30737723</td>
																		<td>8720</td>
																		<td>Aug 17,2017</td>
																		<td>Order - Misumisu Thai</td>
																		<td><span class="red-clr">$35.97</span></td>
																	</tr>
																	<tr>
																		<td>#30737723</td>
																		<td>8720</td>
																		<td>Aug 17,2017</td>
																		<td>Order - Misumisu Thai</td>
																		<td><span class="red-clr">$35.97</span></td>
																	</tr>
																	<tr>
																		<td>#30737723</td>
																		<td>8720</td>
																		<td>Aug 17,2017</td>
																		<td>Order - Misumisu Thai</td>
																		<td><span class="red-clr">$35.97</span></td>
																	</tr>
																</tbody>
															</table>
														</div>
														<!-- Statement Table -->
														<div class="pagination-wrapper text-center style2">
															<ul class="pagination justify-content-center">
																<li class="page-item prev"><a
																	class="page-link brd-rd2" href="#" itemprop="url">PREV</a></li>
																<li class="page-item"><a class="page-link brd-rd2"
																	href="#" itemprop="url">1</a></li>
																<li class="page-item"><a class="page-link brd-rd2"
																	href="#" itemprop="url">2</a></li>
																<li class="page-item active"><span
																	class="page-link brd-rd2">3</span></li>
																<li class="page-item"><a class="page-link brd-rd2"
																	href="#" itemprop="url">4</a></li>
																<li class="page-item"><a class="page-link brd-rd2"
																	href="#" itemprop="url">5</a></li>
																<li class="page-item">........</li>
																<li class="page-item"><a class="page-link brd-rd2"
																	href="#" itemprop="url">18</a></li>
																<li class="page-item next"><a
																	class="page-link brd-rd2" href="#" itemprop="url">NEXT</a></li>
															</ul>
														</div>
														<!-- Pagination Wrapper -->
													</div>
												</div>
																							<!-- User End -->
											<div class="tab-pane fade" id="my_inventory">
												<div class="tabs-wrp brd-rd5">
													<h4 itemprop="headline">INVENTORY</h4>

													<div class="booking-table">
														<table>
															<thead>
																<tr>
																	<th>FOOD ITEM</th>
																	<th>FOOD CATEGORY</th>
																	<th>PRICE</th>
																	<th>QUANTITY</th>
																	<th>EDIT</th>
																</tr>
															</thead>
															<tbody>
																<%
																	if (list_of_product != null) {
																%>
																<%
																	for (int k = 0; k < list_of_product.size(); k++) {
																%>
																<tr>
																	<%
																		System.out.println("\nName: " + list_of_product.get(k).getFood_item_name());
																	%>
																	<td><%=list_of_product.get(k).getFood_item_name()%></td>
																	<td><%=list_of_product.get(k).getFood_items_type_name()%></td>
																	<td><%=list_of_product.get(k).getFood_item_price()%></td>
																	<td><%=list_of_product.get(k).getFood_qty()%></td>
																	<td><a id = "edita" href = "EditProduct?product_id=<%=list_of_product.get(k).getFood_item_id()%>">Edit</a></td>
																</tr>
																<%
																	}
																%>
																<%
																	}
																%>
															</tbody>
														</table>
													</div>
												</div>
											</div>
												<div class="tab-pane fade" id="account-settings">
													<div class="tabs-wrp account-settings brd-rd5">
														<h4 itemprop="headline">ACCOUNT SETTINGS</h4>
														<div class="account-settings-inner">
															<div class="row">
																<!-- 																<div class="col-md-4 col-sm-4 col-lg-4"> -->
																<!-- <!-- 																	<div class="profile-info text-center"> -->
																<!-- 																		<div class="profile-thumb brd-rd50"> -->
																<!-- 																			<img id="profile-display" -->
																<!-- 																				src="assets/images/resource/profile-img1.jpg" -->
																<!-- 																				alt="profile-img1.jpg" itemprop="image"> -->
																<!-- 																		</div> -->
																<!-- 																		<a class="red-clr change-password" href="#" title="" -->
																<!-- 																			itemprop="url">Change Password</a> -->
																<!-- 																		<div class="profile-img-upload-btn"> -->
																<!-- 																			<label class="fileContainer brd-rd5 yellow-bg"> -->
																<!-- 																				UPLOAD PICTURE <input id="profile-upload" -->
																<!-- 																				type="file" /> -->
																<!-- 																			</label> -->
																<!-- 																		</div> -->
																<!-- 																		<p itemprop="description">Upload a profile picture -->
																<!-- 																			or choose one of the following</p> -->
																<!-- 																		<div class="default-img-lst"> -->
																<!-- 																			<img class="brd-rd50" -->
																<!-- 																				src="assets/images/resource/profile-thumb1.jpg" -->
																<!-- 																				alt="profile-thumb1.jpg" itemprop="image"> <img -->
																<!-- 																				class="brd-rd50" -->
																<!-- 																				src="assets/images/resource/profile-thumb2.jpg" -->
																<!-- 																				alt="profile-thumb2.jpg" itemprop="image"> <img -->
																<!-- 																				class="brd-rd50" -->
																<!-- 																				src="assets/images/resource/profile-thumb3.jpg" -->
																<!-- 																				alt="profile-thumb3.jpg" itemprop="image"> <img -->
																<!-- 																				class="brd-rd50" -->
																<!-- 																				src="assets/images/resource/profile-thumb4.jpg" -->
																<!-- 																				alt="profile-thumb4.jpg" itemprop="image"> <img -->
																<!-- 																				class="brd-rd50" -->
																<!-- 																				src="assets/images/resource/profile-thumb5.jpg" -->
																<!-- 																				alt="profile-thumb5.jpg" itemprop="image"> -->
																<!-- 																		</div> -->
																<!-- 																	</div> -->
															</div>
															<div class="col-md-8 col-sm-8 col-lg-8">
																<div class="profile-info-form-wrap">
																	<form class="profile-info-form" name="editProfile"
																		action="UserEditProfile" method="post">
																		<div class="row mrg20">
																			<div class="col-md-12 col-sm-12 col-lg-12">
																				<label>Full Name <sup>*</sup></label> <input
																					id="fullName" name="fullName" class="brd-rd3"
																					type="text" placeholder="Enter Your Name"
																					onblur="checkFullName()" required> <span
																					id="namespan" class="errmessage"></span>
																			</div>
																			<div class="col-md-12 col-sm-12 col-lg-12">
																				<label>Email Address <sup>*</sup></label> <input
																					id="emailAddress" name="emailAddress"
																					class="brd-rd3" type="email"
																					placeholder="Enter Your Email Address"
																					value="<%=user.getUser_email()%>" readonly>
																			</div>
																			<div class="col-md-12 col-sm-12 col-lg-12">
																				<label>Mobile No <sup>*</sup></label> <input
																					id="mobileNumber" name="mobileNumber"
																					class="brd-rd3" type="text"
																					placeholder="Enter Your Phone No"
																					onblur="checkMobileNumber()" required> <span
																					id="mobilespan" class="errmessage"></span>
																			</div>
																			<!--    <div class="col-md-12 col-sm-12 col-lg-12">
                                                                                    <label>Country <sup>*</sup></label>
                                                                                    <div class="select-wrp">
                                                                                        <select>
                                                                                            <option>India</option>
                                                                                            <option>India</option>
                                                                                            <option>USA</option>
                                                                                        </select>
                                                                                    </div>
                                                                                </div> -->
																			<div class="col-md-12 col-sm-12 col-lg-12">
																				<label>Address <sup>*</sup></label>
																				<!--  <input class="brd-rd3" type="textarea" rows = "5" cols = "50" placeholder="Enter Your Address"> -->
																				<textarea id="address" rows="10" name="address"
																					onblur="checkAddress()" required></textarea>
																				<span id="addspan" class="errmessage"></span>
																			</div>
																			<div class="col-md-6 col-sm-6 col-lg-6">
																				<label>State <sup>*</sup></label> <input
																					class="brd-rd3" type="text" value="Gujarat"
																					readonly>
																			</div>
																			<div class="col-md-6 col-sm-6 col-lg-6">
																				<label>City <sup>*</sup></label>
																				<div class="select-wrp">
																					<select>
																						<option>Ahmedabad</option>
																						<option>Gandhinagar</option>
																						<option>Kalol</option>
																					</select>
																				</div>
																			</div>
																			<div class="col-md-6 col-sm-6 col-lg-6">
																				<label>Pincode <sup>*</sup></label> <input
																					id="pincode" name="pincode" class="brd-rd3"
																					type="number" onblur="checkPincode()" required>
																				<span id="pincodespan" class="errmessage"></span>
																			</div>
																			<button class="submitDetails" type="submit"
																				onclick="return checkUserDetails()">Edit
																				Profile</button>
																		</div>

																	</form>
																</div>
															</div>
															<!--  <div class="col-md-12 col-sm-12 col-lg-12">
                                                                    <div class="loc-map2">
                                                                        <div class="loc-map brd-rd3" id="loc-map"></div>
                                                                        
                                                                        <div class="loc-srch">
                                                                            <input class="brd-rd3" type="text" placeholder="Type Your Address">
                                                                            <button class="brd-rd3 red-bg" type="submit">Search Now</button>
                                                                        </div>
                                                                    </div> -->
														</div>
													</div>
												</div>
											
											<div class="tab-pane fade" id="user_details">
												<div class="tabs-wrp brd-rd5">
													<h4 itemprop="headline">USER LIST</h4>

													<div class="booking-table">
														<table>
															<thead>
																<tr>
																	<th>USER NAME</th>
																	<th>EMAIL ID</th>
																	<th>CONTACT</th>
																	<th>ADDRESS</th>
																</tr>
															</thead>
															<tbody>
																<%
																	if (list_of_user != null) {
																%>
																<%
																	for (int i = 0; i < list_of_user.size(); i++) {
																%>
																<tr>
																	<%
																		System.out.println("\nName: " + list_of_user.get(i).getUser_name());
																	%>
																	<td><%=list_of_user.get(i).getUser_name()%></td>
																	<td><%=list_of_user.get(i).getUser_email()%></td>
																	<td><%=list_of_user.get(i).getUser_contact()%></td>
																	<%
																		if (list_of_user.get(i).getUser_address() != null) {
																	%>
																	<td><%=list_of_user.get(i).getUser_address()%></td>
																	<%
																		} else {
																	%>
																	<td>NA</td>
																	<%
																		}
																	%>
																</tr>
																<%
																	}
																%>
																<%
																	}
																%>
															</tbody>
														</table>
													</div>
												</div>
											</div>
										

											</div>
											<!-- Inventory End -->
										</div>
									</div>
								</div>
							</div>
						</div>
						<!-- Section Box -->
					</div>
				</div>
			</div>
			
		</section>
		<%@include file="Footer.jsp"%>
	</main>
	<!-- Main Wrapper -->

	<%@include file="commonjs.jsp"%>
</body>

</html>