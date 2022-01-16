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
*,
*::before,
*::after {
  box-sizing: border-box;
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
:root {
  --select-border: #777;
  --select-focus: red;
  --select-arrow: var(--select-border);
}
.select {
  width: 31%;
  min-width: 15ch;
  max-width: 30ch;
  border: 1px solid var(--select-border);
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
	<jsp:include page="/GetCategoryList" />
	<%
	List<String> categoryList = new ArrayList<String>();
	categoryList = (List) request.getAttribute("listCategory");
	%>
	<main>
		<div style="height: 600px; width: 600px; margin-left: 450px;">
			<div class="sign-popup-inner brd-rd5">
				<!--  <a class="log-close-btn" href="#" title="" itemprop="url"><i
				class="fa fa-close"></i></a> -->
				<div class="sign-popup-title text-center">
					<h4 itemprop="headline">Product Details</h4>
				</div>
				<form class="sign-form" name="proForm" method="post"
					action="AddProduct" enctype="multipart/form-data">
					<div class="row">
						<div class="col-md-12 col-sm-12 col-lg-12">
							<label>Product Name <sup>*</sup></label> <input id="proName"
								name="proName" class="brd-rd3" type="text"
								placeholder="Enter Product Name" onblur="checkProductName()"
								required> <span id="namespan" class="errmessage"></span>
						</div>
						<div class="col-md-12 col-sm-12 col-lg-12">
							<label>Price <sup>*</sup></label> <input id="price" name="price"
								class="brd-rd3" type="text" placeholder="Enter Product Price"
								onblur="checkPrice()" required> <span id="pricespan"
								class="errmessage"></span>
						</div>
						<div class="col-md-12 col-sm-12 col-lg-12">
							<label>Quantity <sup>*</sup></label> <input id="qty" name="qty"
								class="brd-rd3" type="number" min = "1" max = "1000" placeholder="Enter Product Quantity"
								onblur="checkqty()" required> <span id="qtyspan"
								class="errmessage"></span>
						</div>
						<!--<div class="widget style2 quick_filters">
                                                    <label>Category</label>
                                                    <div class="widget-data">
                                                        <ul>
                                                            <li><span class="radio-box"><input type="radio" name="filter" id="filt1-1"><label for="filt1-1">Starter</label></span></li>
                                                            <li><span class="radio-box"><input type="radio" name="filter" id="filt1-2"><label for="filt1-2">Meal</label></span></li>
                                                            <li><span class="radio-box"><input type="radio" name="filter" id="filt1-3"><label for="filt1-3">Desert</label></span></li>

                                                        </ul>
                                                    </div>
                                                </div> -->
						
						<div class = "col-md-12 col-sm-12 col-lg-12">
							<label for = "category">Category <sup>*</sup></label><br>
								<div class="select">
									<select id = "category" name = "category" onchange = "checkCategory()" required>
										<option value = "none">Select Category</option>
										<% for(String x : categoryList){%>
											<option value = "<%=x.toLowerCase()%>"><%=x.toUpperCase()%></option>
										<%}%>
									</select>
								</div>
								<span class = "errmessage" id = "catspan"></span>
						</div>
						<div class = "col-md-12 col-sm-12 col-lg-12">
							<label for = "category">Food Type<sup>*</sup></label><br>
								<div class="select">
									<select id = "ftype" name = "ftype" onchange = "checkFtype()" required>
										<option value = "none">Select FoodType</option>
											<option value = "qualitative">QUALITATIVE</option>
											<option value = "quantitative">QUANTITATIVE</option>
									</select>
								</div>
								<span class = "errmessage" id = "typespan"></span>
						</div>
						<div class="col-md-12 col-sm-12 col-lg-12">
							<label>Image <sup> *</sup></label> <input id="productImage"
								name="productImage" class="brd-rd3" type="file"
								onchange="checkImage()" required> <span id="imagespan"
								class="errmessage"></span>
						</div>
						<div class="col-md-12 col-sm-12 col-lg-12">
							<label>Description</label><br>
							<!--  <input class="brd-rd3" type="textarea" rows = "5" cols = "50" placeholder="Enter Your Address">-->
							<textarea id="description" rows="4" cols="71" name="description"></textarea>
						</div>
						<div class="col-md-12 col-sm-12 col-lg-12">
							<button class="red-bg brd-rd3" type="submit"
								onclick="return checkProductDetails()">Upload Details</button>
						</div>
					</div>
				</form>
			</div>
		</div>
	</main>
	<%@include file="commonjs.jsp"%>
	<%@include file="Topbar.jsp"%>
	<script>
		var namepattern = /^([a-zA-Z ]+)$/;
		var flag = true;
		var nflag = false;
		var iflag = false;
		var pflag = false;
		var price;
		var qflag = false;
		var name;
		document.getElementById('proName').focus();
		function checkCategory()
		{
			var category = document.proForm.category.value;
			if(category == "none")
			{
				document.getElementById('catspan').innerHTML = "Please Select Category!";
			}
			else
			{
				document.getElementById('catspan').innerHTML = "";
			}
		}
		function checkFtype()
		{
			var category = document.proForm.ftype.value;
			if(category == "none")
			{
				document.getElementById('typespan').innerHTML = "Please Select Food Type!";
			}
			else
			{
				document.getElementById('typespan').innerHTML = "";
			}
		}
		function checkProductDetails()
		{
			flag = true;
			if(nflag == true)
			{
				document.getElementById('proName').focus();
			}
			else if(pflag == true)
			{
				document.getElementById('price').focus();
			}
			else if(qflag == true)
			{
				document.getElementById('qty').focus();
			}
			return flag;
		}
		function checkProductName()
		{
			name = document.proForm.proName.value;
			name = name.trim();
			if(name == "")
			{
				nflag = true;
				flag = false;
				document.getElementById("namespan").innerHTML = "Enter Product Name";
			}
			else
			{
				nflag = false;
				flag = true;
				if(!(namepattern.test(name)) || name.length < 3 || name.length > 25)
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
		}
		function checkPrice()
		{
			price = document.proForm.price.value;
			price = price.trim();
			if(price == "")
			{
				pflag = true;
				flag = false;
				document.getElementById("pricespan").innerHTML = "Enter Price Properly";
			}
			else
			{
				var p = parseInt(price);
				if(p <= 0)
				{
					pflag = true;
					flag = false;
					document.getElementById("pricespan").innerHTML = "Enter Price Properly";					
				}else{
					pflag = false;
					flag = true;
					document.getElementById("pricespan").innerHTML = "";
				}
			}
		}
		function checkqty()
		{
			var qty = document.proForm.qty.value;
			qty = price.trim();
			if(qty == "")
			{
				qflag = true;
				flag = false;
				document.getElementById("qtyspan").innerHTML = "Enter Quantity Properly";
			}
			else
			{
				var p = parseInt(qty);
				if(p <= 0 || p > 1000)
				{
					qflag = true;
					flag = false;
					document.getElementById("qtyspan").innerHTML = "Enter Quantity Properly";					
				}else{
					qflag = false;
					flag = true;
					document.getElementById("qtyspan").innerHTML = "";
				}
			}
		}
		function checkImage()
		{
				 var fileInput =  
	                document.getElementById('productImage'); 
	              
	            var filePath = fileInput.value; 
	          
	            // Allowing file type 
	            var allowedExtensions =  
	                    /(\.jpg|\.jpeg|\.png|\.gif)$/i; 
	            if (!allowedExtensions.exec(filePath)) { 
	                document.getElementById("imagespan").innerHTML = "Invalid file (jpg, jpeg, png, gif only allowed) type"; 
	                fileInput.value = ''; 
	                flag = false;
	            }  
	            else
	            {
	            	document.getElementById("imagespan").innerHTML = "";
	            	flag = true;
	            	 const fi = document.getElementById('productImage');
	                 // Check if any file is selected.
	                 if (fi.files.length > 0) {
	                     for (const i = 0; i <= fi.files.length - 1; i++) {
	          
	                         const fsize = fi.files.item(i).size;
	                         const file = Math.round((fsize / 1024));
	                         // The size of the file.
	                         if (file >= 2048) {
	                             flag = false;
	                        	 alert("File too Big, please select a file less than 2mb!");
	                         } else if (file < 100) {
	                        	 flag = false;
	                             
	                         } else {
	                             flag = true;
	                         }
	                     }
	                 }
	            }
		}
	</script>
</body>
</html>
<!--
<div class="col-md-12 col-sm-12 col-lg-12">
								<input id="productID"
									name="productID" class="brd-rd3" type="hidden"
									placeholder="Enter Product ID">
								<span id="prospan" class="errmessage"></span>
							</div>
							<div class="col-md-12 col-sm-12 col-lg-12">
								<label>Product Name <sup>*</sup></label> <input
									id="proName" name="proName" class="brd-rd3"
									type="email" placeholder="Enter Product Name" onblur = "checkProductName()">
									<span id="namespan" class="errmessage"></span>
							</div>
							<div class="col-md-12 col-sm-12 col-lg-12">
								<label>Price <sup>*</sup></label> <input id="price"
									name="price" class="brd-rd3" type="number"
									placeholder="Enter Product Price" onblur="checkPrice()"
									required> <span id="pricespan" class="errmessage"></span>
							</div>
							<!--    <div class="col-md-12 col-sm-12 col-lg-12">
                                                                                    <label>Country <sup>*</sup></label>
                                                                                    <div class="select-wrp">
                                                                                        <select>
                                                                                            <option>India</option>
                                                                                            <option>India</option>
                                                                                            <option>USA</option>
                                                                                        </select>
                                                                                    </div>
                                                                                </div> 
							<div class="col-md-12 col-sm-12 col-lg-12">
								<label>Image <sup> * </sup></label>
								<input id="productImage"
									name="productImage" class="brd-rd3" type="file" 
									onblur="checkImage()"
									required> <span id="imagespan" class="errmessage"></span>
							</div>
							<div class="col-md-12 col-sm-12 col-lg-12">
								<label>Description</label>
								<!--  <input class="brd-rd3" type="textarea" rows = "5" cols = "50" placeholder="Enter Your Address"> 
								<textarea id="description" rows="6" name="description"
								></textarea>
							</div>
							<button type="submit"
								onclick="return checkProductDetails()">Add Product</button>
						</div>
 
 -->