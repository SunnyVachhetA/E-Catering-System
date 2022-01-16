<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<script src = "assets/js/jquery.min.js"></script>
<script>
	$(document).ready(function()
	{
		$("input[type=email]").blur(function() {
			var str = $("#mail").val();
			
			if(str == "" || str == null)
			{
				$('#emailspan').text("Please enter Email ID!");
			}
			else{
			$.get("Registration", {
				email : str
			}).done(function(data) {

			if (data == 'true') {
				alert("This Email ID already exists!");
				$('#emailspan').text("This Email ID already exists!");
					
				}
			});
			}
		});
	});
</script>
</head>
<style type="text/css">
.errmessage {
	color: red;
	font-style: italic;
	font-size: 11px;
}
</style>
<script>
		var namepattern = /^([a-zA-Z ]+)$/;
		var emailpattern = /^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$/;
		var phonepattern = /^([6-9]\d{9})$/;
		var flag = true;
		var passpattern =/^(?=.*[0-9])(?=.*[!@#$%^&*])[a-zA-Z0-9!@#$%^&*]{7,15}$/ ;
		var pass;
		
		
		var nflag = false;
		var eflag = false;
		var conflag = false;
		var pflag = false;
		var cpflag = false;
		
		function checkName()
		{
			var name = document.myForm.name.value;	
			name = name.trim();
			if(name == "" || !(namepattern.test(name)) || name.length < 3 || name.length > 25)
			{
				flag = false;
				nflag = true;
				document.getElementById("namespan").innerHTML  = "Please enter name properly!"; 
			}
			else
			{
				flag = true;
				nflag = false;
				document.getElementById("namespan").innerHTML = "";	
			}
		}

		function checkEmail(){ 
			var email = document.myForm.email.value;
			email = email.trim();
			email = email.toLowerCase();
			if (email == "") {
				document.getElementById("emailspan").innerHTML = "Please enter your email address!";
				flag = false;
				eflag = true;
			} 
			else {
				flag = true;
				eflag = false;
				document.getElementById("emailspan").innerHTML="";
				if (!(emailpattern.test(email))) {
					document.getElementById("emailspan").innerHTML = "Invalid email address!";
					flag =  false;
					eflag = true;
				}
			}
		}
				
		function checkContact(){
			var phoneno = document.myForm.contact.value;
			phoneno = phoneno.trim();
			if(phoneno.length == 0)
			{
				flag = false;
				conflag = true;
				document.getElementById("contactspan").innerHTML = "Please enter phone number!";				
			}
			if (phoneno != "") {
				document.getElementById("contactspan").innerHTML="";
				if (!(phonepattern.test(phoneno))) {
					document.getElementById("contactspan").innerHTML = "Invalid phone number!";
					flag =  false;
					conflag = true;
				}
				else{
					flag = true;
					conflag = false;
					document.getElementById("contactspan").innerHTML="";
				}
			}
		}
		
		function checkPassword()
		{
			pass = document.myForm.password.value;
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
		
		function checkCpassword()
		{
			cpass = document.myForm.copassword.value;
			
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
		
		function checkValidation()
		{
			flag = true;
			
			checkName();
			checkEmail();
			checkPassword();
			checkCpassword();
			checkContact();
			
			if(nflag == true)
			{
				document.getElementById("name").focus();
			}
			else if(pflag == true)
			{
				document.getElementById("password").focus();
			}
			else if(eflag == true)
			{
				document.getElementById("email").focus();
			}
			else if(cpflag == true)
			{
				document.getElementById("cpassword").focus();
			}
			else if(conflag == true)
			{
				document.getElementById("contact").focus();
			}
			return flag;
		}
</script>
<body>
	<%@include file="commonjs.jsp"%>

</body>
</html>