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
#showPass {
	height: 12px;
	width: 12px;
	margin-right: 3px;
}
</style>
</head>
<body itemscope>
	<main>

		<%@include file="logValidation.jsp"%>
		<%@include file="Topbar.jsp"%>

		<div style="height: 500px; width: 600px; margin-left: 450px;">
			<div class="sign-popup-inner brd-rd5">
				<!--  <a class="log-close-btn" href="#" title="" itemprop="url"><i
				class="fa fa-close"></i></a> -->
				<div class="sign-popup-title text-center">
					<h4 itemprop="headline">SIGN IN</h4>

				</div>
<!-- 				<div class="popup-social text-center"> -->
<!-- 					<a class="facebook brd-rd3" href="#" title="Facebook" -->
<!-- 						itemprop="url" target="_blank"><i class="fa fa-facebook"></i> -->
<!-- 						Facebook</a> <a class="google brd-rd3" href="#" title="Google Plus" -->
<!-- 						itemprop="url" target="_blank"><i class="fa fa-google-plus"></i> -->
<!-- 						Google</a> <a class="twitter brd-rd3" href="#" title="Twitter" -->
<!-- 						itemprop="url" target="_blank"><i class="fa fa-twitter"></i> -->
<!-- 						Twitter</a> -->
<!-- 				</div> -->
				<span class="popup-seprator text-center"><i class="brd-rd50"></i></span>
				<form class="sign-form" name="loginForm" method="POST"
					action="Login">
					<div class="row">
						<div class="col-md-12 col-sm-12 col-lg-12">
							<input class="brd-rd3" type="text" onblur="getUserEmail()"
								placeholder="Enter Email ID" name="email" id="email" required> <span
								class="errspan" id="emailspan"></span>
						</div>
						<div class="col-md-12 col-sm-12 col-lg-12">
							<input class="brd-rd3" type="password" onblur="getUserPassword()"
								placeholder="Enter Password" name="password" id="password" required>
							<input id="showPass" type="checkbox" onclick="myFunction()">
							Show Password</input> <span class="errspan" id="passpan"></span>

						</div>

						<div class="col-md-12 col-sm-12 col-lg-12">
							<button class="red-bg brd-rd3" type="submit"
								onclick="return checkDetails()">SIGN IN</button>
						</div>
						<div class="col-md-12 col-sm-12 col-lg-12">
							<a class="sign-btn" href="UpRegister.jsp" title="" itemprop="url">Not
								a member? Sign up</a> <a class="recover-btn"
								href="ForgetPasswordOtp.jsp" title="" itemprop="url">Recover
								my password</a>
						</div>
					</div>
				</form>
			</div>

		</div>
		<%@include file="Footer.jsp"%>
	</main>
	<%@include file="commonjs.jsp"%>
</body>
<script>
document.getElementById('email').focus();
function myFunction() {
	  var x = document.getElementById("password");
	  if (x.type === "password") {
	    x.type = "text";
	  } else {
	    x.type = "password";
	  }
	}
	<%String getMessage = (String) request.getAttribute("message");%>
	<%System.out.println("Get MEssage: " + getMessage);%>
	var x = "<%=getMessage%>";
<%-- <%if(getMessage != null && getMessage.length() > 0){ %> --%>
	if(x != "null"){
		alert(x);
	}
</script>
</html>