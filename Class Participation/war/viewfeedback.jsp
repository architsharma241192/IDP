<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="javax.servlet.http.HttpSession" %>
<!doctype html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Class A Part - Student Login</title>
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
				to Class A Part : <%=session.getAttribute("email") %></a>
		</div>
			<!-- Collect the nav links, forms, and other content for toggling -->
		<div class="collapse navbar-collapse"
			id="bs-example-navbar-collapse-1">
			<ul class="nav navbar-nav navbar-right">
				<li><a href="prof.jsp"><i
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
				<li><a href="Login.jsp" ><i
						class="glyphicon glyphicon-off white"></i>&nbsp Sign Out</a></li>
				<li class="divider-vertical"></li>
			</ul>
		</div>
		<!-- /.navbar-collapse -->
	</div>
	<!-- /.container-fluid -->
</nav>
<!-- Navigation Ends -->
<%=session.getAttribute("feedback") %>

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