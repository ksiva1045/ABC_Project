<!DOCTYPE html>
<html>
<head>
<title>Audit Page</title>
	<meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7; IE=EmulateIE9">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1.0, user-scalable=no"/>
    <link rel="stylesheet" type="text/css" href="style.css" media="all" />
    <link rel="stylesheet" type="text/css" href="demo.css" media="all" />
</head>
<body>
<div class="container">
	<!--/ freshdesignweb top bar -->
			<header>
				<h1> Enter Details to Insert</h1>
            </header>       
      <div  class="form" >
                   <form role="form" action="add.html" method="post">
    		
    		
    			 
    			<p class="contact"><label for="name">Source System Id</label></p> 
    			<input id="name" name="source_system_id" placeholder="Enter Source System Id" required="" type="text"> 
    			
    			
    			<p class="contact"><label for="name">Source System Name</label></p> 
    			<input id="name" name="source_system_name" placeholder="Enter Source System Name" required="" type="text"> 
                
                
                
                <p class="contact"><label for="name">Source System description</label></p> 
    			<input id="name" name="source_system_desc" placeholder="Enter Source System description" required="" type="text"> 
                
                
                
                <p class="contact"><label for="name">Source Name</label></p> 
    			<input id="date" name="source_name" placeholder="Enter Source Name" required="" type="text"> 
                
                
                
                <p class="contact"><label for="name">Source Type</label></p> 
    			<input id="name" name="source_type" placeholder="Enter Source Type" required="" type="text"> <br><br>
    			
    			
              
            <input class="buttom" name="submit" id="Add" tabindex="5" value="Submit" type="submit"> 
            <input class="buttom" name="submit" id="cancel" value="Cancel" type="button">  	 	 
   </form> 
</div>  
    
<% session.setAttribute("username",session.getAttribute("username")); %>
<script type="text/javascript" src="jquery.js"></script>

<script type="text/javascript">


$(document).ready(function(){
	
	$('#cancel').click(function(){
		window.location.replace("/SpringWithHibernate/insert.jsp");
		
	});
		
});

</script>


</div>
</body>
</html>
