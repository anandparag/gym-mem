<%@ include file="includes/header.jsp" %>
<%@ page import= "java.util.*" %>
<%@ page import= "Model.*" %>
<%
	Payment paymentDetails = new Payment();
	int payment_id = Integer.parseInt(request.getParameter ("payment_id"));
	HashMap Values =  paymentDetails.getPaymentDetails(payment_id);	
%>
<div class="wrapper row3">
  <div class="rounded">
    <% if(request.getParameter("msg") != null) { %>
	<div class="msg"><%=request.getParameter("msg") %></div>
	<% } %>
    <main class="container clear"> 
      <!-- main body --> 
      <div id="comments" style="width: 70%; float:left; margin-right:30px">
      <h2>Payment Form</h2>
    <form method="post" action="model/payment.jsp">
          <div class="half_width">
            <label for="url">Select Customer</label>
            <select style="height: 40px; width:300px" name="payment_customer_id" required>
              <% out.print(paymentDetails.getCustomerOption((Integer) Values.get("payment_customer_id"))); %>
            </select>
          </div>
          <div class="half_width">
            <label for="url">Select Month</label>
            <select style="height: 40px; width:300px" name="payment_for_month" required>
              <% out.print(paymentDetails.getMonthOption((Integer) Values.get("payment_for_month"))); %>
            </select>
          </div>
          <div class="half_width">
            <label for="email">Date<span>*</span></label>
            <input type="text" name="payment_date" id="payment_date" value="<% out.print(Values.get("payment_date")); %>" size="22" style="width:300px;" required>
          </div>
           <div class="half_width">
            <label for="email">Amount<span>*</span></label>
            <input type="text" name="payment_amount" id="payment_amount" value="<% out.print(Values.get("payment_amount")); %>" size="22" style="width:300px;" required>
          </div>
		      <div class="half_width">
            <label for="email">Description<span>*</span></label>
            <textarea style="width:300px; height:100px;" name="payment_description" required><% out.print(Values.get("payment_description")); %></textarea>
          </div>
          
          <div class="block clear"></div>
          <% if(session.getAttribute("login_level") == null || session.getAttribute("login_level").equals("1") || session.getAttribute("login_level").equals("4")) { %>		
          <div>
            <input name="submit" type="submit" value="Save Details">
            &nbsp;
            <input name="reset" type="reset" value="Reset Form">
          </div>
          <% } %>
		  <input type="hidden" name="image_name" value="<% out.print(Values.get("payment_image")); %>" />
		  <input type="hidden" name="act" value="Save" />
		  <input type="hidden" id="payment_id" name="payment_id" value="<% out.print(Values.get("payment_id")); %>"/>
        </form>
        </div>
      <div class="clear"></div>
    </main>
  </div>
</div>
<%@ include file="includes/footer.jsp" %>
