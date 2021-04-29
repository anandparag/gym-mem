<%@ include file="includes/header.jsp" %>
<%@ page import= "java.util.*" %>
<%@ page import= "Model.*" %>
<%
Membership membershipDetails = new Membership();
int typeID = Integer.parseInt(request.getParameter("type_id"));
ArrayList allMembership = membershipDetails.getAllMembership(typeID);
%>
<script>
  jQuery(function() {
    jQuery( "#booking_date" ).datepicker({
      changeMonth: true,
      changeYear: true,
       yearRange: "-0:+1",
       dateFormat: 'yy-mm-dd'
    });
  });
</script>
<style>
#comments li {
    background-color: #ffffff;
    color: #7e0116;
    font-weight: bold;
}
tr:nth-child(odd), #comments li:nth-child(odd) {
    color: inherit;
    background-color: #FFFFFF;
	color: #7e0116;
}
</style>
<div class="wrapper row3"> 	
  <div class="rounded">
    <main class="container clear"> 
      <!-- main body --> 
      <div id="comments" style="width: 70%; float:left; margin-right:30px">
      <h2>All Memeber Lists</h2>
		<div class="dresstsecs" style="clear:both; width:98%">
			<ul>
        <% 
        for(int i=0;i<allMembership.size();i++) 
        { 
            HashMap MembershipDetails = new HashMap();
            MembershipDetails = (HashMap)allMembership.get(i);
        %>

            <li>
                <div class="thumb">
                    <a href="#"><img src="membershipImages/<% out.print(MembershipDetails.get("membership_image")); %>" alt="" style="width:92px; height:78px"></a>
                </div>
                <div class="conts">
                    <a href="#" class="black bold"><% out.print(MembershipDetails.get("membership_name")); %></a>
                    <p>Category : <% out.print(MembershipDetails.get("membership_category")); %></p>
                    <p class="bold">Type : <% out.print(MembershipDetails.get("membership_type")); %></p>
                    <p class="bold">Cost : <% out.print(MembershipDetails.get("membership_price")); %></p>
                </div>
                <div style="float:right; padding:20px 57px 20px 100px; border-left:1px solid #cccccc">
                  <% if(session.getAttribute("login_level") == null) { %>
                    <a href="customer-login.jsp?msg=Login to book membership !!!" class="simplebtn left">See Details</a>
                  <% } else { %>
                    <a href="membership-details.jsp?membership_id=<% out.print(MembershipDetails.get("membership_id")); %>" class="simplebtn left">See Details</a>
                  <% } %>
                </div>
            </li>
        <% } %>
			</ul>
		</div>
        </div>
        <div style="float: left">
        	<div><img src="images/save_1.jpg" style="width: 250px"></div><br>
        </div>
      <div class="clear"></div>
    </main>
  </div>
</div>
<%@ include file="includes/footer.jsp" %>