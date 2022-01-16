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
	</head>
<body itemscope>
	
    <main>
    	
 		<%@include file = "logValidation.jsp" %>
        <%@include file = "Topbar.jsp" %>
        <%User userObj = (User)request.getAttribute("userDetails");%>
        <%System.out.println("\nOTP PAGE: " + userObj); %>
        <div style = "height: 500px; width: 600px; margin-left: 450px;">
		<div class="sign-popup-inner brd-rd5">
			<!--  <a class="log-close-btn" href="#" title="" itemprop="url"><i
				class="fa fa-close"></i></a> -->
			<div class="sign-popup-title text-center">
				<h4 itemprop="headline">Enter OTP Here</h4>
				
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
			<form class="sign-form" name = "otpForm" method = "post" action = "Registration">
				<div class="row">
					<div class="col-md-12 col-sm-12 col-lg-12">
						<input class="brd-rd3" type="text" onblur = "getUserOTP()" placeholder="Enter OTP" name = "otp" id = "otp" required>
						<span class ="errspan" id = "otpspan"></span>
					
						<input id = "name" class="brd-rd3" type="hidden" min = "3" max = "25" placeholder="Enter Full Name" name = "name" value = "<%=userObj.getUser_name()%>">
						<input id = "mail" type="hidden" placeholder="e.g. abc123@gmail.com" name = "email" value = "<%=userObj.getUser_email()%>">
						<input id = "contact" class="brd-rd3" type="hidden" placeholder="10 Digit Contact Number" name="contact" value = "<%=userObj.getUser_contact()%>">
						<input id = "password" class="brd-rd3" type="hidden" placeholder="Password" name = "password" value = "<%=userObj.getUser_password()%>">
					</div>
					
					<div class="col-md-12 col-sm-12 col-lg-12">
						<button class="red-bg brd-rd3" type="submit" onclick = "return checkOTP()">SUBMIT</button>
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
        <%@include file = "Footer.jsp" %>
	</main>
	<%@include file = "commonjs.jsp" %>
</body>
<script>
	
	window.setTimeout(myf,1000);
	function myf(){
		alert("OTP has been sent on your email address!");
	}
	var otppattern = /^([0-9]{6})$/;
	document.getElementById("otp").focus();
	function checkOTP(){
		var otp = document.otpForm.otp.value;
		otp = otp.trim();
		if(otp == ""){
			document.getElementById("otpspan").innerHTML="Please enter OTP!";
			document.otpForm.otp.focus();
			return false;
		}
		else{
			document.getElementById("otpspan").innerHTML="";
			if(!(otppattern.test(otp))){
				document.getElementById("otpspan").innerHTML="Invalid OTP!";
				return false;
			}
			else{
				document.getElementById("otpspan").innerHTML="";
				
				 <% String str = (String)request.getAttribute("OTP"); %>
				 var otpgenerate = <%=str%>;
				 
				 if(otp !=  otpgenerate ) {
					document.getElementById("otpspan").innerHTML="OTP doesn't match!";
					return false; 
				} 
				 else
					 {
					 	return true;
					 }
			}
		}
	}
	

	
</script>
</html>