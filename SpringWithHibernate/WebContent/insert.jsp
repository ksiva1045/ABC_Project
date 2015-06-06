<!DOCTYPE html>
<html>
<head>
<style type="text/css">

#add-form{
margin-top: 200px;
background: #E6E6FA;
margin-left: 450px;
margin-right: 450px;
height: 190px;
}
</style>
</head>

<body  bgcolor="#F0FFF0">

<script type="text/javascript" src="etlsource/jquery.js"></script>
<script type="text/javascript">

$(document).ready(function(){
	
	
	$('#cancel').click(function(){
		alert("ok");
		window.location.replace("selectall.html");
		
	});
		
});
</script>

<div id="add-form">                  
   <center>               
 <form role="form" action="add.html" method="post">

<table border="1px" cellspacing="3px" cellpadding="2" >

<tr >
<td><b>Enter Source System Name</b> </td>
<td><input id="name" name="source_system_name" /></td>
</tr>
<tr>
<td><b>Enter Source System description</b></td>

<td><input id="name" name="source_system_desc" /></td> 
</tr>
<tr>
<td><b>Enter Source Name</b></td>

<td><input id="name" name="source_name"></td>
</tr>
<tr>
<td><b>Enter Source Type</b></td>
<td>
<input id="name" name="source_type" /></td> <br>
</tr>
    <tr>
	<td colspan="2" align="center">
   <input  type="submit" value="Add Source System">
   <input type="button" id="cancel" value="cancel">
   </td>
   </tr>

</table>
</form>
  
</center>
</div>
</body>
</html>