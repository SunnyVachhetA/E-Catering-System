<%@ page import="com.e_catering_system.bean.*"%>
<%@ page import="java.util.List"%>
<%@ page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html lang="en">
<%int currentIndex = 0;%>
<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="" />
<meta name="keywords" content="" />
<title>Food Ordering HTML Template</title>
<%@include file="commoncss.jsp"%>
<%String catName = null; %> 
<style>
#setting_image {
	height: 10px;
	width: 10px;
}

#setting_img {
	background-color: #fff;
}
</style>
<script src="assets/js/jquery-3.4.1.min.js"></script>
	
<script>
	$(document).ready(function()
	{
		$('.brd-rd30').hide();
		<%HttpSession session3 = request.getSession(false);%>
		<%User user3 = (User) session3.getAttribute("LoggedUser");%>
		<%if (user3 != null) {%>
		<%int getRole2 = user3.getUser_role();%>
		<%if (getRole2 == 1) {%>
			$('.brd-rd30').show();
			<%}%>
		<%}%>
		$('.categoryName').click(function()
		{
			var cname = $(this).text();
		});
	});
	</script>
</head>
<%
	String messageProduct = null;
%>
<%
	messageProduct = (String) request.getAttribute("message");
%>
<body itemscope>
	<main>
		<%@include file="Topbar.jsp"%>
		<jsp:include page="/GetDecorationList" />
		
		<%
			List<Decoration> decoList = new ArrayList<Decoration>();
		decoList = (List) request.getAttribute("decoList");
		%>

		<!--<section>
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
        </section> -->

		<div class="bread-crumbs-wrapper">
			<div class="container">
				<ol class="breadcrumb">
					<li class="breadcrumb-item"><a href="#" title=""
						itemprop="url">Home</a></li>
					<li class="breadcrumb-item"><a href="#" title=""
						itemprop="url">Search</a></li>
				</ol>
			</div>
		</div>

		<section>
			<div class="block gray-bg bottom-padd210 top-padd30">
				<div class="container">
					<div class="row">
						<div class="col-md-12 col-sm-12 col-lg-12">
							<div class="sec-box">
								<!--<div class="top-restaurants-wrapper">
                                    <ul class="restaurants-wrapper style2">
                                        <li class="wow bounceIn" data-wow-delay="0.2s"><div class="top-restaurant"><a class="brd-rd50" href="#" title="Restaurant 1" itemprop="url"><img src="assets/images/resource/top-restaurant1.png" alt="top-restaurant1.png" itemprop="image"></a></div></li>
                                        <li class="wow bounceIn" data-wow-delay="0.4s"><div class="top-restaurant"><a class="brd-rd50" href="#" title="Restaurant 2" itemprop="url"><img src="assets/images/resource/top-restaurant2.png" alt="top-restaurant2.png" itemprop="image"></a></div></li>
                                        <li class="wow bounceIn" data-wow-delay="0.6s"><div class="top-restaurant"><a class="brd-rd50" href="#" title="Restaurant 3" itemprop="url"><img src="assets/images/resource/top-restaurant3.png" alt="top-restaurant3.png" itemprop="image"></a></div></li>
                                        <li class="wow bounceIn" data-wow-delay="0.8s"><div class="top-restaurant"><a class="brd-rd50" href="#" title="Restaurant 4" itemprop="url"><img src="assets/images/resource/top-restaurant4.png" alt="top-restaurant4.png" itemprop="image"></a></div></li>
                                        <li class="wow bounceIn" data-wow-delay="1s"><div class="top-restaurant"><a class="brd-rd50" href="#" title="Restaurant 5" itemprop="url"><img src="assets/images/resource/top-restaurant5.png" alt="top-restaurant5.png" itemprop="image"></a></div></li>
                                        <li class="wow bounceIn" data-wow-delay="1.2s"><div class="top-restaurant"><a class="brd-rd50" href="#" title="Restaurant 5" itemprop="url"><img src="assets/images/resource/top-restaurant6.png" alt="top-restaurant6.png" itemprop="image"></a></div></li>
                                    </ul>
                                </div> -->
								<div class="sec-wrapper top-padd80">
									<div class="row">
										<div class="col-md-3 col-sm-12 col-lg-3">
													<!--Sidebar -->
										</div>
										<div class="col-md-9 col-sm-12 col-lg-9">
											<div class="title2-wrapper">
												<h3 class="marginb-0" itemprop="headline">FOOD ITEMS</h3>
											</div>
											<div class="remove-ext">
												<div class="row">
													<%
														for (Decoration obj : decoList) {
													%>
												
													<div class="col-md-6 col-sm-6 col-lg-6">
														<div
															class="featured-restaurant-box with-bg style2 brd-rd12 wow fadeIn"
															data-wow-delay="0.1s">
															<div class="featured-restaurant-thumb">
																<a href="restaurant-detail.html" title="" itemprop="url"><img
																	height="25px" width="50px"
																	src="data:image/png;base64,<%=obj.getDeco_imageString()%>"
																	itemprop="image"></a>
															</div>
															<div class="featured-restaurant-info">
<%-- 																<span class="red-clr"><%=obj.getFood_item_type_id()%></span> --%>
																<h4 itemprop="headline">
																	<a href="restaurant-detail.html" title=""
																		itemprop="url"><%=obj.getDeco_name()%></a>
																</h4>
																
																<ul class="post-meta">
																	<li><i class="fa fa-check-circle-o"></i> Price RS.
																		<%=obj.getDeco_price()%></li>
																	<!--  <li><i class="flaticon-transport"></i> 30min</li>
																	<li><i class="flaticon-money"></i> Accepts cash &
																		online payments</li> -->
																</ul>
												
																<span class="post-likes style2 red-clr"><i
																	class="fa fa-heart-o"></i></span> <a
																	class="brd-rd30" href="restaurant-detail.html"
																	title="Order Online"><i
																	class="fa fa-angle-double-right"></i> Order Online</a>
																<!--                                                             	<a id = "setting_img" href = "edit_product.jsp"><image id = "setting_image" height = "10px" width = "10px" src = "assets/images/resource/setting_icon.png"></image></a> -->

																<a id="edit_button" class="brd-rd30"
																	href="EditDecoration?product_id=<%=obj.getDeco_id()%>"
																	title="Edit Product"><i
																	class="fa fa-angle-double-right"></i> Edit</a>
															</div>
														</div>
													</div>
													<%
													}
													%>

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

		<!--        <section>
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
                                                <a href="#" title="Google Play Store" itemprop="url" target="_blank"><img src="assets/images/resource/app-download-btn1.png" alt="app-download-btn1.png" itemprop="image"></a>
                                                <a href="#" title="Apple App Store" itemprop="url" target="_blank"><img src="assets/images/resource/app-download-btn2.png" alt="app-download-btn2.png" itemprop="image"></a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div><!-- App Section 
                        </div>
                    </div>
                </div>
            </div>
        </section><!-- red section -->

		<%@include file="Footer.jsp"%>
		<%@include file="LogRegistration.jsp"%>

	</main>
	<!-- Main Wrapper -->

	<%@include file="commonjs.jsp"%>

	<script>
	</script>
</body>

</html>