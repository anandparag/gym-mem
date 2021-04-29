<%@ include file="includes/header.jsp" %>
<%@ page import= "java.util.*" %>
<%@ page import= "Model.*" %>

<%
	Payment paymentDetails = new Payment();
	ArrayList allPayment = paymentDetails.getAllPayment();
%>
<div class="wrapper row3">
  <div class="rounded">
    <main class="container clear"> 
      <!-- main body --> 
      <div class="scrollable">
        <h2>All Payment Report</h2>
		<% if(request.getParameter("msg") != null) { %>
		<div class="msg"><%=request.getParameter("msg") %></div>
		<% } %>
        <table>
          <thead>
            <tr>
              <th>Payment Code</th>
              <th>Name</th>
              <th>Date</th>
              <th>Amount</th>
              <th>Month</th>
              <th>Action</th>
            </tr>
          </thead>
          <tbody>
			<% for(int i=0;i<allPayment.size();i++) 
			{ 
				HashMap PaymentDetails = new HashMap();
				PaymentDetails = (HashMap)allPayment.get(i);
			%>
				<tr>
				  <td style="text-align:center;"><% out.print(PaymentDetails.get("payment_id")); %></td>
				  <td><% out.print(PaymentDetails.get("customer_name")); %></td>
				  <td><% out.print(PaymentDetails.get("payment_date")); %></td>
				  <td><% out.print(PaymentDetails.get("payment_amount")); %></td>
				  <td><% out.print(PaymentDetails.get("month_name")); %></td>
				  <td>
				  <% if(session.getAttribute("login_level").equals("2")) { %>	
					<a href="payment.jsp?payment_id=<% out.print(PaymentDetails.get("payment_id")); %>">View Details</a></a>
				  <% } else { %>
					<a href="payment.jsp?payment_id=<% out.print(PaymentDetails.get("payment_id")); %>">Edit Payment</a></a>
				  <% } %>
				  </td>
				</tr>
			<%
			}
			%>
			</tbody>
        </table>
        </div>
    </main>
  </div>
</div>
<%@ include file="includes/footer.jsp" %>
