<%@ page import ="java.sql.*,com.jdbc.*" %>

<%@ page import ="java.util.Date" %>

<%
		
			try {
				
				ResultSet rs,rs1 = null;
				Connection con=DbCon.dbCon();
				
				String unqid = session.getAttribute("unqid").toString();
				System.out.println(unqid);
				
				String latestBankID = session.getAttribute("latestBankID").toString();
				String cid = session.getAttribute("cid").toString();
				String accno = session.getAttribute("accno").toString();
				String ahname = session.getAttribute("ahname").toString();
				
				PreparedStatement st1 = con.prepareStatement("SELECT BANKNAME,BANKDESCRIPTION FROM BANKINFO WHERE BANKID=?");	//Verify Tpass here
				st1.setString(1, latestBankID);
				rs=st1.executeQuery();
				rs.next();
				
				String BankName = rs.getString(1);
				String BankDes = rs.getString(2);
				
				PreparedStatement st2 = con.prepareStatement("SELECT BAL FROM " +BankName +"INFO WHERE CID=? AND ACCNO=?");	//Verify Tpass here
				st2.setString(1, cid);
				st2.setString(2, accno);
				rs1=st2.executeQuery();
				
				rs1.next();
%>

<html>
<head>
<title>User Balance</title>
<!-- for-mobile-apps -->
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" /> 
<meta name="keywords" content="Slide Pricing Tables Responsive, Login form web template, Sign up Web Templates, Flat Web Templates, Login signup Responsive web template, Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<!-- //for-mobile-apps -->
<link href="//fonts.googleapis.com/css?family=Roboto+Slab:100,400,700" rel="stylesheet">
<link href='//fonts.googleapis.com/css?family=Roboto:400,100,100italic,300,300italic,400italic,500,500italic,700,700italic,900,900italic' rel='stylesheet' type='text/css'>
<link href="css/availablebalance-style.css" rel="stylesheet" type="text/css" media="all" />
<script src="js/jquery-2.1.4.min.js"></script>
</head>
<body>
<div class="content" id="Main-Content">
	<h1>Balance</h1>
	<div class="agileits-top-slider">
		<div class="slider">
			<div class="callbacks_container">
				<ul class="rslides callbacks callbacks1" id="slider4">
					<li>
						<div class="pricing">
							<div class="pricing-top green-top">
								<h3>Your Balance</h3>
								<p>&#8377;<span><%=rs1.getString(1) %></span></p>
							</div>
							<div class="pricing-bottom">
								<div class="pricing-bottom-top">
									<p><%	Date date = new Date();
											out.println(date.toString());							%></p>
								</div>
								<div class="pricing-bottom-bottom">
									<p><span>Customer ID	</span><%=cid %></p>
									<p><span>Name	</span><%=ahname %></p>
									<p><span>Account Number	  </span><%=accno %></p>  
									<p><span>Bank	</span><%=BankDes %></p>
								</div>
								<div class="buy-button">
									<a href="usertransactionhome.jsp">Back</a>
								</div>																
							</div>
						</div>
					</li>					
				</ul>
			</div>
			<div class="clear"> </div>
			<script src="js/responsiveslides.min.js"></script>
			<script>
				// You can also use "$(window).load(function() {"
				$(function () {
					// Slideshow 4
					$("#slider4").responsiveSlides({
					auto: true,
					pager:true,
					nav:true,
					speed: 500,
					namespace: "callbacks",
					before: function () {
							$('.events').append("<li>before event fired.</li>");
						},
						after: function () {
							$('.events').append("<li>after event fired.</li>");
						}
					});
					
				});
			 </script>
			<!--banner Slider starts Here-->
		</div>
	</div>

	<div class="copyright">
		<p class="footer">© 2017 Slide Pricing Tables . All Rights Reserved | Design by <a href="http://w3layouts.com/"> W3layouts</a></p>
	</div>
	<script src="js/jquery.magnific-popup.js" type="text/javascript"></script>
	<script>
		$(document).ready(function() {
			$('.popup-with-zoom-anim').magnificPopup({
				type: 'inline',
				fixedContentPos: false,
				fixedBgPos: true,
				overflowY: 'auto',
				closeBtnInside: true,
				preloader: false,
				midClick: true,
				removalDelay: 300,
				mainClass: 'my-mfp-zoom-in'
		});
																						
	});
	</script>
</div>


<%
				
				
			} catch (Exception e) {
				e.printStackTrace();
			}
		
%>

</body>
</html>
