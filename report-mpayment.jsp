<%@ include file="includes/header.jsp" %>
<%@ page import= "java.util.*" %>
<%@ page import= "Model.*" %>

<%
	Mpayment mpaymentDetails = new Mpayment();
	String customer_id = "";
	if(session.getAttribute("login_level") != null && session.getAttribute("login_level").equals("4")) { 
		customer_id = session.getAttribute("login_id").toString();
	} 
	ArrayList allMpayment = mpaymentDetails.getAllMpayment(customer_id);
%>
<div class="wrapper row3">
  <div class="rounded">
    <main class="container clear"> 
      <!-- main body --> 
      <div class="scrollable">
        <h2>All Membership Payment Report</h2>
		<% if(request.getParameter("msg") != null) { %>
		<div class="msg"><%=request.getParameter("msg") %></div>
		<% } %>
        <table>
          <thead>
            <tr>
              <th>Sr. No.</th>
              <th>Membership Name</th>
			  <th>Customer Name</th>
              <th>Payment Date</th>
              <th>Amount</th>
              <th>Action</th>
            </tr>
          </thead>
          <tbody>
			<% for(int i=0;i<allMpayment.size();i++) 
			{ 
				HashMap MpaymentDetails = new HashMap();
				MpaymentDetails = (HashMap)allMpayment.get(i);
			%>
				<tr>
				  <td style="text-align:center;"><% out.print(i+1); %></td>
				  <td><% out.print(MpaymentDetails.get("membership_name")); %></td>
				  <td><% out.print(MpaymentDetails.get("customer_name")); %></td>
				  <td><% out.print(MpaymentDetails.get("mpayment_date")); %></td>
				  <td><% out.print(MpaymentDetails.get("mpayment_amount")); %></td>
				  <td>
					<a href="payment-receipt.jsp?mpayment_id=<% out.print(MpaymentDetails.get("mpayment_id")); %>">View Details</a></a>
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
