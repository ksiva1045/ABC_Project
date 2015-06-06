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
<jsp:include page="simple.jsp"/>

<form role="form" action="delete.html" method="post">

<center>

<c:if test="${!empty etlSourceList}">
    <table class="tg" border="2px">
    <h2><tr colspan="5"><b>ETL SOURCE SYSTEM LIST</b></tr></h2>
    <tr bgcolor="#E0FFFF">
       <th></th>
        <th>SOURCE SYSTEM NAME</th>
        <th>SOURCE SYSTEM DESC</th>
        <th>SOURCE NAME</th>   
        <th>SOURCE TYPE</th>
    </tr>
    <c:forEach items="${etlSourceList}" var="etlSource1">
        <tr>
            <td><input type="checkbox" name="checkval" id="ck" value="${etlSource1.source_system_id}"/></td>
            <td><a href="selectbyid.html?id=${etlSource1.source_system_id}">${etlSource1.source_system_name}</a></td>
             
            <td>${etlSource1.source_system_desc}</td>
            <td>${etlSource1.source_name}</td>
            <td>${etlSource1.source_type}</td>
        </tr>
        
    </c:forEach>
  
    </table>
</c:if>
<br>        
         <input type="submit" value="delete">  
                    </form>
</center>
</body>
</html>