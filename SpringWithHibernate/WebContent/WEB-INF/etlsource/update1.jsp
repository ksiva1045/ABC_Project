<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ page session="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>

<!--  -->
<body bgcolor="#F0FFF0">
<br>
<br>


<center>
     <div id="add-form">    
  <form role="form" action="update.html" method="post">

<table border="2px" cellspacing="4px" cellpadding="2" >

<tr >
<td><b>Enter Source System Name</b> </td>
<td><input id="name1"  name="source_system_name" value="${etlSource1.source_system_name}" ></td>
</tr>
<tr>
<td><b>Enter Source System description</b></td>

<td><input id="name2"  name="source_system_name" value="${etlSource1.source_system_desc}" ></td> 
</tr>
<tr>
<td><b>Enter Source Name</b></td>

<td><input id="name3" name="source_system_name" value="${etlSource1.source_name}" ></td>
</tr>
<tr>
<td><b>Enter Source Type</b></td>
<td>

<select>
<option value="${etlSource1.source_type}" selected="selected"> ${etlSource1.source_type} </option>

<c:forEach items="${etlSourceList}" var="etlSource">

<c:choose>

<c:when test="${etlSource1.source_type}==${etlSource.source_type}">
<option value="${etlSource.source_type}"> ${etlSource.source_type} </option>
</c:when>

<c:otherwise>
<option value="${etlSource.source_type}"> ${etlSource.source_type} </option>
</c:otherwise>

</c:choose>

</c:forEach>
</select>
</td> <br>
</tr> 
</table>

<input type="submit" value="update">
</form>
</div>
</table>
<br>        
</form>
</center>
</body>
</html>