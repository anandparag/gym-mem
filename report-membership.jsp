<%@ include file="includes/header.jsp" %>
<%@ page import= "java.util.*" %>
<%@ page import= "Model.*" %>

<%
	Membership membershipDetails = new Membership();
	ArrayList allMembership = membershipDetails.getAllMembership(0);
%>
<div class="wrapper row3">
  <div class="rounded">
    <main class="container clear"> 
      <!-- main body --> 
      <div class="scrollable">
        <h2>Membership Report</h2>
		<% if(request.getParameter("msg") != null) { %>
		<div class="msg"><%=request.getParameter("msg") %></div>
		<% } %>
        <table>
          <thead>
            <tr>
              <th>Membership Code</th>
              <th>Image</th>
              <th>Name</th>
              <th>Type</th>
              <th>Category</th>
              <th>Price</th>
              <th>Action</th>
            </tr>
          </thead>
          <tbody>
			<% for(int i=0;i<allMembership.size();i++) 
			{ 
				HashMap MembershipDetails = new HashMap();
				MembershipDetails = (HashMap)allMembership.get(i);
			%>
				<tr>
				  <td style="text-align:center;"><% out.print(MembershipDetails.get("membership_id")); %></td>
				  <td>
					<a href="membership-details.jsp?membership_id=<% out.print(MembershipDetails.get("membership_id")); %>">
						<img src="membershipImages/<% out.print(MembershipDetails.get("membership_image")); %>" style="height:80px; width:80px;">
					</a>
				  </td>
				  <td><% out.print(MembershipDetails.get("membership_name")); %></td>
				  <td><% out.print(MembershipDetails.get("membership_type")); %></td>
				  <td><% out.print(MembershipDetails.get("membership_category")); %></td>
				  <td><% out.print(MembershipDetails.get("membership_price")); %>.00/-</td>
				  <td> <a href="membership.jsp?membership_id=<% out.print(MembershipDetails.get("membership_id")); %>">Edit</a> </td>
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
