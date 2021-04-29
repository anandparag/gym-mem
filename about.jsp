<%@ include file="includes/header.jsp" %>
<%@ page import= "java.util.*" %>
<%@ page import= "Model.*" %>
<div class="wrapper row3">
  <div class="rounded">
    <% if(request.getParameter("msg") != null) { %>
	<div class="msg"><%=request.getParameter("msg") %></div>
	<% } %>
    <main class="container clear"> 
      <!-- main body --> 
      <div id="comments" style="width: 70%; float:left; margin-right:30px; text-align:justify;">
      <h2>About Gym Management System</h2>
      <p>
        A health club (also known as a fitness club, fitness center, health spa, and commonly referred to as a gym) is a place which houses exercise equipment for the purpose of physical exercise.
        </p>
        <p>
        Most health clubs have a main workout area, which primarily consists of free weights including dumbbells, barbells and exercise machines. This area often includes mirrors so that exercisers can monitor and maintain correct posture during their workout. A gym that predominantly or exclusively consists of free weights (dumbbells and barbells), as opposed to exercise machines, is sometimes referred to as a black-iron gym, after the traditional color of weight plates
        </p>
        <p>
        A cardio theater or cardio area includes many types of cardiovascular training-related equipment such as rowing machines, stationary exercise bikes, elliptical trainers and treadmills. These areas often include a number of audio-visual displays (either integrated into the equipment, or placed on walls around the area itself) in order to keep exercisers entertained during long cardio workout sessions.
        </p>
        <p>
        Most newer health clubs offer group exercise classes that are conducted by certified fitness instructors. Many types of group exercise classes exist, but generally these include classes based on aerobics, cycling (spin cycle), boxing or martial arts, high intensity training, step, regular and hot (Bikram) yoga, pilates, muscle training, and self-defense classes such as Krav Maga and Brazilian jiu-jitsu. Health clubs with swimming pools often offer aqua aerobics classes. The instructors often must gain certification in order to teach these classes and ensure participant safety.
        </p>
        <p>A gymnasium, also known as a gym, is a covered location for gymnastics, athletics, and gymnastic services. The word is derived from the ancient Greek gymnasium. They are commonly found in athletic and fitness centers, and as activity and learning spaces in educational institutions. "Gym" is also slang for "fitness center", which is often an area for indoor recreation.</p>
          <p>Gymnasia apparatus such as barbells, parallel bars, jumping board, running path, tennis-balls, cricket field, fencing area, and so forth are used as exercises. In safe weather, outdoor locations are the most conducive to health. Gyms were popular in ancient Greece. Their curricula included Gymnastica militaria or self-defense, gymnastica medica, or physical therapy to help the sick and injured, and gymnastica athletica for physical fitness and sports, from boxing to dancing.</p>
           </div>
        <div style="float: left">
        	<div><img src="images/save_1.jpg" style="width: 250px"></div><br>
        </div>
      <div class="clear"></div>
    </main>
  </div>
</div>
<% if(session.getAttribute("login_level") != null && session.getAttribute("login_level").equals("1")) { %>		
	<script>
		 jQuery('#password_row').hide();
	</script>
<% } %>
<%@ include file="includes/footer.jsp" %>
