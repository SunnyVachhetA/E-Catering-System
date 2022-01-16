<!DOCTYPE html>
<html lang="en">
<%boolean emailStatus = true; %>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="" />
    <meta name="keywords" content="" />
    <title>Food Ordering HTML Template</title>
    <%@include file = "commoncss.jsp" %>
	<style type="text/css">
.errspan {
	color: red;
	font-style: italic;
	font-size: 11px;
}
</style>
	<script src = "assets/js/jquery.min.js"></script>
	<script>
	$(document).ready(function()
	{
		$("input[type=email]").blur(function() {
			var str = $("#email").val();
			if(str == "" || str == null)
			{
				$('#emailspan').text("Please enter Email ID!");
			}
			else{
			$.get("ForgetPassword", {
				email : str
			}).done(function(data) {
		
			if (data == 'false') {
				alert("You're Trying To Login Using Unregistered Email ID!");
				$('#emailspan').text("Please Enter Registered Email ID!");
				<%emailStatus = false;%>			
				}
			else
				{
				<%emailStatus = true;%>
				}
			});
			}
		});

	});
</script>

</head>
<body itemscope>
	
    <main>
        <%@include file = "Topbar.jsp" %>
        
        <div style = "height: 500px; width: 600px; margin-left: 450px;">
		<div class="sign-popup-inner brd-rd5">
			<!--  <a class="log-close-btn" href="#" title="" itemprop="url"><i
				class="fa fa-close"></i></a> -->
			<div class="sign-popup-title text-center">
				<h4 itemprop="headline">Recover Password</h4>
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
			<form class="sign-form" name = "generateOTP" method = "POST" action = "ForgetPassword">
				<div class="row">
					<div class="col-md-12 col-sm-12 col-lg-12">
						<input class="brd-rd3" type="email" onblur = "getUserEmail()" placeholder="Email" name = "email" id = "email" required>
						<span class ="errspan" id = "emailspan"></span>
					</div>
					
					<div class="col-md-12 col-sm-12 col-lg-12">
						<button class="red-bg brd-rd3" type="submit" onclick = "return checkEmail()">SEND OTP</button>
					</div>
					<div class="col-md-12 col-sm-12 col-lg-12">
						<a class="sign-btn" href="UpRegister.jsp" title="" itemprop="url">Not a
							member? Sign up</a> 
									</div>
				</div>
			</form>
		</div>
	
        </div>
        <%@include file = "Footer.jsp" %>
	</main>
	<%@include file = "commonjs.jsp" %>


<script>
	var flag = true;
	var emailpattern = /^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$/;
	function getUserEmail()
	{
		var email = document.generateOTP.email.value;
		email = email.trim();
		email = email.toLowerCase();
		if (email == "") {
			document.getElementById("emailspan").innerHTML = "Please enter your email address!";
			flag = false;
		} 
		else {
			flag = true;
			document.getElementById("emailspan").innerHTML="";
			if (!(emailpattern.test(email))) {
				document.getElementById("emailspan").innerHTML = "Invalid email address!";
				flag =  false;
			}
		}
	}
	function checkEmail()
	{
		<%if(!emailStatus){%>
		flag = false;
		document.getElementById("emailspan").innerHTML = "Please Enter Registered Email ID!";
		<%}else{%>
		document.getElementById("emailspan").innerHTML = "";
		<%}%>
		return flag;
	}
</script>
</body>
</html>