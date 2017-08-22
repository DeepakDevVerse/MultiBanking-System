<%@ page import ="java.sql.*,com.jdbc.*" %>

<html lang="en">
<head>
<title>Add Bank Details</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Classy Job Application Form Widget Responsive, Login form web template,Flat Pricing tables,Flat Drop downs  Sign up Web Templates, Flat Web Templates, Login signup Responsive web template, Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- font files -->
<link href='//fonts.googleapis.com/css?family=Lato:400,100,100italic,300,300italic,400italic,700,700italic,900,900italic' rel='stylesheet' type='text/css'>
<!-- /font files -->
<!-- css files -->
<link href="css/adduserbankinfostyle.css" rel='stylesheet' type='text/css' media="all" />
<link rel="stylesheet" href="css/adduserbankinfo-j-forms.css">

<!-- /css files -->
<script type="text/javascript" src="js/jquery-2.1.4.min.js"></script>

</head>
<body>
<h1 class="header-w3ls">Submit Bank Details</h1>
<div class="content-w3ls">
	<div class="form-w3ls">
		<form action="adduserbankinfoprocess.jsp" method="post">
			<div class="content-wthree1">
				<div class="grid-agileits1">
				
				
					<div class="form-control">
					<div class="main-row">
						<label class="header">Bank <span>*</span></label>
							<select name="bankdes">
							<option value="">- Please select a bank -</option>
							<%
								Connection con = DbCon.dbCon();
								PreparedStatement st = con.prepareStatement("select * from bankinfo");
								ResultSet rs = st.executeQuery();
								while(rs.next()){
							%>
							<option><%=rs.getString(2)%></option>
							<%}%>
							</select>
							<i></i>
					</div>
					</div>
					
					<div class="form-control"> 
						<label class="header">Customer ID <span>*</span></label>
						<input type="text" name="cid" placeholder="Name" title="Please enter your Customer ID" required>
					</div>
		
					<div class="form-control">	
						<label class="header">Account Number <span>*</span></label>
						<input type="text" name="anum" placeholder="Account Number" title="Please enter a Valid Account Number" required>
					</div>
					<div class="form-control">	
						<label class="header">Account Holder Name <span>*</span></label>
						<input type="text" name="ahname" placeholder="Account Holder" title="Please enter Account Holder Name" required>
					</div>
					<div class="form-control"> 
						<label >Phone <span>*</span></label>
						<input type="text" name="mnum" placeholder="Phone" title="Please enter your Phone No" required>
					</div>
					<div class="form-control"> 
						<label class="header">Transaction Password <span>*</span></label>
						<input type="password" name="tpass" placeholder="Transaction Password" title="Please enter your Transaction Password" required>
					</div>
				</div>			
			</div>
			
			<div class="content-wthree2">
				<div class="grid-w3layouts1">
					<div class="w3-agile1">
						<label class="rating">What is your Account Type? <span>*</span></label>
						<ul>
							<li>
								<input type="radio" id="a-option" name="atype" value="Current Account">
								<label for="a-option">Current Account </label>
								<div class="check"></div>
							</li>
							<li>
								<input type="radio" id="b-option" name="atype" value="Savings Account">
								<label for="b-option">Savings Account</label>
								<div class="check"><div class="inside"></div></div>
							</li>
							<li>
								<input type="radio" id="c-option" name="atype" value="Others">
								<label for="c-option">Others</label>
								<div class="check"><div class="inside"></div></div>
							</li>
							<div class="clear"></div>
						</ul>
					</div>
					
				</div>
				
				<div class="clear"></div>
			</div>
		
				<div class="wthreesubmitaits">
					<input type="submit" name="submit" value="Submit">
				</div>
				</form>	
	</div>
	
</div>

<p class="copyright">© 2017 Multibank All Rights Reserved | Design by <a href="https://w3layouts.com/" target="_blank">W3layouts</a></p>


</body>
</html>