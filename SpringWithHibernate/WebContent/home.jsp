<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<style>

#header{
background-color:lightgrey;
    color:yellow;
    text-align:center;
    clear:both;
    padding:0.1px;
}

#navigationdiv {
    
    color:white;
    text-align:center;
    border-color:red;
    border:2px;
	width:15%;
	height:650px;
	float:left;
}

#section {
    width:450px;
    height:510px;
    float:left;
    padding:10px;	 	 
}
#footer {
    background-color:#A9A9A9;
    color:white;
    clear:both;
    text-align:center;
   padding:0.3px;	 	 
}
#tabdiv{
margin-top: 2px;


}

#body{
margin-top: 2px;
}

#bt1,#bt2,#bt3,#bt4,#bt5,#bt6,#bt7,#bt8,#bt9,#bt10{
padding:3px;
width:140px;
}
</style>
<script>

	$(document).ready(function(){
		
	    $("#i1").click(function(){
	        $("i1").hide();
	        
	    });
	    $("#bt2").click(function(){
	        $("12").show();
	    });
	});

	
</script>

<body>
<!--  <iframe  id="header" width="100%" height="80"  scrolling="no">
<div id="header">
<h3>TECHSEA</h3>
</div></iframe>-->

<iframe src="header.jsp" id="header" width="100%" height="80" scrolling="no"></iframe>
<center>

<div id="tabdiv">
<button type="button" id="bt1">HOME</button>
<button type="button" id="bt2" onclick="bt2()">HOME1</button>
<button type="button" id="bt3" onclick="bt3()">HOME2</button>
<button type="button" id="bt4" onclick="bt4()">HOME3</button>
<button type="button" id="bt5" onclick="bt5()">HOME4</button>
<button type="button" id="bt6" onclick="bt6()">HOME5</button>
<button type="button" id="bt7" onclick="bt7()">HOME6</button>
<button type="button" id="bt8" onclick="bt8()">HOME7</button>
<button type="button" id="bt9" onclick="bt9()">HOME8</button>
</div>
</center>

<center>
<div id="body">
<iframe id ="content" width="100%" height="650" src="dummy.jsp">
</div>
</iframe>
</center>

<center>
<iframe id="header" width="100%" height="40" src="footer.jsp" scrolling="no"></iframe>
</center>

</body>
</html>
