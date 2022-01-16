<%@ page import = "com.e_catering_system.bean.User" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="" />
    <meta name="keywords" content="" />
    <title>Food Ordering HTML Template</title>
    <%@include file = "commoncss.jsp" %>
    <style>
    	#showPass
    	{
    		height: 12px;
    		width: 12px;
    		margin-right: 3px;
    	}
    </style>

</head>
<body itemscope>
    <main>
 		<%@include file = "regValidation.jsp" %>
        <%@include file = "Topbar.jsp" %>
        
        <div style = "height: 500px; width: 600px; margin-left: 450px;">
		<div class="sign-popup-inner brd-rd5">
			<!-- <a class="sign-close-btn" href="#" title="" itemprop="url"><i
				class="fa fa-close"></i></a> -->
			<div class="sign-popup-title text-center">
				<h4 itemprop="headline">SIGN UP</h4>
				<!--<span>with your social network</span> -->
			</div>
			<!--   <div class="popup-social text-center">
				<a class="facebook brd-rd3" href="#" title="Facebook" itemprop="url"
					target="_blank"><i class="fa fa-facebook"></i> Facebook</a> <a
					class="google brd-rd3" href="#" title="Google Plus" itemprop="url"
					target="_blank"><i class="fa fa-google-plus"></i> Google</a> <a
					class="twitter brd-rd3" href="#" title="Twitter" itemprop="url"
					target="_blank"><i class="fa fa-twitter"></i> Twitter</a>
			</div>
			<span class="popup-seprator text-center"><i class="brd-rd50">or</i></span> -->
			<form name = "myForm" class="sign-form" action = "InputOTP" method = "post">
				<div class="row">
					<div class="col-md-12 col-sm-12 col-lg-12">
						
					<input id = "name" class="brd-rd3" type="text" min = "3" max = "25" placeholder="Enter Full Name" name = "name" onblur = "checkName()" required>
					<span id = "namespan" class = "errmessage"></span>
					</div> 
					
					<div class="col-md-12 col-sm-12 col-lg-12">
						<input class="brd-rd3" id = "mail" type="email" placeholder="e.g. abc123@gmail.com" name = "email" onblur = "checkEmail()" required>
						<span id = "emailspan" class = "errmessage"></span>
					</div>
					<div class="col-md-12 col-sm-12 col-lg-12 col-xs-12">
						<input id = "contact" class="brd-rd3" type="text" placeholder="10 Digit Contact Number" name="contact" onblur = "checkContact()" required>
						<span id = "contactspan" class = "errmessage"></span>
					</div>

					<div class="col-md-12 col-sm-12 col-lg-12">
						<input id = "password" class="brd-rd3" type="password" placeholder="Password" name = "password" onblur = "checkPassword()" required>
						<input id = "showPass" type = "checkbox" onclick = "myFunction()"> Show Password</input>
						<span id = "passpan" class = "errmessage"></span>
	
					</div>
					<div class="col-md-12 col-sm-12 col-lg-12 col-xs-12">
						<input id = "cpassword" class="brd-rd3" type="password" placeholder="Confirm Password" name="copassword" onblur = "checkCpassword()" required>
						<span id = "conpassspan" class = "errmessage"></span>
					</div>
					<div class="col-md-12 col-sm-12 col-lg-12">
						<button class="red-bg brd-rd3" type="submit" onclick = "return checkValidation()">REGISTER NOW</button>
					</div>
					<div class="col-md-12 col-sm-12 col-lg-12">
						<a class="sign-btn" href="UpLogin.jsp" title="" itemprop="url">Already
							Registered? Sign in</a> 
							<!-- <a class="recover-btn" href="#" title=""
							itemprop="url">Recover my password</a> -->
					</div> 
				</div>
			</form>
		</div>
	</div>
        <%@include file = "Footer.jsp" %>
    </main>
    <%@include file = "commonjs.jsp" %>
<script>
document.getElementById('name').focus();
function myFunction() {
	  var x = document.getElementById("password");
	  if (x.type === "password") {
	    x.type = "text";
	  } else {
	    x.type = "password";
	  }
	}
</script>
</body>
</html>
<!--  -->