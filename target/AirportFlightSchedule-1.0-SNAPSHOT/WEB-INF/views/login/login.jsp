<%@ include file="../includes/includes.jsp" %>
<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="utf-8">
		<title>login</title>		
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/css/bootstrap-3.3.6/dist/css/bootstrap.min.css">
		<link href="<%=request.getContextPath()%>/resources/css/global.css" type="text/css" rel="stylesheet">
		<script src="<%=request.getContextPath()%>/resources/https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
		<script src="<%=request.getContextPath()%>/resources/css/bootstrap-3.3.6/dist/js/bootstrap.min.js"></script>
	</head>
	<body class="">
		<div class="container-fluid bg">
			<div class="row">
				<div class="col-md-4 col-sm-4 col-xs-12"></div>
				<div class="col-md-4 col-sm-4 col-xs-12">
				<h2 class="title">Login</h2>
				<!--form start-->
					<form class="form-contain">
						<div style="width: 100%; text-align: center; ">
		<span class="glyphicon glyphicon-user" style="font-size: 50px; color:#2699fb"></span>
						</div>
  						<div class="form-group">
    						<label for="exampleInputEmail1">Admin</label>
    						<input type="text" class="form-control" id="exampleInputEmail1" autofocus="autofocus" aria-describedby="emailHelp" placeholder="">
  						</div>
  						<div class="form-group">
    						<label for="exampleInputPassword1">Password</label>
    						<input type="password" class="form-control" id="exampleInputPassword1" placeholder="">
  						</div>
						<br>
  						<button type="submit" class="btn btn-block" style="background:#2699FB; color: white;">LOG IN</button>
					</form>	
					
				<!--form end-->
				</div>
				<div class="col-md-4 col-sm-4 col-xs-12"></div>
			</div>
		</div>
	</body>
</html>
