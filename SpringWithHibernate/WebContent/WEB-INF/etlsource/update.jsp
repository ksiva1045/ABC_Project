<!DOCTYPE html>
<html>
<head>
<style type="text/css">

#add-form{
margin-top: 40px;

margin-left: 450px;
margin-right: 450px;
height: 190px;
}

<style>
table, td {
    border: 1px solid black;
    border-collapse: collapse;
}
</style>

</style>


<meta charset="ISO-8859-1">
<title>Audit Page</title>

<script type="text/javascript" src="etlsource/jquery.js"></script>
<script type="text/javascript">


$(document).ready(function(){
	
	$('#cancel').click(function(){
		window.location.replace("/SpringWithHibernate/etlsource/selectall.jsp");
		
	});
	
	$('#cancel').click(function(){
		window.location.replace("selectall.html");
		
	});
		
});

function myFunction() {
    document.getElementById("name1").disabled = false;
    document.getElementById("name2").disabled = false;
    document.getElementById("name3").disabled = false;
    document.getElementById("name4").disabled = false;
}
</script>
</head>
<body  bgcolor="#F0FFF0">
<form action="test.html" method="get">
<div>
<center>
<input type="submit" value="testConnection" id="test">
</center>
</div>
</form>
  
 
      
      
   <center> 
   
   <!-- 
        <div id="add-form">    
  <form role="form" action="update.html" method="post">

<table border="2px" cellspacing="4px" cellpadding="2" >

<tr >
<td><b>Enter Source System Name</b> </td>
<td><input id="name1"  name="source_system_name" value="${etlSource.source_system_name}" disabled></td>
</tr>
<tr>
<td><b>Enter Source System description</b></td>

<td><input id="name2"  name="source_system_name" value="${etlSource.source_system_desc}" disabled></td> 
</tr>
<tr>
<td><b>Enter Source Name</b></td>

<td><input id="name3" name="source_system_name" value="${etlSource.source_name}" disabled></td>
</tr>
<tr>
<td><b>Enter Source Type</b></td>
<td>
<input id="name4"  name="source_system_name" value="${etlSource.source_type}" disabled></td> <br>
</tr> 
</table>

<input type="submit" value="update">
</form>
 </div>
 -->

 
 
  <!-- <form role="form" action="selectid.html?id=${etlSource.source_system_id}" method="post">
  <table border="">
  <tr><b>Enter Source System description</b></tr>
  <tr><p>${etlSource.source_system_desc}</p></tr>
  <tr><b>Enter Source Name</b></tr>
  <tr><p>${etlSource.source_name}</p></tr>
  <tr><b>Enter Source Type</b></tr>
  <tr><p>${etlSource.source_type}</p></tr>
   </table>
   
   <input type="submit" value="submit">
   </form>
-->

        <div id="add-form">    
        <center>
  <form role="form" action="selectid.html?id=${etlSource.source_system_id}" method="post">

<table border="2px" cellspacing="4px" cellpadding="4" >
<tr><td width="100px"><b>Source System description</b></td>
<td><p>${etlSource.source_system_desc}</p></td></tr>
<tr><td><b>Source Name</b></td>
<td><p>${etlSource.source_name}</p></td></tr>
<tr><td><b>Source Type</b></td>
	<td><p>${etlSource.source_type}</p></td></tr>
</table>
<br>
<input type="submit" value="update">
</form>
</center>
</center>
</body>
</html>