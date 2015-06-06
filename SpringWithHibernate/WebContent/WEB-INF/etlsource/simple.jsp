<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<center>

<table cellpadding="2">
<form>
<tr>

<td><input id="name" name="source_system_name"></td>
<td><input type="submit" value="search">

</tr>
</form>
<form action="insert.jsp" method="post">
<tr>
<td colspan="2">
<center><input type="submit" value="AddETLSource"></center>
</td>
</tr>
</form>
</center>
</table>
</body>
</html>