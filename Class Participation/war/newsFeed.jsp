<%@ page language="java" contentType="text/html; charset=US-ASCII"
	pageEncoding="US-ASCII"%>
<%@ page import="javax.servlet.http.HttpSession, java.util.*"%>
<%@ page import="models.*"%>
<%@ page import="DAO.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
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
	<table allign="left">
							<%
								response.setIntHeader("Refresh", 30);
								ArrayList<AskQuestion> ask = new ArrayList<AskQuestion>();
								ask = AskQuestionDAO.queryAll();
								int i = 0;
								while (i < 8 && i < ask.size()) {
								AskQuestion a = ask.get(i);
								String email = a.getUserName();
							%>
						<tr>
						<td>
						<%
							out.println("Question from " + email);
						%>
						<button id="Y" class="btn btn-success btn-mini" value="<%=email%>"></button>
						<button id="N" class="btn btn-danger btn-mini" value="<%=email%>" /></button>
						<%
						i++;
						} 
					%>
						</td>
					</tr>
						
				</table>
	<script>
	$(document).ready(function(){
		  $("#Y").click(function(){  
			var $email = $(this).attr('value');
			//alert($email);
		    $.post("/ProcessQuestion",
		    {
		      name: $email,
		      points : "true",
		      ansync : false,
		      success: function(){
		    	  setTimeout(
		                  function() 
		                  {
		                     window.location.reload();
		                  }, 0001);
		    	  //window.location.href = window.location;
		         }
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
		      points : "false",
		      ansync : false,
		      success: function(){
		    	  window.location.reload(true);
		    	  window.location.reload(true);
		    	  window.location.reload();;          
		         }
		    }
		    );
		  });
		});
	</script>
</body>
</html>