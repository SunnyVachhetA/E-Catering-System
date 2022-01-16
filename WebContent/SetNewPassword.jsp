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
	<style type="text/css">
	.errmessage {
	color: red;
	font-style: italic;
	font-size: 11px;
}
    	#showPass
    	{
    		height: 12px;
    		width: 12px;
    		margin-right: 3px;
    	}
</style>
</head>
  <%User userObj = (User)request.getAttribute("userDetails"); %>
<body itemscope>
    <main>
        <%@include file = "Topbar.jsp" %>
 
        <div style = "height: 500px; width: 600px; margin-left: 450px;">
		<div class="sign-popup-inner brd-rd5">
			<!-- <a class="sign-close-btn" href="#" title="" itemprop="url"><i
				class="fa fa-close"></i></a> -->
			<div class="sign-popup-title text-center">
				<h4 itemprop="headline">SET NEW PASSWORD</h4>
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
			<form name = "passwordForm" class="sign-form" action = "SetUserNewPassword" method = "post">
				<div class="row">
					<div class="col-md-12 col-sm-12 col-lg-12">
						
					<input id = "email" class="brd-rd3" type="email" name = "email" value = "<%=userObj.getUser_email()%>" readonly>
					<span id = "namespan" class = "errmessage"></span>
					</div> 
					
					<div class="col-md-12 col-sm-12 col-lg-12">
						<input class="brd-rd3" id = "otp" type="number" placeholder="Enter OTP" name = "otp" onblur = "checkOTP()" required>
						<span id = "otpspan" class = "errmessage"></span>
					</div>
					<div class="col-md-12 col-sm-12 col-lg-12 col-xs-12">
						<input id = "password" class="brd-rd3" type="password" placeholder="Enter New Password" name="password" onblur = "checkPassword()" required>
						<input id = "showPass" type = "checkbox" onclick = "myFunction()"> Show Password</input>
						<span id = "passpan" class = "errmessage"></span>
					</div>
					<div class="col-md-12 col-sm-12 col-lg-12 col-xs-12">
						<input id = "cpassword" class="brd-rd3" type="password" placeholder="Confirm Password" name="cpassword" onblur = "checkCPassword()" required>
						<span id = "conpassspan" class = "errmessage"></span>
					</div>
					<div class="col-md-12 col-sm-12 col-lg-12">
						<button class="red-bg brd-rd3" type="submit" onclick = "return checkValidation()">SUBMIT</button>
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
		var passpattern =/^(?=.*[0-9])(?=.*[!@#$%^&*])[a-zA-Z0-9!@#$%^&*]{7,15}$/ ;
		var flag = false;
		var cpflag = false;
		var otpflag = false;
		var pflag = false;
		window.setTimeout(myf,1000);
		var otppattern = /^([0-9]{6})$/;
		var pass;
		var cpass;
		var otp;
		document.getElementById('otp').focus();
		<%boolean flag1 = false;%>
		function myFunction() {
			  var x = document.getElementById("password");
			  if (x.type === "password") {
			    x.type = "text";
			  } else {
			    x.type = "password";
			  }
			}

		function checkPassword()
		{
			pass = document.passwordForm.password.value;
			pass = pass.trim();
			
			if(pass == "")
			{
				flag = false;
				pflag = true;
				document.getElementById("passpan").innerHTML = "Please enter password!";	
			}
			else
			{
				flag = true;
				pflag = false;
				document.getElementById("passpan").innerHTML = "";
				
				if(!(passpattern.test(pass)))
				{
					flag = false;
					pflag = true;
					document.getElementById("passpan").innerHTML = "Password must contain at least one digit and special character!";		
				}
			}
			if(pass.length < 7 || pass.length > 15)
			{
				flag = false;
				pflag = true;
				document.getElementById("passpan").innerHTML = "Password size should be between 7 to 15!";
			}
		}
		
		function checkCPassword()
		{
			cpass = document.passwordForm.cpassword.value;
			
			if(cpass == "")
			{
				flag = false;
				cpflag = true;
				document.getElementById("conpassspan").innerHTML = "Please re-enter password!";
			}
			else
			{
				document.getElementById("conpassspan").innerHTML = "";
				flag = true;
				cpflag = false;
				if(cpass == pass)
				{
					document.getElementById("conpassspan").innerHTML = "";
					flag = true;
					cpflag = false;
				}
				else
				{
					flag = false;
					cpflag = true;
					document.getElementById("conpassspan").innerHTML = "Password must be same!";
				}
			}
		}
		
		function myf(){
			alert("OTP has been sent on your email address!");
		}

		function checkOTP(){
			otp = document.passwordForm.otp.value;
			otp = otp.trim();
			if(otp == ""){
				document.getElementById("otpspan").innerHTML="Please enter OTP!";
				document.otpForm.otp.focus();
				flag  =  false;
				otpflag = true;
			}
			else{
				document.getElementById("otpspan").innerHTML="";
				if(!(otppattern.test(otp))){
					document.getElementById("otpspan").innerHTML="Invalid OTP!";
					flag = false;
					otpflag = true;
				}
				else{
					document.getElementById("otpspan").innerHTML="";
					
					 <% String str = (String)request.getAttribute("OTP"); %>
					 var otpgenerate = <%=str%>;
					 
					 if(otp !=  otpgenerate ) {
						document.getElementById("otpspan").innerHTML="OTP doesn't match!";
						flag = false;
						otpflag = true;
					} 
					 else
						 {
						 	flag = true;
						 	otpflag = false;
						 }
				}
			}
		}
		function checkValidation()
		{
			flag = false;
			

			checkPassword();
			checkCPassword();
			checkOTP();
			
			if(pflag == true)
			{
				document.getElementById("password").focus();
				flag1 =false;
				return flag;
			}
			else if(cpflag == true)
			{
				document.getElementById("cpassword").focus();
				flag1 = false;
				return flag;
			}
			else if(otpflag == true)
			{
				document.getElementById('otp').focus();	
				flag1 = false;
				return flag;
			}
			if(flag == true)
			{
				<%flag1 = true;%>
			}
		
			return flag;
		}
	</script>
	<%System.out.println("\nSET USER: " + userObj); %>
</body>
</html>