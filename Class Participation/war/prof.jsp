<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="javax.servlet.http.HttpSession" %>
<!doctype html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Class A Part - Professor Home</title>
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
				<li><a href="#studentLogin.jsp"><i
						class="glyphicon glyphicon-home white"></i>&nbsp Home</a></li>
				<li class="divider-vertical"></li>
				<li><a href="#settings"><i
						class="glyphicon glyphicon-wrench white"></i>&nbsp Settings</a></li>
				<li class="divider-vertical"></li>
				<li><a data-toggle="modal" data-target="#contact"><i
						class="glyphicon glyphicon-envelope white"></i>&nbsp Contact Us</a></li>
				<li class="divider-vertical"></li>
				<li><a href="#forgot"><i
						class="glyphicon glyphicon-book white"></i>&nbsp Help</a></li>
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

<!-- Vertical Divider -->
	<div class="row">
  		<div class="col-md-6">.
			<br/>
		<!-- The Button Side -->
			<table style="width:300px" align="center">
				<tr>
 			 		<td height=150><button type="button" class="btn btn-success btn-lg btn-block">Answer Question</button></td>
				</tr>
				<tr>
  					<td height=150><button type="button" class="btn btn-info btn-lg btn-block">Ask/Share</button></td>
					</tr>
				<tr>
  					<td height=150>
  					 <button type="submit" class="btn btn-primary btn-lg btn-block" data-toggle="modal" data-target="#myModal">Anonymous Question</button></td>  
				</tr>	
				</table>	
			</div>
		<div class="col-md-2"></div>	
		<div class="col-md-4">
			<br/>
		Student Profile come here. Jsp File so retrieve in
		</div>
		</div>
<!-- End Vertical Divider -->
<!-- Anonymous Question Modal -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
        <h4 class="modal-title" id="myModalLabel">Please Type in your anonymous question below.</h4>
      </div>
      <div class="modal-body">
      	<form method="post" action="#" accept-charset="UTF-8">
      	<textarea cols="80" rows="5" name="question"></textarea>
      	<button class="btn btn-primary" type="submit" class="btn btn-default" data-dismiss="modal">Submit</button>
      	</form>
      </div>
    </div>
  </div>
</div>
<!-- Anonymous Question End Modal -->
<!-- Contact Us Model Box -->
<div class="modal fade" id="contact" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
        <h4 class="modal-title" id="myModalLabel">You can contact us by :</h4>
      </div>
      <div class="modal-body">
      	<b>Email : </b> g1t1@idp.com <br/>
      	<b>Phone : </b> xxxx-xxxx <br/>
      	<b>Type in your query : </b>
      	<form method="post" action="#" accept-charset="UTF-8">
      	<textarea cols="80" rows="5" name="question"></textarea>
      	<button class="btn btn-primary" type="submit" class="btn btn-default" data-dismiss="modal">Submit</button>
      	</form>
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
</body>
</html>