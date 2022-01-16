<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>

<style type= "text/css">
.errmessage
{
	color: red;
	font-style: italic;
	font-size: 11px;
}
</style>
<body>

</body>
<script>
	var flag = true;
	
	var namepattern = /^([a-zA-Z ]+)$/;
	var phonepattern = /^([6-9]\d{9})$/;
	var addressPattern = /^([a-zA-Z 0-9-#,*/=]+{10, })$/;
	var pincodePattern = /^([\d]{6})$/;
	
	var nflag = false;
	var mflag = false;
	var aflag = false;
	var pflag = false;	
	function checkFullName()
	{
		var name = document.editProfile.fullName.value;	
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
	
	function checkMobileNumber()
	{
		var phoneno = document.editProfile.mobileNumber.value;
		phoneno = phoneno.trim();
		if(phoneno.length == 0)
		{
			flag = false;
			mflag = true;
			document.getElementById("mobilespan").innerHTML = "Please enter Mobile number!";				
		}
		if (phoneno != "") {
			document.getElementById("mobilespan").innerHTML="";
			if (!(phonepattern.test(phoneno))) {
				document.getElementById("mobilespan").innerHTML = "Invalid Mobile number!";
				flag =  false;
				mflag = true;
			}
			else{
				flag = true;
				mflag = false;
				document.getElementById("mobilespan").innerHTML="";
			}
		}
	}
	
	function checkAddress()
	{
		var address = document.editProfile.address.value;
		
		address = address.trim();
		
		if(address.length == 0)
		{
			flag = false;
			aflag = true;
			document.getElementById("addspan").innerHTML = "Please Enter Address!";
		}
		else if(address.length > 10)
		{
			document.getElementById("addspan").innerHTML = "";
			flag = true;
			aflag = false;
		}
		else
		{
			document.getElementById("addspan").innerHTML ="Please Enter Valid Address!";
			flag = false;
			aflag = true;
		}
	}
	
	function checkPincode()
	{
		var pin = document.editProfile.pincode.value;
		
		pin = pin.trim();
		
		if(pin == "")
		{
			document.getElementById("pincodespan").innerHTML = "Enter Pincode!";
			flag = false;
			pflag = true;
		}
		
		if(!(pincodePattern.test(pin)))
		{
			document.getElementById("pincodespan").innerHTML = "Enter Valid Pincode!";
			flag = false;
			pflag = true;	
		}
		else
		{
			document.getElementById('pincodespan').innerHTML = "";
			flag = true;
			pflag = false;
		}
		
	}
	
	function checkUserDetails()
	{
		flag = true;
		
		checkFullName();
		checkAddress();
		checkPincode();
		checkMobileNumber();
		
		if(nflag == true)
		{
			document.getElementById("fullName").focus();
		}
		
		else if(mflag == true)
		{
			document.getElementById("mobileNumber").focus();
		}
		else if(aflag == true)
		{
			document.getElementById("address").focus();
		}
		else if(pflag == true)
		{
			document.getElementById("pincode").focus();
		}
		
		return flag;
	}
	
</script>
</html>