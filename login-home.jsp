<%@ include file="includes/header.jsp" %>
<%@ page import= "java.util.*" %>
<div class="wrapper row3">
  <div class="rounded">
    <main class="container clear"> 
      <!-- main body --> 
	    <div style="width: 70%; float:left; margin-right:30px" id="login-home">
		  <h2>Welcome to Gym Membership Managemennt System</h2>
		  
		 <!-- Dashboard For Super Admin Section -->
		 <% if(session.getAttribute("login_level") != null && session.getAttribute("login_level").equals("1")) { %>		
		  <ul>
				<li><a href="membership.jsp?membership_id=0">Add Membership</a></li>
]				<li><a href="payment.jsp?payment_id=0">Add Payment</a></li>
				<li><a href="report-membership.jsp">Membership Report</a></li>
]				<li><a href="report-customer.jsp">Customer Report</a></li>
				<li><a href="report-payment.jsp">Payment Report</a></li>
				<li><a href="change-password.jsp">Change Password</a></li>
				<li><a href="login.jsp?act=logout">Logout</a></li>
		  </ul>
		  <% } %>
		  <% if(session.getAttribute("login_level") != null && session.getAttribute("login_level").equals("4")) { %>		
			<ul>
				<li class="active"><a href="index.jsp">Home</a></li>     
				<li><a href="about.jsp">About Us</a></li>
				<li><a href="membership-list.jsp?type_id=0">All Membership</a></li>  
				<li><a href="report-mpayment.jsp">My Membership</a></li>
				<li><a href="model/login.jsp?act=logout">Logout</a></li>
			</ul>
			<% } %>
		</div>
		<div style="float: left">
			<div><img src="images/save_1.jpg" style="width: 250px"></div><br>
			<div><img src="images/save_2.jpg" style="width: 250px"></div>
		</div>
      <div class="clear"></div>
    </main>
  </div>
</div>
<%@ include file="includes/footer.jsp" %>
