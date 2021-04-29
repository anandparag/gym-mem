<%@ include file="includes/header.jsp" %>
<%@ page import= "java.util.*" %>
<%@ page import= "Model.*" %>
<%
	Membership membershipDetails = new Membership();
	int membership_id = Integer.parseInt(request.getParameter ("membership_id"));
	HashMap Values =  membershipDetails.getMembershipDetails(membership_id);	
%>
<script>
function validImage() {
	var val = $("#membership_image").val();
	var id = $("#membership_id").val();
	if(id == '' || val != '')
	{
		if(val == '') {
			alert('Choose the Membership Image');
			return false;
		}
		if (!val.match(/(?:gif|jpg|png|bmp)$/)) {
			// inputted file path is not an image of one of the above types
			alert("inputted file path is not an image!");
			return false;
		}
	}
	return true;
}
</script>
<div class="wrapper row3">
  <div class="rounded">
    <main class="container clear"> 
      <!-- main body --> 
      <div id="comments" style="width: 70%; float:left; margin-right:30px">
      <h2>Membership Form</h2>
		<form method="post" action="UploadMembership" enctype="multipart/form-data" onsubmit="return validImage()">
          <div class="half_width">
            <label for="email">Membership Name<span>*</span></label>
            <input type="text" name="membership_name" id="membership_name" value="<% out.print(Values.get("membership_name")); %>" size="22" style="width:300px;" required>
          </div>
          <div class="half_width">
            <label for="email">Membership Type<span>*</span></label>
            <select style="height: 40px; width:300px" name = "membership_type_id" id = "membership_type_id" required>
            	<% out.print(membershipDetails.getTypeOption((Integer) Values.get("membership_type_id"))); %>
            </select>
          </div>
          <div class="half_width">
            <label for="email">Membership Category<span>*</span></label>
            <select style="height: 40px; width:300px" name = "membership_category_id" id = "membership_category_id" required>
            	<% out.print(membershipDetails.getCategoryOption((Integer) Values.get("membership_category_id"))); %>
            </select>
          </div>
          <div class="half_width">
            <label for="email">Membership Price<span>*</span></label>
            <input type="text" name="membership_price" id="membership_price" value="<% out.print(Values.get("membership_price")); %>" size="22" style="width:300px;" required>
          </div>
          <div style="clear:both">
            <label for="email">Image<span>*</span></label>
            <input type="file" name="membership_image" id="membership_image" style="width:300px">
          </div>
           <div style="clear:both">
            <label for="email">Number of Memberships in Stock<span>*</span></label>
            <input type="text" name="membership_stock" id="membership_stock" value="<% out.print(Values.get("membership_stock")); %>" size="22" style="width:300px;" required>
          </div>
          <div style="clear:both">
            <label for="email">Description<span>*</span></label>
			<textarea style="width:300px; height:100px;" name="membership_description" required><% out.print(Values.get("membership_description")); %></textarea>
          </div>
          <% if(!Values.get("membership_image").equals("")) { %>
          <div class="half_width">
			<img src="membershipImages/<% out.print(Values.get("membership_image")); %>" style="height:100px; width:100px;">
          </div>
          <% } %>
          <div class="block clear"></div>
          <div>
            <input name="submit" type="submit" value="Save Membership">
            &nbsp;
            <input name="reset" type="reset" value="Reset Form">
          </div>
		  <input type="hidden" name="image_name" value="<% out.print(Values.get("membership_image")); %>" />
		  <input type="hidden" name="act" value="Save" />
		  <input type="hidden" name="type_id" value="0" />
		  <input type="hidden" id="membership_id" name="membership_id" value="<% out.print(Values.get("membership_id")); %>"/>
        </form>
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
