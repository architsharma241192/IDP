<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="javax.servlet.http.HttpSession" %>
<%@ page import="models.*" %>
<%@ page import="DAO.*" %>
<!doctype html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Class-A-Part - Student Home</title>
<meta name="viewport" content="width=device-width,initial-scale=1" />
 
<!-- StyleSheet -->
<link rel="stylesheet" href="bootstrap/css/bootstrap.css" />
<link rel="stylesheet" href="bootstrap/css/custom.css" />
<link rel="stylesheet" href="bootstrap/css/button.css" /> 
<script src="http://code.jquery.com/jquery-1.11.0.min.js"></script>
<script src="http://code.jquery.com/jquery-migrate-1.2.1.min.js"></script>
<script src="bootstrap/js/bootstrap.js"></script>

</head>

<body>
<!-- Navigation Bar -->
<nav class="navbar navbar-inverse" role="navigation">
	<div class="container-fluid">
		<!-- Brand and toggle get grouped for better mobile display -->
		<div class="navbar-header">
			<button type="button" class="navbar-toggle" data-toggle="collapse"
				data-target="#bs-example-navbar-collapse-1">
				<span class="sr-only">Toggle navigation</span> <span
					class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="studentLogin.jsp">Welcome
				to Class-A-Part : <%=session.getAttribute("username") %></a>
		</div>
			<!-- Collect the nav links, forms, and other content for toggling -->
		<div class="collapse navbar-collapse"
			id="bs-example-navbar-collapse-1">
			<ul class="nav navbar-nav navbar-right">
				<li><a href="#studentLogin.jsp"><i
						class="glyphicon glyphicon-home white"></i>&nbsp Home</a></li>
				<li class="divider-vertical"></li>
				<li><a href="#settings"><i
						class="glyphicon glyphicon-wrench white"></i>&nbsp Settings</a></li>
				<li class="divider-vertical"></li>
				<li><a data-toggle="modal" data-target="#contact"><i
						class="glyphicon glyphicon-envelope white"></i>&nbsp Contact Us</a></li>
				<li class="divider-vertical"></li>
				<li><a data-toggle="modal" data-target="#help"><i
						class="glyphicon glyphicon-envelope white"></i>&nbsp Help</a></li>
				<li class="divider-vertical"></li>
				<li><a href="/signOut" ><i
						class="glyphicon glyphicon-off white"></i>&nbsp Sign Out</a></li>
				<li class="divider-vertical"></li>
			</ul>
		</div>
		<!-- /.navbar-collapse -->
	</div>
	<!-- /.container-fluid -->
</nav>
<!-- Navigation Ends -->
<%
	if (session.getAttribute("username")!=null){
		if(session.getAttribute("seatNo")==null)
		{
%>
<script type="text/javascript">
    $(window).load(function(){
        $('#seatNo').modal('show');
    });
</script>
<%
}
else{
}
%>
<!-- Vertical Divider -->
	<div class="row">
  		<div class="col-md-6">.
			<br/>
		<!-- The Button Side -->
			<table style="width:300px" align="center">
				<tr>
 			 		<td height=150><a href="/AnswerQuestion?username=<%=session.getAttribute("username")%>"><button type="button" class="btn btn-success btn-lg btn-block">Answer Question</button></a></td>
				</tr>
				<tr>
  					<td height=150><a href="/AskQuestion?username=<%=session.getAttribute("username")%>"><button type="button" class="btn btn-info btn-lg btn-block" >Ask/Share</button></a></td>
					</tr>
				<tr>
  					<td height=150>
  					 <button type="submit" class="btn btn-primary btn-lg btn-block" data-toggle="modal" data-target="#myModal">Anonymous Question</button></td>  
				</tr>	
				<tr>
				<td>
				<%
				if(session.getAttribute("result")!=null){	
					%>
					<Font color="red"><%=session.getAttribute("result") %></Font>
				<% 
				session.setAttribute("result", null);
				}
				%>
				<td>
				</tr>
				</table>	
			</div>
		<div class="col-md-2"></div>	
		<div class="col-md-4">
			<br/>
<!-- Student Profile -->
<table style="border-left: 4px solid gray;" width=90%>
<tr >
<td align="center">
	<% 	UserDAO userDAO = new UserDAO();
		User user = userDAO.retrieveUser((String)session.getAttribute("username"));
	%>
	
	<img src="/studentPhotos/<%=session.getAttribute("username")%>.jpg"+ title="Hi! I'm <%=user.getName()%>!" height="50%" width="30%"/> <br/><br/>
<p>
	<%=user.getName()%></br>
	<font size="2px">School of Information Systems</br>
	Singapore Management University</br>
	Year of Intake: 2011 </font></br>
</p>
</td>
</tr>
<tr height="100">
<td>
</td>
</tr>
<tr height=140 >
<td align="center">
		
	<button type="button" class="btn btn-warning btn-lg" data-toggle="modal" data-target="#feedbackModal" style="width:300px; height:120px">Submit Feedback</button>
</td>  
</tr>
</table>	
		</div>
		</div>
<!-- End Vertical Divider -->

<!-- Submit Feedback Modal -->
<div class="modal fade" id="feedbackModal" tabindex="-1" role="dialog" aria-labelledby="feedbackModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
        <h4 class="modal-title" id="myModalLabel">Please enter your feedback below.</h4>
      </div>
      <div class="modal-body">
      	<form method="POST" action="/ProcessFeedback" accept-charset="UTF-8">
      	<fiedlset>
      	<div class="form-group">
      		<input type="text" id="feedback" class="form-control" name="feedback"/><br/>
      	</div>
      		<input type="submit" class="btn btn-primary" value="Submit">
      	</fieldset>
      	</form>
      </div>
	</div>
    </div>
  </div>
</div>
<!-- Submit Feedback End Modal -->

<!-- Anonymous Question Modal -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
        <h4 class="modal-title" id="myModalLabel">Please type in your anonymous question below.</h4>
      </div>
      <div class="modal-body">
      	<form id=myForm method="POST" action="/processAnonQuestion" accept-charset="UTF-8">
      	<textarea cols="80" rows="5" name="question" required></textarea>
      	<input type="hidden" name="username" value="<%=session.getAttribute("username")%>">
      	<input type="submit" class="btn btn-primary" value="Submit" class="btn btn-default" >
      	</form>
      </div>
    </div>
  </div>
</div>
<!-- Anonymous Question End Modal -->

<!-- Help Model Box -->
<div class="modal fade" id="help" tabindex="-1" role="dialog" aria-labelledby="helpLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
        <h4 class="modal-title" id="myModalLabel">Please submit your queries below and we will get back to you</h4>
      </div>
      <div class="modal-body" align="center">
      <form method="post" action="#" accept-charset="UTF-8">
      	<textarea cols="80" rows="5" name="question"></textarea>
      	<button class="btn btn-primary" type="submit" class="btn btn-default" data-dismiss="modal">Submit</button>
      	</form>
        </div>
    </div>
  </div>
</div>
<!-- Help Model Box Ends --> 
     
<!-- Contact Us Model Box -->
<div class="modal fade" id="contact" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
        <h4 class="modal-title" id="myModalLabel">Please contact any of our staff members below</h4>
      </div>
      <div class="modal-body" align="center">
     
     	<b><img src="/images/akash.jpg" height=10% width=10%><br/>
      	<b>Name : </b>Akash Kedia<br/>
      	<b>Email : </b>akash.kedia.2011@sis.smu.edu.sg <br/>
      	<b>Phone : </b>+65 8539 0741<br/><br/>
     
      	<b><img src="/images/archit.jpg" height=10% width=10%><br/>
      	<b>Name : </b>Archit Sharma <br/>
      	<b>Email : </b>archits.2011@sis.smu.edu.sg <br/>
      	<b>Phone : </b>+65 8245 8645<br/><br/>
      	
      	<b><img src="/images/jeanetta.jpg" height=10% width=10%><br/>
      	<b>Name : </b>Jeanetta Low <br/>
      	<b>Email : </b>jeanettalow.2011@sis.smu.edu.sg <br/>
      	<b>Phone : </b>+65 9697 3716<br/><br/>
    
      	<b><img src="/images/joey.jpg" height=10% width=10%><br/>
      	<b>Name : </b>Zeng Ying <br/>
      	<b>Email : </b>ying.zeng.2011@sis.smu.edu.sg <br/>
      	<b>Phone : </b>+65 9339 5915<br/><br/>
      
      	<b><img src="/images/photo.jpg" height=10% width=10%><br/>
      	<b>Name : </b>Abhilasha Atha<br/>
      	<b>Email : </b>abhilashaa.2011@sis.smu.edu.sg <br/>
      	<b>Phone : </b>+65 9039 3912<br/><br/>
    
      </div>
    </div>
  </div>
</div>
<!-- Contact Us Model Box Ends -->

<!-- Seat Number Modal Box -->
<div class="modal fade" id="seatNo" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" data-backdrop="static" data-keyboard="false">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h4 class="modal-title" id="myModalLabel">Please Type in your seat number below.</h4>
      </div>
      <div class="modal-body">
      	<form method="post" action="/SeatNumber" accept-charset="UTF-8">
      	<input type="number"  id="seatNo" name="seatNo" placeholder="Seat Number"/>
      	<input type="submit" class="btn btn-primary" value="Submit">
      	</form>
      	<%
      	if(session.getAttribute("errorMsg")==null){
      		
      	}
      	else{
      		%>
      	<font color="red"><%out.println(session.getAttribute("errorMsg"));%></font>
      	<%
      	}
      	%>
      </div>
    </div>
  </div>
</div>
<!-- Seat Number Modal Box -->
<%
	} 
	else{
		%>
		<jsp:forward page="Login.jsp" />
		<% 
	}
	%>
</body>
</html>