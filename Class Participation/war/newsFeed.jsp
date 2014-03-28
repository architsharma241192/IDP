<%@ page language="java" contentType="text/html; charset=US-ASCII"
	pageEncoding="US-ASCII"%>
<%@ page import="javax.servlet.http.HttpSession, java.util.*"%>
<%@ page import="models.*"%>
<%@ page import="DAO.*"%>
<!doctype html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>

<meta http-equiv="Content-Type" content="text/html; charset=US-ASCII">
<link rel="stylesheet" href="bootstrap/css/bootstrap.css" />
<link rel="stylesheet" href="bootstrap/css/custom.css" />
<link rel="stylesheet" href="bootstrap/css/button.css" />
<script src="http://code.jquery.com/jquery-1.11.0.min.js"></script>
<script src="http://code.jquery.com/jquery-migrate-1.2.1.min.js"></script>
<script src="bootstrap/js/bootstrap.js"></script>
</head>
<body>
	<table align="left">
		<%
			response.setIntHeader("Refresh", 30);
								ArrayList<AskQuestion> ask = new ArrayList<AskQuestion>();
								ask = AskQuestionDAO.queryAll();
								int i = 0;
								while (i < 8 && i < ask.size()) {
								AskQuestion a = ask.get(i);
								String username = a.getUserName();
		%>
		<tr>
			<td>
				<%
					out.println("Question from " + username);
				%>
				<button id="Y" class="btn btn-success btn-mini" value="<%=username%>"></button>
				<button id="N" class="btn btn-danger btn-mini" value="<%=username%>" /></button>
				<%
					i++;
								}
				%>
			</td>
		</tr>
		<%
			ArrayList<AnonQuestion> anon= new ArrayList<AnonQuestion>();
					anon = AnonQuestionDAO.queryAll();
					int j=0;
					while (j < 2 && j < anon.size()) {
						AnonQuestion an = anon.get(j);
						String username = an.getUserName();
						String question = an.getQuestion();
		%>
		<tr>
			<td>
			<%
				out.println(question);
			%>
				<button id="AY" class="btn btn-success btn-mini" value="<%=username%>"></button>
				<button id="AN" class="btn btn-danger btn-mini" value="<%=username%>" /></button>
			<td>
		</tr>
		<%
		j++;
			}
		%>
	</table>
	<!-- Script for normal question yes -->
	<script>
		$(document).ready(function() {
			$("#Y").click(function() {
				var $username = $(this).attr('value');
				//alert($username);
				$.post("/ProcessQuestion", {
					username : $username,
					points : "true",
					ansync : false,
					success : function() {
						window.location.reload(true);
						window.location.reload(true);
						window.location.reload();
						;
					}
				});
			});
		});
	</script>
	<!-- Script for normal question no -->
	<script>
		$(document).ready(function() {
			$("#N").click(function() {
				var $username = $(this).attr('value');
				//alert($username);
				$.post("/ProcessQuestion", {
					username : $username,
					points : "false",
					ansync : false,
					success : function() {
						window.location.reload(true);
						window.location.reload(true);
						window.location.reload();
						;
					}
				});
			});
		});
	</script>
	<!-- Script for anonymous question yes -->
	<script>
		$(document).ready(function() {
			$("#AY").click(function() {
				var $username = $(this).attr('value');
				//alert($username);
				$.post("/Anon", {
					username : $username,
					points : "true",
					ansync : false,
					success : function() {
						window.location.reload(true);
						window.location.reload(true);
						window.location.reload();
						;
					}
				});
			});
		});
	</script>
	<!-- Script for anonymous question no -->
	<script>
		$(document).ready(function() {
			$("#AN").click(function() {
				var $username = $(this).attr('value');
				//alert($username);
				$.post("/Anon", {
					username : $username,
					points : "false",
					ansync : false,
					success : function() {
						window.location.reload(true);
						window.location.reload(true);
						window.location.reload();
						;
					}
				});
			});
		});
	</script>
</body>
</html>