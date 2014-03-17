<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="javax.servlet.http.HttpSession, java.util.*" %>
<%@ page import="models.*" %>
<%@ page import="DAO.*" %>
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
					
					<li><a data-toggle="modal" data-target="#help"><i class="glyphicon glyphicon-envelope white"></i>&nbsp Help</a></li>
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
				
				
				<!-- Archit Changes -->
				
					<td height=300>
					<table allign="left">
					<%
					ArrayList<AskQuestion> ask= new ArrayList<AskQuestion>();
					ask=AskQuestionDAO.queryAll();
					int i=0;
					while (i<8 && i<ask.size()){
						AskQuestion a=ask.get(i);
						String email=a.getUserName();
					%>
					<tr><td><%out.println("Question from "+email); %>
					<button id="Y"  class="btn btn-success btn-mini" value="<%=email %>"></button>
					<button id="N" class="btn btn-danger btn-mini" value="<%=email %>"/></button>
					</td></tr>
					
					</table>
					<%
					i++;
					} %>
					
					</td>
				</tr>
				<!-- Archit Changes End -->
				<tr>
					<td>
					<%
				      	if(session.getAttribute("feedback")==null){
				      		
				      	}
				      	else{
				      %>
				      	<font color="blue">
				      		<%out.println("You have pending feedback. Click on the \"View Feedback\" button to read the feedback.");%>
				      	</font>
				      	<%
				      	}
				      %>
				</tr>
				<tr>
  					<td height=100>
  					<a href="viewfeedback.jsp">
  						<button type="submit" class="btn btn-primary btn-lg btn-block" data-toggle="modal" data-target="#viewFeedbackModal">View Feedback</button>
  					</a>
  					</td>  
				
				</tr>
				<tr>
  					<td height=100><button type="button" class="btn btn-info btn-lg btn-block">Ask Question</button></td>
				</tr>
			</table>	
		</div>
		
	</div>
	<!-- End Vertical Divider -->
	
	<!-- Scripts --><!-- Archit Changes -->
	<script>
	$(document).ready(function(){
		  $("#Y").click(function(){  
			var $email = $(this).attr('value');
			//alert($email);
		    $.post("/ProcessQuestion",
		    {
		      name: $email,
		      points : "true"
		    }
		    );
		  });
		});
	</script>
	<script>
	$(document).ready(function(){
		  $("#N").click(function(){  
			var $email = $(this).attr('value');
			//alert($email);
		    $.post("/ProcessQuestion",
		    {
		      name: $email,
		      points : "false"
		    }
		    );
		  });
		});
	</script>
	<!-- Scripts --><!-- Archit Changes End -->
	
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

</body>
</html>