<%@ include file="includes/header.jsp" %>
<%@ page import= "java.util.*" %>
<%@ page import= "Model.*" %>
<%
	Membership membershipDetails = new Membership();
	int membership_id = Integer.parseInt(request.getParameter ("membership_id")), membershipCount = 10;
	HashMap Values =  membershipDetails.getMembershipDetails(membership_id);	
	int stock = Integer.parseInt(Values.get("membership_stock").toString());
	if(stock < 30)
		membershipCount = stock;
	ArrayList allMembership = membershipDetails.getRecommendedMembership(0);
%>
<div class="wrapper row3">
  <div class="rounded">
    <main class="container clear"> 
      <!-- main body --> 
        <div id="comments" style="width: 70%; float:left; margin-right:30px">
        <h2>Details of <% out.print(Values.get("membership_name")); %></h2>
        <form action="model/mpayment.jsp" method="post">
        <div>
			<div style="float:left"><img src="membershipImages/<% out.print(Values.get("membership_image")); %>" style="height:320px; width:300px;"></div>
			<div style="float:right; width:345px;">
				<table>
					<tr>
						<td>Name</td>
						<td><% out.print(Values.get("membership_name")); %></td>
					</tr>
					<tr>
						<td>Category</td>
						<td><% out.print(Values.get("membership_category")); %></td>
					</tr>
					<tr>
						<td>Type</td>
						<td><% out.print(Values.get("membership_type")); %></td>
					</tr>
					<tr>
						<td>Price</td>
						<td>&#8377; <% out.print(Values.get("membership_price")); %>.00/- </td>
					</tr>
					<tr>
						<td colspan="2">
						Description :
						<% out.print(Values.get("membership_description")); %>
						</td>
					</tr>
				</table>
			</div>
			<% if(membershipCount != 0 ) { %>
			<div style="clear:both; float:right;">
				<input type="submit" value="Buy Now">
			</div>
			<% } %>
        </div>
        <input type="hidden" name="membership_id" value="<% out.print(Values.get("membership_id")); %>">
        <input type="hidden" name="membership_price" value="<% out.print(Values.get("membership_price")); %>">
        <input type="hidden" name="act" value="save">
		</form>
		</div>
        <div style="float: left">
			<h2 style="clear:both; margin-top:10px;">Advertisement </h2>
        	<div><img src="images/save_1.jpg" style="width: 250px"></div><br>
        </div>
      <div class="clear"></div>
    </main>
  </div>
</div>
<%@ include file="includes/footer.jsp" %>
