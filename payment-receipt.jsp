<%@ include file="includes/header.jsp" %>
<%@ page import= "java.util.*" %>
<%@ page import= "Model.*" %>
<%
	Mpayment mpaymentDetails = new Mpayment();
	HashMap Values = mpaymentDetails.getMpaymentDetails(Integer.parseInt(request.getParameter("mpayment_id").toString()));
	int total = 0;
%>
<div class="wrapper row3">
  <div class="rounded">
    <main class="container clear"> 
      <!-- main body --> 
      <div id="comments" style="width: 70%; float:left; margin-right:30px">
      <h2>Membership Payment Receipt</h2>
        <div style="font-size:20px; color:#000000; line-height:25px;">
			Mpayment ID : <% out.print(request.getParameter("mpayment_id")); %> <br>
			Mpayment details are as below :
        </div> 
        </div>
		 <table>
          <thead>
            <tr>
              <td>Membership Plan</td>
			  <td><% out.print(Values.get("membership_name")); %></td>
            </tr>
			<tr>
				<td>Customer Name</td>
				<td><% out.print(Values.get("customer_name")); %></td>
			  </tr>
			  <tr>
				<td>Customer Mobile</td>
				<td><% out.print(Values.get("customer_mobile")); %></td>
			  </tr>
			  <tr>
				<td>Customer Email</td>
				<td><% out.print(Values.get("customer_email")); %></td>
			  </tr>
			  <tr>
				<td>Payment Date</td>
				<td><% out.print(Values.get("mpayment_date")); %></td>
			  </tr>
			  <tr>
				<td>Payment Amount</td>
				<td><% out.print(Values.get("mpayment_amount")); %></td>
			  </tr>
			  </tr>
          </thead>
        
        </table>
      <div class="clear"></div>
    </main>
  </div>
</div>
<%@ include file="includes/footer.jsp" %>
