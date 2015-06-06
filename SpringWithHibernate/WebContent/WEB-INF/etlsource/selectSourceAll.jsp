<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ page session="false" %>
    <%@ page import="com.bean.SelectAllBean"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<c:if test="${!empty etlAuditSelectAll}">
    <table class="tg" border="2px">
    <h2><tr colspan="5"><b>COMBINED OUTPUT</b></tr></h2>
    <tr bgcolor="#E0FFFF">
       <th></th>
        <th>SOURCE SYSTEMID</th>
        <th>JOBNAME</th>
        <th>LOADSTATUSFLAG</th>
        <th>ETLLOADKEY</th>   
        <th>EXTRACTIONDATEANDTIME</th>
        <th>SESSION NAME</th>
                <th>LOAD START DATETIME</th>
                <th>LOAD STOP DATETIME</th>
                <th>NO OF EXTRACTION RECORDS</th>
                <th>NO OF RETURN RECORDS</th>
        </tr>
  
    <c:forEach items="${etlAuditSelectAll}" var="etlAuditAll">
        <tr>
            <td><input type="checkbox" name="checkval" id="ck" value="${etlAuditAll.sourceLoadkey}"/></td>
            <td><a href="selectbyid.html?id=${etlAuditAll.sourceSystemId}">${etlAuditAll.sourceSystemId}</a></td>
            <td>${etlAuditAll.jobName}</td>
            <td>${etlAuditAll.loadStatusFlag}</td>
            <td>${etlAuditAll.etlLoadKey}</td>
            <td>${etlAuditAll.extractionDateTime}</td>
            <td>${etlAuditAll.sessionName}</td>
            <td>${etlAuditAll.loadStartDateTime}</td>
            <td>${etlAuditAll.loadStopDateTime}</td>
            <td>${etlAuditAll.noOfExtractionRecords}</td>
            <td>${etlAuditAll.noOfReturnRecords}</td>
        </tr>
        
    </c:forEach>
    
    </table>
</c:if>
 
</body>
</html>