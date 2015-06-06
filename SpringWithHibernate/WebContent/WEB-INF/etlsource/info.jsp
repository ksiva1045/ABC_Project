<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <title>Obtained info</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />

    <link rel="stylesheet" type="text/css" href="bootstrap/css/bootstrap.min.css" />
    <link rel="stylesheet" type="text/css" href="font-awesome/css/font-awesome.min.css" />

    <script type="text/javascript" src="js/jquery-1.10.2.min.js"></script>
    <script type="text/javascript" src="bootstrap/js/bootstrap.min.js"></script>
</head>
<body>

<div class="container">

<div class="page-header">
   <h4><center></center></h4>
</div>

<!-- Registration Form - START -->
 <div class="container" id="container1">
        <div class="row centered-form">
            <div class="col-xs-12 col-sm-8 col-md-4 col-sm-offset-2 col-md-offset-4">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h3 class="panel-title text-center">Please Update Details </h3>
                    </div>
                    <div class="panel-body">
                        <form role="form" action="update.html" method="post">
                            <div class="form-group">
                                <input type="text" name="source_system_name" class="form-control input-sm" placeholder="Source-System Name" value="${etlSource.source_system_name}">
                            </div>

                            <div class="form-group">
                        
                                <input type="text" name="source_system_desc" class="form-control input-sm" placeholder="Source-System Description" value="${etlSource.source_system_desc}">
                            </div>

                            <div class="form-group">
                                <input type="text" name="source_name" class="form-control input-sm" placeholder="Source Name" value="${etlSource.source_name}">
                            </div>
							
                            <div class="form-group">
                                <input type="text" name="source_type" class="form-control input-sm" placeholder="Source Type" value="${etlSource.source_type}">
                            </div>
						
							<div class="row">
                                <div class="col-xs-6 col-sm-6 col-md-6">
                                    <div class="form-group">                                    
                            <input type="submit" value="Insert" class="btn btn-info btn-block">
                           </div>
                                </div>
                                <div class="col-xs-6 col-sm-6 col-md-6">
                                    <div class="form-group">
                                      <input type="button" value="Cancel" class="btn btn-info btn-block">
							 </div>
                                </div>
                            </div>

                        </form>
                    </div>
                     <div class="panel-body">
                        <form role="form" action="selectall.html" method="post">
                        <input type="submit" value="SelectAll">  
                    </form>
                    </div>
                </div>
            </div>
        </div>
    </div>

<style>
#container1 {
    background-color: #e2dada;
}

.centered-form {
    margin-top: 120px;
    margin-bottom: 120px;
}

.centered-form .panel {
    background: rgba(255, 255, 255, 0.8);
    box-shadow: rgba(0, 0, 0, 0.3) 20px 20px 20px;
}
</style>
<!-- Registration Form - END -->

</div>

</body>
</html>