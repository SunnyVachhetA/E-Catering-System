<%@ page import = "com.e_catering_system.bean.User" %>
<style>
	#userProfileIcon
{
	width: 20px;
	height: 20px;
	
}

#logoutButton
{
	height: 20px;
	width: 70px;
	color: white;	
	background-color: red;
	margin-left: 10px;
}
#logoutButton:hover
{
	height: 25px;
	width: 75px;
	color: black;	
	background-color: orange;
}
#logoImage
{
	height: 100px;
	width: 120px;
}
.userTop
{
	color: white;
}
.userTop:hover
{
color:	red;
}
.headTOP
{
	padding: 10px;
}

</style>
<script src = "assets/js/jquery-3.4.1.min.js" ></script>

<script>
	$(document).ready(function()
	{
		$('#userProfileIcon').hide();
		$('#logoutButton').hide();	
		$('#userName').hide();
		$('#dashProfile').hide();
		$('#loginTopbar').show();
		$('#ProductUpdate').hide();
		$('#registerTopbar').show();
		$('#edit_product').hide();
		$('#add_decoration').hide();
		<%HttpSession session2 = request.getSession(false);%>
		<%User user2 = (User)session2.getAttribute("LoggedUser");%>
		<%if(user2 != null){%>
			$('#userProfileIcon').show();
			$('#logoutButton').show();
			$('#dashProfile').show();
			$('#loginTopbar').hide();
			$('#registerTopbar').hide();
			$('#userName').show();
			$('#create_package').hide();
			<%String gtUserName = user2.getUser_name();%>
			<%gtUserName = gtUserName.trim();%>
			<%int getRole = user2.getUser_role();%>
			<%if(getRole == 1){%>
				$('#userName').text("Welcome Admin, <%=gtUserName%>");
				$('#ProductUpdate').show();
				$('#edit_product').show();
				$('#create_package').show();
				$('#add_decoration').show();
			<%}%>
			<%if(getRole == 0){%>
				$('#userName').text("Welcome User, <%=gtUserName%>");
			<%}%>
			<%System.out.println("User OBject: " + user2.getUser_email());%>
		<%}%>
	});
</script>
   <div class="preloader">
            <div id="cooking">
                <div class="bubble"></div>
                <div class="bubble"></div>
                <div class="bubble"></div>
                <div class="bubble"></div>
                <div class="bubble"></div>
                <div id="area">
                    <div id="sides">
                        <div id="pan"></div>
                        <div id="handle"></div>
                    </div>
                    <div id="pancake">
                        <div id="pastry"></div>
                    </div>
                </div>
            </div>
        </div>
        
        <header class="stick">
            <div class="topbar">
                <div class="container">
                    <div class = "headTOP">
                        <!-- <select data-placeholder="Feel Like Eating">
                            <option>FEEL LIKE EATING</option>
                            <option>Burger</option>
                            <option>Pizza</option>
                            <option>Fried Rice</option>
                            <option>Chicken Shots</option>
                        </select> -->
                        <a class = "userTop" id = "loginTopbar"  href="UpLogin.jsp" title="Login" itemprop="url">LOGIN /</a><a class = "userTop" id = "registerTopbar" href="UpRegister.jsp" title="Register" itemprop="url">REGISTER</a>
                    	<a href = "dashboard.jsp"><image id = "userProfileIcon" src = "assets/images/UserIcon.png"></image></a>
                    	<a class = "userTop" id = "userName" href = "dashboard.jsp"></a>
                		<a href = "UserLogout"><button id = "logoutButton">LOGOUT</button></a>
                    </div>
                    <div class = "NameTop">
                        <!-- <select data-placeholder="Choose Location">
                            <option>CHOOSE LOCATION</option>
                            <option>New york</option>
                            <option>Washington</option>
                            <option>Chicago</option>
                            <option>Los Angeles</option>
                        </select> -->
                    </div>
                  <div class="topbar-register">
                    	
                    </div>
                    <!--  <div class="social1">
                        <a href="#" title="Facebook" itemprop="url" target="_blank"><i class="fa fa-facebook-square"></i></a>
                        <a href="#" title="Twitter" itemprop="url" target="_blank"><i class="fa fa-twitter"></i></a>
                        <a href="#" title="Google Plus" itemprop="url" target="_blank"><i class="fa fa-google-plus"></i></a>
                    </div> -->
                </div>                
            </div><!-- Topbar -->
            <!-- Pop - up Class: class="log-popup-btn" -->
            <!-- SiGn Up: class="sign-popup-btn" -->
            <!-- class="select-wrp" -->
<div class="logo-menu-sec">
                <div class="container">
                    <div class="logo"><h1 itemprop="headline"><a href="index.jsp" title="Home" itemprop="url"><img id = "logoImage" src="assets/images/resource/GuptaLog.png" alt="logo.png" itemprop="image"></a></h1></div>
                    <nav>
                        <div class="menu-sec">
                            <ul>
                                <li class="menu-item-has-children"><a href="index.jsp" title="HOMEPAGES" itemprop="url"><span class="red-clr">FOOD ORDERING</span>HOMEPAGES</a>
                                    <%--<ul class="sub-dropdown">
                                    <%--<li><a href="index2.jsp" title="HOMEPAGE 2" itemprop="url">HOMEPAGE 2</a></li>
                                    
                                      <li><a href="index.jsp" title="HOMEPAGE 1" itemprop="url">HOMEPAGE 1</a></li> --%>
                                    <!--    </ul> -->
                                    
                                </li>
                                <li class="menu-item-has-children"><a href="#" title = "SERVICES" itemprop="url"><span class="red-clr">REAL FOOD</span>SERVICES</a>
                                    <ul class="sub-dropdown">
                                        <li><a href="restaurant-found.jsp" title="RESTAURANT 1" itemprop="url">FOOD ITEMS</a></li>
                                        <li><a href="restaurant-found2.jsp" title="RESTAURANT 2" itemprop="url">DECORATION</a></li>
                                        <li><a href="restaurant-detail.jsp" title="RESTAURANT DETAILS" itemprop="url">RESTAURANT DETAILS</a></li>
                                        <li><a href="food-recipes.jsp" title="RESTAURANT DETAILS" itemprop="url">FOOD RECIPES</a></li>
                                        <li><a href="our-articles.jsp" title="RESTAURANT DETAILS" itemprop="url">OUR ARTICLES</a></li>
                                        <li><a href="our-menu.jsp" title="RESTAURANT DETAILS" itemprop="url">OUR MENU</a></li>
                                        <li><a href="our-services.jsp" title="RESTAURANT DETAILS" itemprop="url">OUR SERVICES</a></li>
                                    </ul>
                                </li>
                                <li class="menu-item-has-children"><a href="#" title="PAGES" itemprop="url"><span class="red-clr">REAL FOOD</span>PAGES</a>
                                    <ul class="sub-dropdown">
                                        <%--<li class="menu-item-has-children"><a href="#" title="BLOG" itemprop="url">BLOG</a>
                                            <ul class="sub-dropdown">
                                                <li class="menu-item-has-children"><a href="#" title="BLOG LAYOUTS" itemprop="url">BLOG LAYOUTS</a>
                                                    <ul class="sub-dropdown">
                                                        <li><a href="blog-right-sidebar.html" title="BLOG WITH RIGHT SIDEBAR" itemprop="url">BLOG (W.R.S)</a></li>
                                                        <li><a href="blog-left-sidebar.html" title="BLOG WITH LEFT SIDEBAR" itemprop="url">BLOG (W.L.S)</a></li>
                                                        <li><a href="blog.html" title="BLOG WITH NO SIDEBAR" itemprop="url">BLOG</a></li>
                                                    </ul>
                                                </li>
                                                <li class="menu-item-has-children"><a href="#" title="BLOG DETAIL" itemprop="url">BLOG DETAIL</a>
                                                    <ul class="sub-dropdown">
                                                        <li><a href="blog-detail-right-sidebar.html" title="BLOG DETAIL WITH RIGHT SIDEBAR" itemprop="url">BLOG DETAIL (W.R.S)</a></li>
                                                        <li><a href="blog-detail-left-sidebar.html" title="BLOG DETAIL WITH LEFT SIDEBAR" itemprop="url">BLOG DETAIL (W.L.S)</a></li>
                                                        <li><a href="blog-detail.html" title="BLOG DETAIL WITH NO SIDEBAR" itemprop="url">BLOG DETAIL</a></li>
                                                    </ul>
                                                </li>
                                                <li class="menu-item-has-children"><a href="#" title="BLOG FORMATES" itemprop="url">BLOG FORMATES</a>
                                                    <ul class="sub-dropdown">
                                                        <li><a href="blog-detail-video.html" title="BLOG DETAIL WITH VIDEO" itemprop="url">BLOG DETAIL (VIDEO)</a></li>
                                                        <li><a href="blog-detail-audio.html" title="BLOG DETAIL WITH AUDIO" itemprop="url">BLOG DETAIL (AUDIO)</a></li>
                                                        <li><a href="blog-detail-carousel.html" title="BLOG DETAIL WITH CAROUSEL" itemprop="url">BLOG DETAIL (CAROUSEL)</a></li>
                                                    </ul>
                                                </li>
                                            </ul>
                                        </li> --%>
                                        <li class="menu-item-has-children"><a href="#" title="SPECIAL PAGES" itemprop="url">SPECIAL PAGES</a>
                                            <ul class="sub-dropdown">
                                                <li><a href="404.jsp" title="404 ERROR" itemprop="url">404 ERROR</a></li>
                                                <li><a href="search_found.jsp" title="SEARCH FOUND" itemprop="url">SEARCH FOUND</a></li>
                                                <li><a href="search_not_found.jsp" title="SEARCH NOT FOUND" itemprop="url">SEARCH NOT FOUND</a></li>
                                                <li><a href="coming-soon.html" title="COMING SOON" itemprop="url">COMING SOON</a></li>
                                                <li><a href="login-register.jsp" title="LOGIN & REGISTER" itemprop="url">LOGIN And REGISTER</a></li>
                                                <li><a href="price-table.jsp" title="PRICE TABLE" itemprop="url">PRICE TABLE</a></li>
                                            </ul>
                                        </li>
                                        <li class="menu-item-has-children"><a href="#" title="GALLERY" itemprop="url">GALLERY</a>
                                            <ul class="sub-dropdown">
                                                <li><a href="gallery.jsp" title="FOOD GALLERY" itemprop="url">FOOD GALLERY</a></li>
                                                <li><a href="gallery-detail.jsp" title="GALLERY DETAIL" itemprop="url">GALLERY DETAIL</a></li>
                                            </ul>
                                        </li>
                                        <li><a href="register_reservation.jsp" title="REGISTER RESERVATION" itemprop="url">REGISTER RESERVATION</a></li>
                                        <li><a href="How-it-works.jsp" title="HOW IT WORKS" itemprop="url">HOW IT WORKS</a></li>
                                        <li><a id = "dashProfile" href="dashboard.jsp" title="USER PROFILE" itemprop="url">USER PROFILE</a></li>
                                        <li><a id = "ProductUpdate" href="ProductUpdate.jsp" title="Product" itemprop="url">ADD PRODUCT</a></li>
                                        <li><a href="about_us.jsp" title="ABOUT US" itemprop="url">ABOUT US</a></li>
                                        <li><a href="food-detail.jsp" title="FOOD DETAIL" itemprop="url">FOOD DETAIL</a></li>
                                        <li><a id = "edit_product" href="edit_product.jsp" title="EDIT PRODUCT" itemprop="url">EDIT PRODUCT</a></li>
                                        <li><a id = "create_package" href="package_info.jsp" title="CREATE PACKAGE" itemprop="url">CREATE PACKAGE</a></li>
                                    	<li><a id = "add_decoration" href="add_decoration.jsp" title="ADD DECORATION" itemprop="url">ADD DECORATION</a></li>
                                    </ul>
                                </li>
                                <li><a href="Contact.jsp" title="CONTACT US" itemprop="url"><span class="red-clr">REAL FOOD</span>CONTACT US</a></li>
                            </ul>
<!--                             <a class="red-bg brd-rd4" href="register-reservation.html" title="Register" itemprop="url">REGISTER RESTAURANT</a> -->
                        </div>
                    </nav><!-- Navigation -->
                </div>
            </div><!-- Logo Menu Section -->
        </header><!-- Header -->

        <div class="responsive-header">
            <div class="responsive-logomenu">
                <div class="logo"><h1 itemprop="headline"><a href="index-2.html" title="Home" itemprop="url"><img src="assets/images/logo.png" alt="logo.png" itemprop="image"></a></h1></div>
                <span class="menu-btn yellow-bg brd-rd4"><i class="fa fa-align-justify"></i></span>
            </div>
            <div class="responsive-menu">
                <span class="menu-close red-bg brd-rd3"><i class="fa fa-close"></i></span>
                <div class="menu-lst">
                    <ul>
                        <li class="menu-item-has-children"><a href="#" title="HOMEPAGES" itemprop="url"><span class="yellow-clr">FOOD ORDERING</span>HOMEPAGES</a>
                            <ul class="sub-dropdown">
                                <li><a href="index-2.jsp" title="HOMEPAGE 1" itemprop="url">HOMEPAGE 1</a></li>
                                <%--<li><a href="index2.jsp" title="HOMEPAGE 2" itemprop="url">HOMEPAGE 2</a></li> --%>
                            </ul>
                        </li>
                        <li class="menu-item-has-children"><a href="#" title="RESTAURANTS" itemprop="url"><span class="yellow-clr">REAL FOOD</span>RESTAURANTS</a>
                            <ul class="sub-dropdown">
                                <li><a href="restaurant-found.html" title="RESTAURANT 1" itemprop="url">RESTAURANT 1</a></li>
                                <li><a href="restaurant-found2.html" title="RESTAURANT 2" itemprop="url">RESTAURANT 2</a></li>
                                <li><a href="restaurant-detail.html" title="RESTAURANT DETAILS" itemprop="url">RESTAURANT DETAILS</a></li>
                                <li><a href="restaurant-detail.html" title="RESTAURANT DETAILS" itemprop="url">RESTAURANT DETAILS</a></li>
                                <li><a href="food-recipes.html" title="RESTAURANT DETAILS" itemprop="url">FOOD RECIPES</a></li>
                                <li><a href="our-articles.html" title="RESTAURANT DETAILS" itemprop="url">OUR ARTICLES</a></li>
                                <li><a href="our-menu.html" title="RESTAURANT DETAILS" itemprop="url">OUR MENU</a></li>
                                <li><a href="our-services.html" title="RESTAURANT DETAILS" itemprop="url">OUR SERVICES</a></li>
                            </ul>
                        </li>
                        <li class="menu-item-has-children"><a href="#" title="PAGES" itemprop="url"><span class="yellow-clr">REAL FOOD</span>PAGES</a>
                            <ul class="sub-dropdown">
                                <li class="menu-item-has-children"><a href="#" title="BLOG" itemprop="url">BLOG</a>
                                    <ul class="sub-dropdown">
                                        <li class="menu-item-has-children"><a href="#" title="BLOG LAYOUTS" itemprop="url">BLOG LAYOUTS</a>
                                            <ul class="sub-dropdown">
                                                <li><a href="blog-right-sidebar.html" title="BLOG WITH RIGHT SIDEBAR" itemprop="url">BLOG (W.R.S)</a></li>
                                                <li><a href="blog-left-sidebar.html" title="BLOG WITH LEFT SIDEBAR" itemprop="url">BLOG (W.L.S)</a></li>
                                                <li><a href="blog.html" title="BLOG WITH NO SIDEBAR" itemprop="url">BLOG</a></li>
                                            </ul>
                                        </li>
                                        <li class="menu-item-has-children"><a href="#" title="BLOG DETAIL" itemprop="url">BLOG DETAIL</a>
                                            <ul class="sub-dropdown">
                                                <li><a href="blog-detail-right-sidebar.html" title="BLOG DETAIL WITH RIGHT SIDEBAR" itemprop="url">BLOG DETAIL (W.R.S)</a></li>
                                                <li><a href="blog-detail-left-sidebar.html" title="BLOG DETAIL WITH LEFT SIDEBAR" itemprop="url">BLOG DETAIL (W.L.S)</a></li>
                                                <li><a href="blog-detail.html" title="BLOG DETAIL WITH NO SIDEBAR" itemprop="url">BLOG DETAIL</a></li>
                                            </ul>
                                        </li>
                                        <li class="menu-item-has-children"><a href="#" title="BLOG FORMATES" itemprop="url">BLOG FORMATES</a>
                                            <ul class="sub-dropdown">
                                                <li><a href="blog-detail-video.html" title="BLOG DETAIL WITH VIDEO" itemprop="url">BLOG DETAIL (VIDEO)</a></li>
                                                <li><a href="blog-detail-audio.html" title="BLOG DETAIL WITH AUDIO" itemprop="url">BLOG DETAIL (AUDIO)</a></li>
                                                <li><a href="blog-detail-carousel.html" title="BLOG DETAIL WITH CAROUSEL" itemprop="url">BLOG DETAIL (CAROUSEL)</a></li>
                                            </ul>
                                        </li>
                                    </ul>
                                </li>
                                <li class="menu-item-has-children"><a href="#" title="SPECIAL PAGES" itemprop="url">SPECIAL PAGES</a>
                                    <ul class="sub-dropdown">
                                        <li><a href="404.html" title="404 ERROR" itemprop="url">404 ERROR</a></li>
                                        <li><a href="search-found.html" title="SEARCH FOUND" itemprop="url">SEARCH FOUND</a></li>
                                        <li><a href="search-not-found.html" title="SEARCH NOT FOUND" itemprop="url">SEARCH NOT FOUND</a></li>
                                        <li><a href="coming-soon.html" title="COMING SOON" itemprop="url">COMING SOON</a></li>
                                        <li><a href="login-register.html" title="LOGIN & REGISTER" itemprop="url">LOGIN & REGISTER</a></li>
                                        <li><a href="price-table.html" title="PRICE TABLE" itemprop="url">PRICE TABLE</a></li>
                                    </ul>
                                </li>
                                <li class="menu-item-has-children"><a href="#" title="GALLERY" itemprop="url">GALLERY</a>
                                    <ul class="sub-dropdown">
                                        <li><a href="gallery.html" title="FOOD GALLERY" itemprop="url">FOOD GALLERY</a></li>
                                        <li><a href="gallery-detail.html" title="GALLERY DETAIL" itemprop="url">GALLERY DETAIL</a></li>
                                    </ul>
                                </li>
                                <li><a href="register-reservation.html" title="REGISTER RESERVATION" itemprop="url">REGISTER RESERVATION</a></li>
                                <li><a href="how-it-works.html" title="HOW IT WORKS" itemprop="url">HOW IT WORKS</a></li>
                                <li><a href="dashboard.html" title="USER PROFILE" itemprop="url">USER PROFILE</a></li>
                                <li><a href="about-us.html" title="ABOUT US" itemprop="url">ABOUT US</a></li>
                                <li><a href="food-detail.html" title="FOOD DETAIL" itemprop="url">FOOD DETAIL</a></li>
                            </ul>
                        </li>
                        <li><a href="contact.html" title="CONTACT US" itemprop="url"><span class="yellow-clr">REAL FOOD</span>CONTACT US</a></li>
                    </ul>
                </div>
                <div class="topbar-register">
                    <a class="log-popup-btn" href="#" title="Login" itemprop="url">LOGIN</a> / <a class="sign-popup-btn" href="#" title="Register" itemprop="url">REGISTER</a>
                </div>
                <div class="social1">
                    <a href="#" title="Facebook" itemprop="url" target="_blank"><i class="fa fa-facebook-square"></i></a>
                    <a href="#" title="Twitter" itemprop="url" target="_blank"><i class="fa fa-twitter"></i></a>
                    <a href="#" title="Google Plus" itemprop="url" target="_blank"><i class="fa fa-google-plus"></i></a>
                </div>
                <div class="register-btn">
                    <a class="yellow-bg brd-rd4" href="register-reservation.html" title="Register" itemprop="url">REGISTER RESTAURANT</a>
                </div>
            </div><!-- Responsive Menu -->
        </div><!-- Responsive Header -->
