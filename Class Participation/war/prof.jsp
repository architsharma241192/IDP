<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="javax.servlet.http.HttpSession, java.util.*" %>
<%@ page import="models.*" %>
<%@ page import="DAO.*" %>
<!doctype html>
<html xmlns="http://www.w3.org/1999/xhtml">

<head>

	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title>Class-A-Part - Professor Home</title>
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
				<a class="navbar-brand" href="prof.jsp">Welcome	to Class-A-Part : <%=session.getAttribute("username") %></a>
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
					
					<li><a href="/signOut" ><i	class="glyphicon glyphicon-off white"></i>&nbsp Sign Out</a></li>
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
			
			<% 	UserDAO userDAO = new UserDAO();
				AnswerQuestionDAO answerQuestionDAO = new AnswerQuestionDAO();
				
				ArrayList<String> answerUsers = new ArrayList<String>();				
				List<AnswerQuestion> answers = answerQuestionDAO.retrieveAnswerList();
				
				for(AnswerQuestion answer : answers) {
					answerUsers.add(answer.getUsername());
				}
				
				String username1 = userDAO.retrieveUser(1)==null?"":userDAO.retrieveUser(1).getUsername();
				String username2 = userDAO.retrieveUser(2)==null?"":userDAO.retrieveUser(2).getUsername();
				String username3 = userDAO.retrieveUser(3)==null?"":userDAO.retrieveUser(3).getUsername();
				String username4 = userDAO.retrieveUser(4)==null?"":userDAO.retrieveUser(4).getUsername();
				String username5 = userDAO.retrieveUser(5)==null?"":userDAO.retrieveUser(5).getUsername();
				String username6 = userDAO.retrieveUser(6)==null?"":userDAO.retrieveUser(6).getUsername();
				String username7 = userDAO.retrieveUser(7)==null?"":userDAO.retrieveUser(7).getUsername();
				String username8 = userDAO.retrieveUser(8)==null?"":userDAO.retrieveUser(8).getUsername();
				String username9 = userDAO.retrieveUser(9)==null?"":userDAO.retrieveUser(9).getUsername();
				String username10 = userDAO.retrieveUser(10)==null?"":userDAO.retrieveUser(10).getUsername();
				String username11 = userDAO.retrieveUser(11)==null?"":userDAO.retrieveUser(11).getUsername();
				String username12 = userDAO.retrieveUser(12)==null?"":userDAO.retrieveUser(12).getUsername();
				String username13 = userDAO.retrieveUser(13)==null?"":userDAO.retrieveUser(13).getUsername();
				String username14 = userDAO.retrieveUser(14)==null?"":userDAO.retrieveUser(14).getUsername();
				String username15 = userDAO.retrieveUser(15)==null?"":userDAO.retrieveUser(15).getUsername();
				String username16 = userDAO.retrieveUser(16)==null?"":userDAO.retrieveUser(16).getUsername();
				String username17 = userDAO.retrieveUser(17)==null?"":userDAO.retrieveUser(17).getUsername();
				String username18 = userDAO.retrieveUser(18)==null?"":userDAO.retrieveUser(18).getUsername();
				String username19 = userDAO.retrieveUser(19)==null?"":userDAO.retrieveUser(19).getUsername();
				String username20 = userDAO.retrieveUser(20)==null?"":userDAO.retrieveUser(20).getUsername();
				String username21 = userDAO.retrieveUser(21)==null?"":userDAO.retrieveUser(21).getUsername();
				String username22 = userDAO.retrieveUser(22)==null?"":userDAO.retrieveUser(22).getUsername();
				String username23 = userDAO.retrieveUser(23)==null?"":userDAO.retrieveUser(23).getUsername();
				String username24 = userDAO.retrieveUser(24)==null?"":userDAO.retrieveUser(24).getUsername();
				String username25 = userDAO.retrieveUser(25)==null?"":userDAO.retrieveUser(25).getUsername();
				String username26 = userDAO.retrieveUser(26)==null?"":userDAO.retrieveUser(26).getUsername();
				String username27 = userDAO.retrieveUser(27)==null?"":userDAO.retrieveUser(27).getUsername();
				String username28 = userDAO.retrieveUser(28)==null?"":userDAO.retrieveUser(28).getUsername();
				String username29 = userDAO.retrieveUser(29)==null?"":userDAO.retrieveUser(29).getUsername();
				String username30 = userDAO.retrieveUser(30)==null?"":userDAO.retrieveUser(30).getUsername();
				String username31 = userDAO.retrieveUser(31)==null?"":userDAO.retrieveUser(31).getUsername();
				String username32 = userDAO.retrieveUser(32)==null?"":userDAO.retrieveUser(32).getUsername();
				String username33 = userDAO.retrieveUser(33)==null?"":userDAO.retrieveUser(33).getUsername();
				String username34 = userDAO.retrieveUser(34)==null?"":userDAO.retrieveUser(34).getUsername();
				String username35 = userDAO.retrieveUser(35)==null?"":userDAO.retrieveUser(35).getUsername();
				String username36 = userDAO.retrieveUser(36)==null?"":userDAO.retrieveUser(36).getUsername();
				String username37 = userDAO.retrieveUser(37)==null?"":userDAO.retrieveUser(37).getUsername();
				String username38 = userDAO.retrieveUser(38)==null?"":userDAO.retrieveUser(38).getUsername();
				String username39 = userDAO.retrieveUser(39)==null?"":userDAO.retrieveUser(39).getUsername();
				String username40 = userDAO.retrieveUser(40)==null?"":userDAO.retrieveUser(40).getUsername();
				String username41 = userDAO.retrieveUser(41)==null?"":userDAO.retrieveUser(41).getUsername();
				String username42 = userDAO.retrieveUser(42)==null?"":userDAO.retrieveUser(42).getUsername();
				String username43 = userDAO.retrieveUser(43)==null?"":userDAO.retrieveUser(43).getUsername();
				String username44 = userDAO.retrieveUser(44)==null?"":userDAO.retrieveUser(44).getUsername();
				
			%>
			
			<table align="center">
				
				<tr>
					<td width="5" />
 			 		<td align="center" style="<%=answerUsers.contains(username44)?"border: 2px solid green;":""%>"><a href="/ProcessAnswer?username=<%=username44%>"><figure><img src="/studentPhotos/<%=username44.equals("")?"placeholder":username44%>.jpg" height="100%" width="100%" /><figcaption>44</figcaption></figure></a></td>
 			 		<td width="5" />
 			 		<td align="center" style="<%=answerUsers.contains(username43)?"border: 2px solid green;":""%>"><a href="/ProcessAnswer?username=<%=username43%>"><figure><img src="/studentPhotos/<%=username43.equals("")?"placeholder":username43%>.jpg" height="100%" width="100%" /><figcaption>43</figcaption></figure></a></td>
 			 		<td width="5" />
 			 		<td align="center" style="<%=answerUsers.contains(username42)?"border: 2px solid green;":""%>"><a href="/ProcessAnswer?username=<%=username42%>"><figure><img src="/studentPhotos/<%=username42.equals("")?"placeholder":username42%>.jpg" height="100%" width="100%" /><figcaption>42</figcaption></figure></a></td>
 			 		<td width="5" />
 			 		<td align="center" style="<%=answerUsers.contains(username41)?"border: 2px solid green;":""%>"><a href="/ProcessAnswer?username=<%=username41%>"><figure><img src="/studentPhotos/<%=username41.equals("")?"placeholder":username41%>.jpg" height="100%" width="100%" /><figcaption>41</figcaption></figure></a></td>
 			 		<td width="5" />
 			 		<td align="center" style="<%=answerUsers.contains(username40)?"border: 2px solid green;":""%>"><a href="/ProcessAnswer?username=<%=username40%>"><figure><img src="/studentPhotos/<%=username40.equals("")?"placeholder":username40%>.jpg" height="100%" width="100%" /><figcaption>40</figcaption></figure></a></td>
 			 		<td width="5" />
 			 		<td align="center" style="<%=answerUsers.contains(username39)?"border: 2px solid green;":""%>"><a href="/ProcessAnswer?username=<%=username39%>"><figure><img src="/studentPhotos/<%=username39.equals("")?"placeholder":username39%>.jpg" height="100%" width="100%" /><figcaption>39</figcaption></figure></a></td>
 			 		<td width="5" />
 			 		<td align="center" style="<%=answerUsers.contains(username38)?"border: 2px solid green;":""%>"><a href="/ProcessAnswer?username=<%=username38%>"><figure><img src="/studentPhotos/<%=username38.equals("")?"placeholder":username38%>.jpg" height="100%" width="100%" /><figcaption>38</figcaption></figure></a></td>
 			 		<td width="5" />
 			 		<td align="center" style="<%=answerUsers.contains(username37)?"border: 2px solid green;":""%>"><a href="/ProcessAnswer?username=<%=username37%>"><figure><img src="/studentPhotos/<%=username37.equals("")?"placeholder":username37%>.jpg" height="100%" width="100%" /><figcaption>37</figcaption></figure></a></td>
 			 				
 			 		<td width="25" />
 			 		
 			 		<td align="center" style="<%=answerUsers.contains(username36)?"border: 2px solid green;":""%>"><a href="/ProcessAnswer?username=<%=username36%>"><figure><img src="/studentPhotos/<%=username36.equals("")?"placeholder":username36%>.jpg" height="100%" width="100%" /><figcaption>36</figcaption></figure></a></td>
 			 		<td width="5" />
 			 		<td align="center" style="<%=answerUsers.contains(username35)?"border: 2px solid green;":""%>"><a href="/ProcessAnswer?username=<%=username35%>"><figure><img src="/studentPhotos/<%=username35.equals("")?"placeholder":username35%>.jpg" height="100%" width="100%" /><figcaption>35</figcaption></figure></a></td>
 			 		<td width="5" />
 			 		<td align="center" style="<%=answerUsers.contains(username34)?"border: 2px solid green;":""%>"><a href="/ProcessAnswer?username=<%=username34%>"><figure><img src="/studentPhotos/<%=username34.equals("")?"placeholder":username34%>.jpg" height="100%" width="100%" /><figcaption>34</figcaption></figure></a></td>
 			 		<td width="5" />
 			 		<td align="center" style="<%=answerUsers.contains(username33)?"border: 2px solid green;":""%>"><a href="/ProcessAnswer?username=<%=username33%>"><figure><img src="/studentPhotos/<%=username33.equals("")?"placeholder":username33%>.jpg" height="100%" width="100%" /><figcaption>33</figcaption></figure></a></td>
 			 		<td width="5" />
 			 		<td align="center" style="<%=answerUsers.contains(username32)?"border: 2px solid green;":""%>"><a href="/ProcessAnswer?username=<%=username32%>"><figure><img src="/studentPhotos/<%=username32.equals("")?"placeholder":username32%>.jpg" height="100%" width="100%" /><figcaption>32</figcaption></figure></a></td>
 			 		<td width="5" />
 			 		<td align="center" style="<%=answerUsers.contains(username31)?"border: 2px solid green;":""%>"><a href="/ProcessAnswer?username=<%=username31%>"><figure><img src="/studentPhotos/<%=username31.equals("")?"placeholder":username31%>.jpg" height="100%" width="100%" /><figcaption>31</figcaption></figure></a></td>
 			 		<td width="5" />
 			 		<td align="center" style="<%=answerUsers.contains(username30)?"border: 2px solid green;":""%>"><a href="/ProcessAnswer?username=<%=username30%>"><figure><img src="/studentPhotos/<%=username30.equals("")?"placeholder":username30%>.jpg" height="100%" width="100%" /><figcaption>30</figcaption></figure></a></td>
 			 		<td width="5" />
 			 		<td align="center" style="<%=answerUsers.contains(username29)?"border: 2px solid green;":""%>"><a href="/ProcessAnswer?username=<%=username29%>"><figure><img src="/studentPhotos/<%=username29.equals("")?"placeholder":username29%>.jpg" height="100%" width="100%" /><figcaption>29</figcaption></figure></a></td>
 			 	</tr>
				
				<tr height = "25" />
				
				<tr>
					<td width="5" />
 			 		<td align="center" style="<%=answerUsers.contains(username28)?"border: 2px solid green;":""%>"><a href="/ProcessAnswer?username=<%=username28%>"><figure><img src="/studentPhotos/<%=username28.equals("")?"placeholder":username28%>.jpg" height="100%" width="100%" /><figcaption>28</figcaption></figure></a></td>
 			 		<td width="5" />
 			 		<td align="center" style="<%=answerUsers.contains(username27)?"border: 2px solid green;":""%>"><a href="/ProcessAnswer?username=<%=username27%>"><figure><img src="/studentPhotos/<%=username27.equals("")?"placeholder":username27%>.jpg" height="100%" width="100%" /><figcaption>27</figcaption></figure></a></td>
 			 		<td width="5" />
 			 		<td align="center" style="<%=answerUsers.contains(username26)?"border: 2px solid green;":""%>"><a href="/ProcessAnswer?username=<%=username26%>"><figure><img src="/studentPhotos/<%=username26.equals("")?"placeholder":username26%>.jpg" height="100%" width="100%" /><figcaption>26</figcaption></figure></a></td>
 			 		<td width="5" />
 			 		<td align="center" style="<%=answerUsers.contains(username25)?"border: 2px solid green;":""%>"><a href="/ProcessAnswer?username=<%=username25%>"><figure><img src="/studentPhotos/<%=username25.equals("")?"placeholder":username25%>.jpg" height="100%" width="100%" /><figcaption>25</figcaption></figure></a></td>
 			 		<td width="5" />
 			 		<td align="center" style="<%=answerUsers.contains(username24)?"border: 2px solid green;":""%>"><a href="/ProcessAnswer?username=<%=username24%>"><figure><img src="/studentPhotos/<%=username24.equals("")?"placeholder":username24%>.jpg" height="100%" width="100%" /><figcaption>24</figcaption></figure></a></td>
 			 		<td width="5" />
 			 		<td align="center" style="<%=answerUsers.contains(username23)?"border: 2px solid green;":""%>"><a href="/ProcessAnswer?username=<%=username23%>"><figure><img src="/studentPhotos/<%=username23.equals("")?"placeholder":username23%>.jpg" height="100%" width="100%" /><figcaption>23</figcaption></figure></a></td>
 			 		<td width="5" />
 			 		<td align="center" style="<%=answerUsers.contains(username22)?"border: 2px solid green;":""%>"><a href="/ProcessAnswer?username=<%=username22%>"><figure><img src="/studentPhotos/<%=username22.equals("")?"placeholder":username22%>.jpg" height="100%" width="100%" /><figcaption>22</figcaption></figure></a></td>
 			 		<td width="5" />
 			 		<td align="center" style="<%=answerUsers.contains(username21)?"border: 2px solid green;":""%>"><a href="/ProcessAnswer?username=<%=username21%>"><figure><img src="/studentPhotos/<%=username21.equals("")?"placeholder":username21%>.jpg" height="100%" width="100%" /><figcaption>21</figcaption></figure></a></td>
 			 				
 			 		<td width="25" />
 			 		
 			 		<td align="center" style="<%=answerUsers.contains(username20)?"border: 2px solid green;":""%>"><a href="/ProcessAnswer?username=<%=username20%>"><figure><img src="/studentPhotos/<%=username20.equals("")?"placeholder":username20%>.jpg" height="100%" width="100%" /><figcaption>20</figcaption></figure></a></td>
 			 		<td width="5" />
 			 		<td align="center" style="<%=answerUsers.contains(username19)?"border: 2px solid green;":""%>"><a href="/ProcessAnswer?username=<%=username19%>"><figure><img src="/studentPhotos/<%=username19.equals("")?"placeholder":username19%>.jpg" height="100%" width="100%" /><figcaption>19</figcaption></figure></a></td>
 			 		<td width="5" />
 			 		<td align="center" style="<%=answerUsers.contains(username18)?"border: 2px solid green;":""%>"><a href="/ProcessAnswer?username=<%=username18%>"><figure><img src="/studentPhotos/<%=username18.equals("")?"placeholder":username18%>.jpg" height="100%" width="100%" /><figcaption>18</figcaption></figure></a></td>
 			 		<td width="5" />
 			 		<td align="center" style="<%=answerUsers.contains(username17)?"border: 2px solid green;":""%>"><a href="/ProcessAnswer?username=<%=username17%>"><figure><img src="/studentPhotos/<%=username17.equals("")?"placeholder":username17%>.jpg" height="100%" width="100%" /><figcaption>17</figcaption></figure></a></td>
 			 		<td width="5" />
 			 		<td align="center" style="<%=answerUsers.contains(username16)?"border: 2px solid green;":""%>"><a href="/ProcessAnswer?username=<%=username16%>"><figure><img src="/studentPhotos/<%=username16.equals("")?"placeholder":username16%>.jpg" height="100%" width="100%" /><figcaption>16</figcaption></figure></a></td>
 			 		<td width="5" />
 			 		<td align="center" style="<%=answerUsers.contains(username15)?"border: 2px solid green;":""%>"><a href="/ProcessAnswer?username=<%=username15%>"><figure><img src="/studentPhotos/<%=username15.equals("")?"placeholder":username15%>.jpg" height="100%" width="100%" /><figcaption>15</figcaption></figure></a></td>
 			 		<td width="5" />
 			 		<td align="center" style="<%=answerUsers.contains(username14)?"border: 2px solid green;":""%>"><a href="/ProcessAnswer?username=<%=username14%>"><figure><img src="/studentPhotos/<%=username14.equals("")?"placeholder":username14%>.jpg" height="100%" width="100%" /><figcaption>14</figcaption></figure></a></td>
 			 		<td width="5" />
 			 		<td align="center" style="<%=answerUsers.contains(username13)?"border: 2px solid green;":""%>"><a href="/ProcessAnswer?username=<%=username13%>"><figure><img src="/studentPhotos/<%=username13.equals("")?"placeholder":username13%>.jpg" height="100%" width="100%" /><figcaption>13</figcaption></figure></a></td>
 			 	</tr>
				
				<tr height = "25" />
				
				<tr>
					<td width="5" />
 			 		<td></td>
 			 		<td width="5" />
 			 		<td></td>
 			 		<td width="5" />
 			 		<td align="center" style="<%=answerUsers.contains(username12)?"border: 2px solid green;":""%>"><a href="/ProcessAnswer?username=<%=username12%>"><figure><img src="/studentPhotos/<%=username12.equals("")?"placeholder":username12%>.jpg" height="100%" width="100%" /><figcaption>12</figcaption></figure></a></td>
 			 		<td width="5" />
 			 		<td align="center" style="<%=answerUsers.contains(username11)?"border: 2px solid green;":""%>"><a href="/ProcessAnswer?username=<%=username11%>"><figure><img src="/studentPhotos/<%=username11.equals("")?"placeholder":username11%>.jpg" height="100%" width="100%" /><figcaption>11</figcaption></figure></a></td>
 			 		<td width="5" />
 			 		<td align="center" style="<%=answerUsers.contains(username10)?"border: 2px solid green;":""%>"><a href="/ProcessAnswer?username=<%=username10%>"><figure><img src="/studentPhotos/<%=username10.equals("")?"placeholder":username10%>.jpg" height="100%" width="100%" /><figcaption>10</figcaption></figure></a></td>
 			 		<td width="5" />
 			 		<td align="center" style="<%=answerUsers.contains(username9)?"border: 2px solid green;":""%>"><a href="/ProcessAnswer?username=<%=username9%>"><figure><img src="/studentPhotos/<%=username9.equals("")?"placeholder":username9%>.jpg" height="100%" width="100%" /><figcaption>9</figcaption></figure></a></td>
 			 		<td width="5" />
 			 		<td align="center" style="<%=answerUsers.contains(username8)?"border: 2px solid green;":""%>"><a href="/ProcessAnswer?username=<%=username8%>"><figure><img src="/studentPhotos/<%=username8.equals("")?"placeholder":username8%>.jpg" height="100%" width="100%" /><figcaption>8</figcaption></figure></a></td>
 			 		<td width="5" />
 			 		<td align="center" style="<%=answerUsers.contains(username7)?"border: 2px solid green;":""%>"><a href="/ProcessAnswer?username=<%=username7%>"><figure><img src="/studentPhotos/<%=username7.equals("")?"placeholder":username7%>.jpg" height="100%" width="100%" /><figcaption>7</figcaption></figure></a></td>
 			 		
 			 		<td width="25" />
 			 		
 			 		<td align="center" style="<%=answerUsers.contains(username6)?"border: 2px solid green;":""%>"><a href="/ProcessAnswer?username=<%=username6%>"><figure><img src="/studentPhotos/<%=username6.equals("")?"placeholder":username6%>.jpg" height="100%" width="100%" /><figcaption>6</figcaption></figure></a></td>
 			 		<td width="5" />
 			 		<td align="center" style="<%=answerUsers.contains(username5)?"border: 2px solid green;":""%>"><a href="/ProcessAnswer?username=<%=username5%>"><figure><img src="/studentPhotos/<%=username5.equals("")?"placeholder":username5%>.jpg" height="100%" width="100%" /><figcaption>5</figcaption></figure></a></td>
 			 		<td width="5" />
 			 		<td align="center" style="<%=answerUsers.contains(username4)?"border: 2px solid green;":""%>"><a href="/ProcessAnswer?username=<%=username4%>"><figure><img src="/studentPhotos/<%=username4.equals("")?"placeholder":username4%>.jpg" height="100%" width="100%" /><figcaption>4</figcaption></figure></a></td>
 			 		<td width="5" />
 			 		<td align="center" style="<%=answerUsers.contains(username3)?"border: 2px solid green;":""%>"><a href="/ProcessAnswer?username=<%=username3%>"><figure><img src="/studentPhotos/<%=username3.equals("")?"placeholder":username3%>.jpg" height="100%" width="100%" /><figcaption>3</figcaption></figure></a></td>
 			 		<td width="5" />
 			 		<td align="center" style="<%=answerUsers.contains(username2)?"border: 2px solid green;":""%>"><a href="/ProcessAnswer?username=<%=username2%>"><figure><img src="/studentPhotos/<%=username2.equals("")?"placeholder":username2%>.jpg" height="100%" width="100%" /><figcaption>2</figcaption></figure></a></td>
 			 		<td width="5" />
 			 		<td align="center" style="<%=answerUsers.contains(username1)?"border: 2px solid green;":""%>"><a href="/ProcessAnswer?username=<%=username1%>"><figure><img src="/studentPhotos/<%=username1.equals("")?"placeholder":username1%>.jpg" height="100%" width="100%" /><figcaption>1</figcaption></figure></a></td>
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
				<td>
				
				<!-- Archit Changes -->
				<iframe src=newsFeed.jsp width="180" height="200" frameborder="0"> </iframe>
				<!-- Archit Changes -->
					</td>
				</tr>
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
  					<br/>
  					<br/>
  					<br/>
  					<br/>
  					<br/>
  					<br/>
  					<a href="viewfeedback.jsp">
  						<button type="submit" class="btn btn-primary btn-lg btn-block" data-toggle="modal" data-target="#viewFeedbackModal">View Feedback</button>
  					</a>
  					</td>  
				
				</tr>
				<tr>
				<br/>
  					<td height=100><button type="button" class="btn btn-info btn-lg btn-block">Ask Question</button></td>
				</tr>
			</table>	
		</div>
	</div>
	<!-- End Vertical Divider -->
	
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