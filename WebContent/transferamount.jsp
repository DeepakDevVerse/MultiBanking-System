<%@ page import ="java.sql.*,com.jdbc.*" %>

<html>
<head>
<title>Transfer Amount</title>
<link href="css/bankadminlogin-style.css" rel="stylesheet" type="text/css" media="all"/>

<link href="css/adduserbankinfostyle.css" rel='stylesheet' type='text/css' media="all" />
<!-- <link rel="stylesheet" href="css/adduserbankinfo-j-forms.css"> -->

<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Transparent Login Form Responsive Widget,Login form widgets, Sign up Web forms , Login signup Responsive web form,Flat Pricing table,Flat Drop downs,Registration Forms,News letter Forms,Elements" />
<!--web-fonts-->
<link href='//fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic' rel='stylesheet' type='text/css' />
<!--web-fonts-->
</head>

<body>
<!--header-->
	<div class="header-w3l">
		<h1> Enter Beneficiary Details </h1>
	</div>
<!--//header-->

<!--main-->
<div class="main-content-agile">
	<div class="sub-main-w3">	
		<form action="transferamountsummary.jsp" method="post">
			
			<!-- <label class="header">Bank <span>*</span></label> -->
			<h3 align="center" style="color:white;font-size:22px">BANK</h3>
			<select name="beneficiarybankdes">
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
  			<br>
			
			<input placeholder="Name" name="beneficiaryname" class="user" type="text" required><br>
			<input  placeholder="Account Number" name="beneficiaryaccountnumber" class="user" type="text" required><br>
			<input  placeholder="Amount To Be Wired" name="amount" class="user" type="text" required><br>
			
			
			<input type="submit" value="">
		</form>
	</div>
</div>
<!--//main-->

<!--footer-->
<div class="footer">
	<p>&copy; 2017 Bank Admin Login. All rights reserved | Design by <a href="http://w3layouts.com">W3layouts</a></p>
</div>
<!--//footer-->

</body>
</html>