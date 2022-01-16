<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%@ page import = "com.e_catering_system.bean.User" %>
<!DOCTYPE html>

<style type="text/css">
.errspan {
	color: red;
	font-style: italic;
	font-size: 11px;
}
</style>
<%@include file = "commoncss.jsp" %>

<script>
	var getemail;
	var getpassword;
	var flag = true;
	
	function getUserEmail()
	{
		getemail = document.loginForm.email.value;
		
		if(getemail == null || getemail == "")
		{
			document.getElementById("emailspan").innerHTML = "Please Enter Email ID!";
		}
		else
		{
			document.getElementById("emailspan").innerHTML = "";
		}
			
	}
	function getUserPassword()
	{
		getpassword = document.loginForm.password.value;
		if(getpassword =="" || getpassword == null){
			document.getElementById("passpan").innerHTML = "Please Enter Password!";
		}
		else
		{
			document.getElementById("passpan").innerHTML = "";
		}
	}
	function checkDetails()
	{
		var message = "";
		if((getemail == null || getemail == "") && (getpassword == "" || getpassword == null))
		{
			document.getElementById("emailspan").innerHTML = "Please Enter Email ID!";
			document.getElementById("email").focus();
			alert("Enter Email ID and Password!");
			flag = false;
		}
		else if(getemail == null || getemail == "")
		{
			document.getElementById("emailspan").innerHTML = "Please Enter Email ID!";
			document.getElementById("email").focus();
			flag = false;
		}
		else if(getpassword =="" || getpassword == null)
		{
			document.getElementById("passpan").innerHTML = "Please Enter Password!";
			document.getElementById("password").focus();
			flag = false;
		}
	
		return flag;
	}
	
	
</script>