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
					<span class="sr-only">Toggle navigation</span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span> 
					<span class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="prof.jsp">Welcome	to Class A Part : <%=session.getAttribute("email") %></a>
			</div>
			
			<!-- Collect the nav links, forms, and other content for toggling -->
			<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
				<ul class="nav navbar-nav navbar-right">
					<li><a href="#studentLogin.jsp"><i class="glyphicon glyphicon-home white"></i>&nbsp Home</a></li>
					<li class="divider-vertical"></li>
					
					<li><a href="#settings"><i class="glyphicon glyphicon-wrench white"></i>&nbsp Settings</a></li>
					<li class="divider-vertical"></li>
					
					<li><a data-toggle="modal" data-target="#contact"><i class="glyphicon glyphicon-envelope white"></i>&nbsp Contact Us</a></li>
					<li class="divider-vertical"></li>
					
					<li><a href="#forgot"><i class="glyphicon glyphicon-book white"></i>&nbsp Help</a></li>
					<li class="divider-vertical"></li>
					
					<li><a href="Login.jsp" ><i	class="glyphicon glyphicon-off white"></i>&nbsp Sign Out</a></li>
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
  		<div class="col-md-10">.
  		<br/>
		
		<!-- The Class Layout -->
			<pre style="text-align:center">IS 306 - Interaction Design and Prototyping - G1<br />SIS Seminar Room 2-2<br/>Wednesday, 19th March, 2014</pre>
			
			<table align="center">
				
				<tr>
					<td width="5" />
 			 		<td align="center"><figure><img src="/studentPhotos/placeholder.jpg" height="100%" width="100%" /><figcaption>44</figcaption></figure></td>
 			 		<td width="5" />
 			 		<td align="center"><figure><img src="/studentPhotos/placeholder.jpg" height="100%" width="100%" /><figcaption>43</figcaption></figure></td>
 			 		<td width="5" />
 			 		<td align="center"><figure><img src="/studentPhotos/placeholder.jpg" height="100%" width="100%" /><figcaption>42</figcaption></figure></td>
 			 		<td width="5" />
 			 		<td align="center"><figure><img src="/studentPhotos/placeholder.jpg" height="100%" width="100%" /><figcaption>41</figcaption></figure></td>
 			 		<td width="5" />
 			 		<td align="center"><figure><img src="/studentPhotos/placeholder.jpg" height="100%" width="100%" /><figcaption>40</figcaption></figure></td>
 			 		<td width="5" />
 			 		<td align="center"><figure><img src="/studentPhotos/placeholder.jpg" height="100%" width="100%" /><figcaption>39</figcaption></figure></td>
 			 		<td width="5" />
 			 		<td align="center"><figure><img src="/studentPhotos/placeholder.jpg" height="100%" width="100%" /><figcaption>38</figcaption></figure></td>
 			 		<td width="5" />
 			 		<td align="center"><figure><img src="/studentPhotos/placeholder.jpg" height="100%" width="100%" /><figcaption>37</figcaption></figure></td>
 			 		
 			 		<td width="25" />
 			 		
 			 		<td align="center"><figure><img src="/studentPhotos/placeholder.jpg" height="100%" width="100%" /><figcaption>36</figcaption></figure></td>
 			 		<td width="5" />
 			 		<td align="center"><figure><img src="/studentPhotos/placeholder.jpg" height="100%" width="100%" /><figcaption>35</figcaption></figure></td>
 			 		<td width="5" />
 			 		<td align="center"><figure><img src="/studentPhotos/placeholder.jpg" height="100%" width="100%" /><figcaption>34</figcaption></figure></td>
 			 		<td width="5" />
 			 		<td align="center"><figure><img src="/studentPhotos/placeholder.jpg" height="100%" width="100%" /><figcaption>33</figcaption></figure></td>
 			 		<td width="5" />
 			 		<td align="center"><figure><img src="/studentPhotos/placeholder.jpg" height="100%" width="100%" /><figcaption>32</figcaption></figure></td>
 			 		<td width="5" />
 			 		<td align="center"><figure><img src="/studentPhotos/placeholder.jpg" height="100%" width="100%" /><figcaption>31</figcaption></figure></td>
 			 		<td width="5" />
 			 		<td align="center"><figure><img src="/studentPhotos/placeholder.jpg" height="100%" width="100%" /><figcaption>30</figcaption></figure></td>
 			 		<td width="5" />
 			 		<td align="center"><figure><img src="/studentPhotos/placeholder.jpg" height="100%" width="100%" /><figcaption>29</figcaption></figure></td>
				</tr>
				
				<tr height = "25" />
				
				<tr>
					<td width="5" />
 			 		<td align="center"><figure><img src="/studentPhotos/placeholder.jpg" height="100%" width="100%" /><figcaption>28</figcaption></figure></td>
 			 		<td width="5" />
 			 		<td align="center"><figure><img src="/studentPhotos/placeholder.jpg" height="100%" width="100%" /><figcaption>27</figcaption></figure></td>
 			 		<td width="5" />
 			 		<td align="center"><figure><img src="/studentPhotos/placeholder.jpg" height="100%" width="100%" /><figcaption>26</figcaption></figure></td>
 			 		<td width="5" />
 			 		<td align="center"><figure><img src="/studentPhotos/placeholder.jpg" height="100%" width="100%" /><figcaption>25</figcaption></figure></td>
 			 		<td width="5" />
 			 		<td align="center"><figure><img src="/studentPhotos/placeholder.jpg" height="100%" width="100%" /><figcaption>24</figcaption></figure></td>
 			 		<td width="5" />
 			 		<td align="center"><figure><img src="/studentPhotos/placeholder.jpg" height="100%" width="100%" /><figcaption>23</figcaption></figure></td>
 			 		<td width="5" />
 			 		<td align="center"><figure><img src="/studentPhotos/placeholder.jpg" height="100%" width="100%" /><figcaption>22</figcaption></figure></td>
 			 		<td width="5" />
 			 		<td align="center"><figure><img src="/studentPhotos/placeholder.jpg" height="100%" width="100%" /><figcaption>21</figcaption></figure></td>
 			 		
 			 		<td width="25" />
 			 		
 			 		<td align="center"><figure><img src="/studentPhotos/akash.kedia.2011.jpg" height="100%" width="100%" /><figcaption>20</figcaption></figure></td>
 			 		<td width="5" />
 			 		<td align="center"><figure><img src="/studentPhotos/abhilashaa.2011.jpg" height="100%" width="100%" /><figcaption>19</figcaption></figure></td>
 			 		<td width="5" />
 			 		<td align="center"><figure><img src="/studentPhotos/archits.2011.jpg" height="100%" width="100%" /><figcaption>18</figcaption></figure></td>
 			 		<td width="5" />
 			 		<td align="center"><figure><img src="/studentPhotos/ying.zeng.2011.jpg" height="100%" width="100%" /><figcaption>17</figcaption></figure></td>
 			 		<td width="5" />
 			 		<td align="center"><figure><img src="/studentPhotos/jeanettalow.2011.jpg" height="100%" width="100%" /><figcaption>16</figcaption></figure></td>
 			 		<td width="5" />
 			 		<td align="center"><figure><img src="/studentPhotos/placeholder.jpg" height="100%" width="100%" /><figcaption>15</figcaption></figure></td>
 			 		<td width="5" />
 			 		<td align="center"><figure><img src="/studentPhotos/placeholder.jpg" height="100%" width="100%" /><figcaption>14</figcaption></figure></td>
 			 		<td width="5" />
 			 		<td align="center"><figure><img src="/studentPhotos/placeholder.jpg" height="100%" width="100%" /><figcaption>13</figcaption></figure></td>
				</tr>
				
				<tr height = "25" />
				
				<tr>
					<td width="5" />
 			 		<td></td>
 			 		<td width="5" />
 			 		<td></td>
 			 		<td width="5" />
 			 		<td align="center"><figure><img src="/studentPhotos/placeholder.jpg" height="100%" width="100%" /><figcaption>12</figcaption></figure></td>
 			 		<td width="5" />
 			 		<td align="center"><figure><img src="/studentPhotos/placeholder.jpg" height="100%" width="100%" /><figcaption>11</figcaption></figure></td>
 			 		<td width="5" />
 			 		<td align="center"><figure><img src="/studentPhotos/placeholder.jpg" height="100%" width="100%" /><figcaption>10</figcaption></figure></td>
 			 		<td width="5" />
 			 		<td align="center"><figure><img src="/studentPhotos/placeholder.jpg" height="100%" width="100%" /><figcaption>9</figcaption></figure></td>
 			 		<td width="5" />
 			 		<td align="center"><figure><img src="/studentPhotos/placeholder.jpg" height="100%" width="100%" /><figcaption>8</figcaption></figure></td>
 			 		<td width="5" />
 			 		<td align="center"><figure><img src="/studentPhotos/placeholder.jpg" height="100%" width="100%" /><figcaption>7</figcaption></figure></td>
 			 		
 			 		<td width="25" />
 			 		
 			 		<td align="center"><figure><img src="/studentPhotos/placeholder.jpg" height="100%" width="100%" /><figcaption>6</figcaption></figure></td>
 			 		<td width="5" />
 			 		<td align="center"><figure><img src="/studentPhotos/placeholder.jpg" height="100%" width="100%" /><figcaption>5</figcaption></figure></td>
 			 		<td width="5" />
 			 		<td align="center"><figure><img src="/studentPhotos/placeholder.jpg" height="100%" width="100%" /><figcaption>4</figcaption></figure></td>
 			 		<td width="5" />
 			 		<td align="center"><figure><img src="/studentPhotos/placeholder.jpg" height="100%" width="100%" /><figcaption>3</figcaption></figure></td>
 			 		<td width="5" />
 			 		<td align="center"><figure><img src="/studentPhotos/placeholder.jpg" height="100%" width="100%" /><figcaption>2</figcaption></figure></td>
 			 		<td width="5" />
 			 		<td align="center"><figure><img src="/studentPhotos/placeholder.jpg" height="100%" width="100%" /><figcaption>1</figcaption></figure></td>
 			 		<td width="5" />
 			 		<td align="center"></td>
 			 		<td width="5" />
 			 		<td></td>
				</tr>
				
			</table>
		</div>
		
		<div class="col-md-2">
			<table align="center">
				<tr>
					<td height=100>Notifications</td>
				</tr>
				<tr>
  					<td height=100><button type="submit" class="btn btn-primary btn-lg btn-block" data-toggle="modal" data-target="#viewFeedbackModal">View Feedback</button></td>  
				</tr>
				<tr>
  					<td height=100><button type="button" class="btn btn-info btn-lg btn-block">Ask Question</button></td>
				</tr>
			</table>	
		</div>
		
	</div>
	<!-- End Vertical Divider -->
	
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

</body>
</html>