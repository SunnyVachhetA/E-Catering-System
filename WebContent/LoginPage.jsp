<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

		
<html>
<head>
	<%@include file = "commoncss.jsp" %>
</head>
<body>
<%@include file = "logValidation.jsp" %>

<div class="log-popup text-center">
	<div class="sign-popup-wrapper brd-rd5">
		<div class="sign-popup-inner brd-rd5">
			<a class="log-close-btn" href="#" title="" itemprop="url"><i
				class="fa fa-close"></i></a>
			<div class="sign-popup-title text-center">
				<h4 itemprop="headline">SIGN IN</h4>
				<span>with your social network</span>
			</div>
			<div class="popup-social text-center">
				<a class="facebook brd-rd3" href="#" title="Facebook" itemprop="url"
					target="_blank"><i class="fa fa-facebook"></i> Facebook</a> <a
					class="google brd-rd3" href="#" title="Google Plus" itemprop="url"
					target="_blank"><i class="fa fa-google-plus"></i> Google</a> <a
					class="twitter brd-rd3" href="#" title="Twitter" itemprop="url"
					target="_blank"><i class="fa fa-twitter"></i> Twitter</a>
			</div>
			<span class="popup-seprator text-center"><i class="brd-rd50">or</i></span>
			<form class="sign-form" name = "loginForm" method = "POST" action = "Login">
				<div class="row">
					<div class="col-md-12 col-sm-12 col-lg-12">
						<input class="brd-rd3" type="text" onblur = "getUserEmail()" placeholder="Email" name = "email" id = "email" required>
						<span class ="errspan" id = "emailspan"></span>
					</div>
					<div class="col-md-12 col-sm-12 col-lg-12">
						<input class="brd-rd3" type="password" onblur = "getUserPassword()" placeholder="Password" name = "password" id = "password" required>
						<span class = "errspan" id = "passpan"></span>
					</div>
					<div class="col-md-12 col-sm-12 col-lg-12">
						<button class="red-bg brd-rd3" type="submit" onclick = "return checkDetails()">SIGN IN</button>
					</div>
					<div class="col-md-12 col-sm-12 col-lg-12">
						<a class="sign-btn" href="RegistrationPage.jsp" title="" itemprop="url">Not a
							member? Sign up</a> <a class="recover-btn" href="#" title=""
							itemprop="url">Recover my password</a>
					</div>
				</div>
			</form>
		</div>
	</div>
</div>
<%@include file = "commonjs.jsp" %>
</body>
</html>