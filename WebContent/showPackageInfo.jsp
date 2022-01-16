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
<style type="text/css">
input[type="checkbox"]
{
	margin-top:40px;
	margin-left:50px;
	height: 20px;
	width: 20px;
	background: red;
}
#logoutButton2 {
	height: 30px;
	width: 150px;
	color: white;
	background-color: red;
	margin-left: 10px;
}

.button3 {
	background-color: orange;
	color: black;
	padding: 10px;
	border: 2px solid #f44336;
}

.button3:hover {
	background-color: #f44336;
	color: white;
}

#logoutButton2:hover {
	height: 35px;
	width: 150px;
	color: black;
	background-color: orange;
}

.errmessage {
	color: red;
	font-style: italic;
	font-size: 11px;
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

#addPackage {
	cursor: pointer;
}
</style>
<%
	String product_id = new String();
%>
<script src="assets/js/jquery.min.js"></script>
<script>
	$(document).ready(function()
	{
		$('input[type="checkbox"]').click(function(){
			product_id = $(this).val();
			//alert(product_id);
			if($(this).prop("checked") == true){
				
            }
            else if($(this).prop("checked") == false){
            	
            }
			$.get("AddToPackage", {
				pid : product_id
			}).done(function(data) {

			});
		});
	});
</script>
<%
	int package_id = 0;
package_id = (int) request.getAttribute("getPackId");
System.out.println("\nPackage ID: " + package_id);
%>
</head>
<body itemscope>
	<jsp:include page="/GetCategoryList" />
	<jsp:include page="/GetProductList" />

	<%
		List<String> categoryList = new ArrayList<String>();
	categoryList = (List) request.getAttribute("listCategory");
	System.out.println("\nCategoryList: " + categoryList);
	%>
	<%
		List<Food_items> list_of_product = new ArrayList<Food_items>();
	%>
	<%
		list_of_product = (List) request.getAttribute("list_of_product");
	%>
	<%
		for (Food_items x : list_of_product)
		System.out.println("Category : " + x.getFood_items_type_name() + "\tFood Name: " + x.getFood_item_name());
	%>
	<%
		List_of_food_items packageObj = new List_of_food_items();
	packageObj = (List_of_food_items) request.getAttribute("package_info");
	%>

	<main>
		<section>
			<div class="block">
				<div class="fixed-bg"
					style="background-image: url(assets/images/topbg.jpg);"></div>
				<div class="page-title-wrapper text-center">
					<div class="col-md-12 col-sm-12 col-lg-12">
						<div class="page-title-inner">
							<h1 itemprop="headline">Create Package</h1>
							<span>Create Package For Event</span>
						</div>
					</div>
				</div>
			</div>
		</section>
		<div class="bread-crumbs-wrapper">
			<div class="container">
				<ol class="breadcrumb">
					<li class="breadcrumb-item"><a href="index.jsp" title=""
						itemprop="url">Home</a></li>
					<li class="breadcrumb-item active">Create Package</li>
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
													<ul class="nav nav-tabs">
														<li class="active"><a href="#dashboard"
															data-toggle="tab"><i class="fa fa-dashboard"></i>PACKAGE
																INFO</a></li>

														<%
															for (String categoryName : categoryList) {
														%>
														<li><a id="<%=categoryName.toLowerCase()%>"
															href="#my_<%=categoryName.toLowerCase()%>"
															data-toggle="tab"><i class="fa fa-cog"></i> <%=categoryName.toUpperCase()%></a></li>
														<%
															}
														%>
													</ul>
													<%
														int pid2 = 9999;
													%>
													<a href="AddToPackage?pid2=<%=pid2%>" id="logoutButton2">SHOW
														PACKAGE</a>
												</div>

											</div>

										</div>
										<input type="hidden" name="pack_id" value="<%=package_id%>"></input>

										<div class="col-md-8 col-sm-12 col-lg-8">
											<div class="tab-content">

												<div class="tab-pane fade in active" id="dashboard">
													<div class="dashboard-wrapper brd-rd5">
														<h4 itemprop="headline">PACKAGE INFORMATION</h4>
														<div class="account-settings-inner">
															<div class="row"></div>
															<div class="col-md-8 col-sm-8 col-lg-8">
																<div class="profile-info-form-wrap">
																	<form class="profile-info-form" name="editProfile"
																		action="#" method="post">
																		<div class="row mrg20">
																			<div class="col-md-12 col-sm-12 col-lg-12">
																				<label>Package Name <sup>*</sup></label> <input
																					id="fullName" name="fullName" class="brd-rd3"
																					type="text" placeholder="Enter Your Name"
																					value="<%=packageObj.getPackage_name()%>" readonly>
																				<span id="namespan" class="errmessage"></span>
																			</div>
																			<div class="col-md-12 col-sm-12 col-lg-12">
																				<label>Event Name <sup>*</sup></label> <input
																					id="emailAddress" name="emailAddress"
																					class="brd-rd3" type="email"
																					placeholder="Enter Your Email Address"
																					value="<%=packageObj.getEvent_name()%>" readonly>
																			</div>
																			<div class="col-md-12 col-sm-12 col-lg-12">
																				<label>Package Type <sup>*</sup></label> <input
																					id="emailAddress" name="emailAddress"
																					class="brd-rd3" type="email"
																					placeholder="Enter Your Email Address"
																					value="<%=packageObj.getPackage_type()%>" readonly>
																			</div>

																			<div class="col-md-12 col-sm-12 col-lg-12">
																				<label>Package Description <sup>*</sup></label>
																				<!--  <input class="brd-rd3" type="textarea" rows = "5" cols = "50" placeholder="Enter Your Address"> -->
																				<textarea id="address" rows="10" name="address"
																					readonly><%=packageObj.getPackage_description()%></textarea>
																				<span id="addspan" class="errmessage"></span>
																			</div>

																		</div>
																	</form>

																</div>
															</div>
														</div>
													</div>
												</div>
												<%
													for (String categoryName : categoryList) {
												%>
												<div class="tab-pane fade"
													id="my_<%=categoryName.toLowerCase()%>">
													<%
														for (Food_items obj : list_of_product) {
													%>
													<%
														if (categoryName.equalsIgnoreCase(obj.getFood_items_type_name())) {
													%>

													<div class="dashboard-wrapper brd-rd5">
														<div class="restaurants-list">
															<div
																class="featured-restaurant-box style3 brd-rd5 wow fadeInUp"
																data-wow-delay="0.2s">
																<div class="featured-restaurant-thumb">
																	<a href="#" title="" itemprop="url"><img
																		src="data:image/png;base64,<%=obj.getFoodItemImageString()%>"
																		alt="restaurant-logo1-1.png" itemprop="image"></a>
																</div>
																<div class="featured-restaurant-info">
																	<span class="red-clr"><%=obj.getFood_item_id()%></span>
																	<h4 itemprop="headline">
																		<a href="#" title="" itemprop="url"><%=obj.getFood_item_name()%></a>
																	</h4>
																	<ul class="post-meta">
																		<li><i class="fa fa-check-circle-o"></i> <%=obj.getFood_item_price()%></li>
																		<li><i class="flaticon-transport"></i> 30min</li>
																	</ul>
																</div>
																
																<div class="view-menu-liks">
																	<span class="red-bg brd-rd4 post-likes"><i
																		class="fa fa-heart-o"></i> 12</span>
																	<!-- 																<button id="addPackage" class="button3" -->
																	<%-- 																	value="<%=obj.getFood_item_id()%>">Add To --%>
																	<!-- 																	Package</button> -->
																	<br><input type = "checkbox" name = "selectProduct" value = "<%=obj.getFood_item_id()%>">Add To Package</input>
												
																</div>
															</div>
														</div>
													</div>

													<%
														}
													%>
													<%
														}
													%>
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

		</section>
		<%@include file="Topbar.jsp"%>
		<%@include file="commonjs.jsp"%>
		<%@include file="Footer.jsp"%>
	</main>
	<script>
	
		document.getElementById('name').focus();
		var getname;
		var flag = true;
		var namepattern = /^([a-zA-Z ]+)$/;
		function checkName()
		{
			getname = document.createPackage.name.value;	
			getname = getname.trim();
			if(getname == "" || !(namepattern.test(getname)) || getname.length < 3 || getname.length > 45)
			{
				flag = false;
				document.getElementById("namespan").innerHTML  = "Please enter package name properly!"; 
			}
			else
			{
				flag = true;
				document.getElementById("namespan").innerHTML = "";	
			}
		}
		function checkPackDetails()
		{
			checkName();
			if(flag == true)
		
			return flag;
		}
	</script>
</body>
</html>