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
<style>
*, *::before, *::after {
	box-sizing: border-box;
}
textarea {
	border: 1px solid #888;
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

select {
	background-color: transparent;
	border: none;
	padding: 0 1em 0 0;
	margin: 0;
	width: 100%;
	font-family: inherit;
	font-size: inherit;
	cursor: inherit;
	line-height: inherit;
}

:root { -
	-select-border: #777; -
	-select-focus: red; -
	-select-arrow: var(- -select-border);
}

.select {
	width: 31%;
	min-width: 15ch;
	max-width: 30ch;
	border: 1px solid var(- -select-border);
	border-radius: 0.25em;
	padding: 0.25em 0.5em;
	font-size: 1.25rem;
	cursor: pointer;
	line-height: 1.1;
	background-color: #fff;
}

textarea {
	border: 1px solid #888;
}
label
{
	margin-top : 10px;
	margin-bottom: 10px;
}
.errmessage {
	color: red;
	font-style: italic;
	font-size: 11px;
}

input[type=radio] {
	height: 10px;
	width: 10px;
	margin-left: 10px;
}
</style>
</head>
<body itemscope>
	<jsp:include page="/GetEventList" />
	<%
	List<Event> event_list = new ArrayList<Event>();
	event_list = (List)request.getAttribute("list_event");
	%>
	<main>
		<div style="height: 600px; width: 600px; margin-left: 450px;">
			<div class="sign-popup-inner brd-rd5">
				<!--  <a class="log-close-btn" href="#" title="" itemprop="url"><i
				class="fa fa-close"></i></a> -->
				<div class="sign-popup-title text-center">
					<h4 itemprop="headline">Package Information</h4>
				</div>
				<form class="sign-form" name="createPackage" method="post"
					action="CreatePackageInfo">
					<div class="row">
						<div class="col-md-12 col-sm-12 col-lg-12">
							<label>Name Of Package <sup>*</sup></label> <input id="name"
								name="name" class="brd-rd3" type="text"
								placeholder="Enter Package Name" onblur="checkName()" required>
							<span id="namespan" class="errmessage"></span>
						</div>
						<div class="col-md-6 col-sm-6 col-lg-6">
							<label>Event Name <sup>*</sup></label>
							<div class="select-wrp">
								<select name="eventName" onchange="checkEvent()">
									<option value="none" selected>Select Event</option>
								<%for(Event obj : event_list) {%>	
									<option value="<%=obj.getEvent_name().toLowerCase()%>"><%=obj.getEvent_name().toUpperCase()%></option>
								<%} %>
								</select>
								<span id="eventspan" class="errmessage"></span>
							</div>
						</div>
						<div class="col-md-6 col-sm-6 col-lg-6">
							<label>Package Type <sup>*</sup></label>
							<div class="select-wrp">
								<select name="packType" onchange="checkPack()">
									<option value="none">Select Type</option>
									<option value="economy">Economy</option>
									<option value="exclusive">Exclusive</option>
									<option value="super-exclusive">Super-Exclusive</option>
									<option value="special">Special</option>
									<option value="other">Other</option>
								</select>
								<span id="packspan" class="errmessage"></span>
							</div>
						</div>
						<br>
						<div class="col-md-12 col-sm-12 col-lg-12">
							<label>Package Description <sup>*</sup></label>
							<!--  <input class="brd-rd3" type="textarea" rows = "5" cols = "50" placeholder="Enter Your Address"> -->
							<textarea id="description" rows="7" cols = "71" name="description"></textarea>
						</div>
						<br>
						<button class="red-bg brd-rd3" type="submit"
							onclick="return checkPackDetails()">Save Info</button>

					</div>
				</form>
			</div>
		</div>
	</main>
	<%@include file="commonjs.jsp"%>
	<%@include file="Topbar.jsp"%>
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
	function checkEvent()
	{
		var getEvent = document.createPackage.eventName.value;
		if(getEvent == "none")
		{
			flag = false;
			document.getElementById("eventspan").innerHTML  = "Please Select Event!";
		}
		else
		{
			flag = true;
			document.getElementById("eventspan").innerHTML  = "";
		}
	}
	function checkPack()
	{
		var getEvent = document.createPackage.packType.value;
		if(getEvent == "none")
		{
			flag = false;
			document.getElementById("packspan").innerHTML  = "Please Select Package Type!";
		}
		else
		{
			flag = true;
			document.getElementById("packspan").innerHTML  = "";
		}
	}
	function checkPackDetails()
	{
		checkName();
		checkEvent();
		checkPack();
		return flag;
	}
	</script>
</body>
</html>
