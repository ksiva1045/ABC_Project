<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<!--  <body background="productjsps/images/bgnoise_lg.png">-->
<%@ page import = "java.util.ResourceBundle" %>
<%

//String obj =(String) request.getAttribute("sucessFlag");

		 ResourceBundle resource = ResourceBundle.getBundle("messages");
		String result = resource.getString("successDelete");
%>


<h2 style="color: red">
<center>
${checkBoxBean.size}
 <%=result%>
 </center>
</h2>		
<div align="center">
<form action="selectall.html"> 
<input type="submit" value="CheckNow">
</form>
</div>


<script type="text/javascript" src="productjsps/jquery.js"></script>

<script type="text/javascript">


$(document).ready(function(){
	
	$('#cancel').click(function(){
		window.location.replace("/DeptClient/productjsps/AddOrSearch.jsp");
		
	});
		
});

</script>
</body>
</html>