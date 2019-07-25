<%@ include file="../includes/includes.jsp" %>
<!DOCTYPE html>
<html lang="en">
	<head>
		<title>Flight display</title>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/css/bootstrap-3.3.6/dist/css/bootstrap.min.css">
		<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/css/bootstrap-datetimepicker.min.css">
		<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/css/font-awesome.min.css">

		<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/css/dataTables.bootstrap.min.css">

		<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/css/bootstrap-3.3.6/dist/css/bootstrap-theme.min.css">
		<link href="<%=request.getContextPath()%>/resources/css/global.css" type="text/css" rel="stylesheet">
		<script src="<%=request.getContextPath()%>/resources/js/jquery.min.js"></script>
		<script src="<%=request.getContextPath()%>/resources/js/datepicker.js"></script>
		<script src="<%=request.getContextPath()%>/resources/js/bootstrap.min.js"></script>

		<script src="<%=request.getContextPath()%>/resources/js/jquery-3.3.1.js"></script>
		<script src="<%=request.getContextPath()%>/resources/js/jquery.dataTables.min.js"></script>
		<script src="<%=request.getContextPath()%>/resources/js/dataTables.bootstrap.min.js"></script>
	</head>
	<style>
		a{color: grey;}
		h3{font-weight: bolder; padding: -5px 10px;}
		h1{width: 100%; text-align: center; color: #2699FB;}
		
		table {
		    overflow: hidden; margin-top: 5vh; text-align: center;
		}
		
		td.col{
			background: #D6ECFF;
					
		}

		.dataTables_length, .dataTables_filter{display: none!important;}

		div.dataTables_paginate{text-align: left!important; margin-top: 20px!important;}
		div.dataTables_info{text-align: right!important; margin-top: 20px!important;}

		th{background-color: #2699FB; color: #fff; text-align: center;}

		.nav-pills > .active > a, .nav-pills > .active > a:hover {
    			background-color: #2699FB !important;
		}

		.pagination>.active>a{ background-color: #2699fb!important; border-color: #2699fb!important;}

	</style>
	<body class="bg">
		<div align="center" class="container-fluid" style="background: rgba(255,255,255,0.85); height: 100vh;">
			<div class="row" style="margin-top: 2vh;">
				<div class="col-md-4 col-sm-4 col-xs-12"></div>
				<div class="col-md-4 col-sm-4 col-xs-12"><h1>Airport Flight Schedule</h1></div>
				<div style="text-align: center; padding: 30px 50px;" class="col-md-4 col-sm-4 col-xs-12">
					<c:url value="/login" var="login" />
					<a href="${login}" >login</a>
				</div>
			</div>

		<ul class="nav nav-pills nav-justified" style="border:0; margin-top: 2vh; width: 70%;">
			<li class="active"><a href="#arrivals" class="tb" data-toggle="tab"><h3>Arrivals</h3></a></li>
			<li style="text-align: center; padding: 0px 35px; "><select style="border: 1px solid #D3E8EB;" class="form-control"><option class="active">BAMENDA</option><option>DOUALA</option><option>YAOUNDE</option><option>BAFOUSSAM</option></select></li>
			<li><a href="#departures" class="tb" data-toggle="tab"><h3>Departures</h3></a></li>		
		</ul>
		<!--TABS-->
		<div class="tab-content">
		
		<!--First TAB-->
			<div align="center" class="tab-pane fade in active" id="arrivals" style="width: 100%;">
			<div class="row" style="margin-top: 3vh;">
				<div class="col-md-6 col-sm-6 col-xs-12"><a href="#">Show all arrivals</a></div>

					<!--Date picker-->				
					<div class="col-md-6 col-sm-6 col-xs-12">
					
							Filter by date: 


					
					
					
							
					

				       </div>
					<!--End datepicker-->
			</div>
				<table id="dtBasicExample" class="table table-striped table-bordered table-sm" style="width: 70%;">
				  <thead>
				    <tr>
				      <th scope="col">TIME</th>
				      <th scope="col">FLIGHT</th>
				      <th scope="col">FROM</th>
				      <th scope="col">AIRLINE</th>
				      <th scope="col">AIRCRAFT</th>
				      <th scope="col">NB STOPS</th>
				      <th scope="col">STATUS</th>
				    </tr>
				  </thead>
				  <tbody>
				    <tr>
				      <td scope="row">1</td>
				      <td class="col">Mark</td>
				      <td>Otto</td>
				      <td class="col">@mdo</td>
				      <td>Mark</td>
				      <td class="col">Otto</td>
				      <td>@mdo</td>
				    </tr>
				    <tr>
				      <td scope="row">2</td>
				      <td class="col">Jacob</td>
				      <td>Thornton</td>
				      <td class="col">@fat</td>
				      <td>Mark</td>
				      <td class="col">Otto</td>
				      <td>@mdo</td>
				    </tr>
				    <tr>
				      <td scope="row">3</td>
				      <td class="col">Larry</td>
				      <td>the Bird</td>
				      <td class="col">@twitter</td>
				      <td>Mark</td>
				      <td class="col">Otto</td>
				      <td>@mdo</td>
				    </tr>
				    <tr>
				      <td scope="row">4</td>
				      <td class="col">Larry</td>
				      <td>the Bird</td>
				      <td class="col">@twitter</td>
				      <td>Mark</td>
				      <td class="col">Otto</td>
				      <td>@mdo</td>
				    </tr>
				    <tr>
				      <td scope="row">5</td>
				      <td class="col">Larry</td>
				      <td>the Bird</td>
				      <td class="col">@twitter</td>
				      <td>Mark</td>
				      <td class="col">Otto</td>
				      <td>@mdo</td>
				    </tr>
				    <tr>
				      <td scope="row">6</td>
				      <td class="col">Larry</td>
				      <td>the Bird</td>
				      <td class="col">@twitter</td>
				      <td>Mark</td>
				      <td class="col">Otto</td>
				      <td>@mdo</td>
				    </tr>

				    <tr>
				      <td scope="row">7</td>
				      <td class="col">Larry</td>
				      <td>the Bird</td>
				      <td class="col">@twitter</td>
				      <td>Mark</td>
				      <td class="col">Otto</td>
				      <td>@mdo</td>
				    </tr>
					<tr>
						<td scope="row">6</td>
						<td class="col">Larry</td>
						<td>the Bird</td>
						<td class="col">@twitter</td>
						<td>Mark</td>
						<td class="col">Otto</td>
						<td>@mdo</td>
					</tr>

					<tr>
						<td scope="row">7</td>
						<td class="col">Larry</td>
						<td>the Bird</td>
						<td class="col">@twitter</td>
						<td>Mark</td>
						<td class="col">Otto</td>
						<td>@mdo</td>
					</tr>
					<tr>
						<td scope="row">6</td>
						<td class="col">Larry</td>
						<td>the Bird</td>
						<td class="col">@twitter</td>
						<td>Mark</td>
						<td class="col">Otto</td>
						<td>@mdo</td>
					</tr>

					<tr>
						<td scope="row">7</td>
						<td class="col">Larry</td>
						<td>the Bird</td>
						<td class="col">@twitter</td>
						<td>Mark</td>
						<td class="col">Otto</td>
						<td>@mdo</td>
					</tr>
					<tr>
						<td scope="row">6</td>
						<td class="col">Larry</td>
						<td>the Bird</td>
						<td class="col">@twitter</td>
						<td>Mark</td>
						<td class="col">Otto</td>
						<td>@mdo</td>
					</tr>

					<tr>
						<td scope="row">7</td>
						<td class="col">Larry</td>
						<td>the Bird</td>
						<td class="col">@twitter</td>
						<td>Mark</td>
						<td class="col">Otto</td>
						<td>@mdo</td>
					</tr>
					<tr>
						<td scope="row">6</td>
						<td class="col">Larry</td>
						<td>the Bird</td>
						<td class="col">@twitter</td>
						<td>Mark</td>
						<td class="col">Otto</td>
						<td>@mdo</td>
					</tr>

					<tr>
						<td scope="row">7</td>
						<td class="col">Larry</td>
						<td>the Bird</td>
						<td class="col">@twitter</td>
						<td>Mark</td>
						<td class="col">Otto</td>
						<td>@mdo</td>
					</tr>
					<tr>
						<td scope="row">6</td>
						<td class="col">Larry</td>
						<td>the Bird</td>
						<td class="col">@twitter</td>
						<td>Mark</td>
						<td class="col">Otto</td>
						<td>@mdo</td>
					</tr>

					<tr>
						<td scope="row">7</td>
						<td class="col">Larry</td>
						<td>the Bird</td>
						<td class="col">@twitter</td>
						<td>Mark</td>
						<td class="col">Otto</td>
						<td>@mdo</td>
					</tr>
					<tr>
						<td scope="row">6</td>
						<td class="col">Larry</td>
						<td>the Bird</td>
						<td class="col">@twitter</td>
						<td>Mark</td>
						<td class="col">Otto</td>
						<td>@mdo</td>
					</tr>

					<tr>
						<td scope="row">7</td>
						<td class="col">Larry</td>
						<td>the Bird</td>
						<td class="col">@twitter</td>
						<td>Mark</td>
						<td class="col">Otto</td>
						<td>@mdo</td>
					</tr>
					<tr>
						<td scope="row">6</td>
						<td class="col">Larry</td>
						<td>the Bird</td>
						<td class="col">@twitter</td>
						<td>Mark</td>
						<td class="col">Otto</td>
						<td>@mdo</td>
					</tr>

					<tr>
						<td scope="row">7</td>
						<td class="col">Larry</td>
						<td>the Bird</td>
						<td class="col">@twitter</td>
						<td>Mark</td>
						<td class="col">Otto</td>
						<td>@mdo</td>
					</tr>
					<tr>
						<td scope="row">6</td>
						<td class="col">Larry</td>
						<td>the Bird</td>
						<td class="col">@twitter</td>
						<td>Mark</td>
						<td class="col">Otto</td>
						<td>@mdo</td>
					</tr>

					<tr>
						<td scope="row">7</td>
						<td class="col">Larry</td>
						<td>the Bird</td>
						<td class="col">@twitter</td>
						<td>Mark</td>
						<td class="col">Otto</td>
						<td>@mdo</td>
					</tr>
					<tr>
						<td scope="row">6</td>
						<td class="col">Larry</td>
						<td>the Bird</td>
						<td class="col">@twitter</td>
						<td>Mark</td>
						<td class="col">Otto</td>
						<td>@mdo</td>
					</tr>

					<tr>
						<td scope="row">7</td>
						<td class="col">Larry</td>
						<td>the Bird</td>
						<td class="col">@twitter</td>
						<td>Mark</td>
						<td class="col">Otto</td>
						<td>@mdo</td>
					</tr>
					<tr>
						<td scope="row">6</td>
						<td class="col">Larry</td>
						<td>the Bird</td>
						<td class="col">@twitter</td>
						<td>Mark</td>
						<td class="col">Otto</td>
						<td>@mdo</td>
					</tr>

					<tr>
						<td scope="row">7</td>
						<td class="col">Larry</td>
						<td>the Bird</td>
						<td class="col">@twitter</td>
						<td>Mark</td>
						<td class="col">Otto</td>
						<td>@mdo</td>
					</tr>
					<tr>
						<td scope="row">6</td>
						<td class="col">Larry</td>
						<td>the Bird</td>
						<td class="col">@twitter</td>
						<td>Mark</td>
						<td class="col">Otto</td>
						<td>@mdo</td>
					</tr>

					<tr>
						<td scope="row">7</td>
						<td class="col">Larry</td>
						<td>the Bird</td>
						<td class="col">@twitter</td>
						<td>Mark</td>
						<td class="col">Otto</td>
						<td>@mdo</td>
					</tr>
					<tr>
						<td scope="row">6</td>
						<td class="col">Larry</td>
						<td>the Bird</td>
						<td class="col">@twitter</td>
						<td>Mark</td>
						<td class="col">Otto</td>
						<td>@mdo</td>
					</tr>

					<tr>
						<td scope="row">7</td>
						<td class="col">Larry</td>
						<td>the Bird</td>
						<td class="col">@twitter</td>
						<td>Mark</td>
						<td class="col">Otto</td>
						<td>@mdo</td>
					</tr>
					<tr>
						<td scope="row">6</td>
						<td class="col">Larry</td>
						<td>the Bird</td>
						<td class="col">@twitter</td>
						<td>Mark</td>
						<td class="col">Otto</td>
						<td>@mdo</td>
					</tr>

					<tr>
						<td scope="row">7</td>
						<td class="col">Larry</td>
						<td>the Bird</td>
						<td class="col">@twitter</td>
						<td>Mark</td>
						<td class="col">Otto</td>
						<td>@mdo</td>
					</tr>
					<tr>
						<td scope="row">6</td>
						<td class="col">Larry</td>
						<td>the Bird</td>
						<td class="col">@twitter</td>
						<td>Mark</td>
						<td class="col">Otto</td>
						<td>@mdo</td>
					</tr>

					<tr>
						<td scope="row">7</td>
						<td class="col">Larry</td>
						<td>the Bird</td>
						<td class="col">@twitter</td>
						<td>Mark</td>
						<td class="col">Otto</td>
						<td>@mdo</td>
					</tr>
				    
				  </tbody>
				</table>
			</div>
		<!--End first TAB-->

		<!--Second TAB-->
			<div class="tab-pane fade" id="departures">


			<div class="row" style="margin-top: 3vh;">
				<div class="col-md-6 col-sm-6 col-xs-12"><a href="#">Show all departures</a></div>

					<!--Date picker-->				
					<div class="col-md-6 col-sm-6 col-xs-12">
					
							Filter by date: 


					
					
					
							
					

				       </div>
					<!--End datepicker-->
			</div>


				<table id="dtExample" class="table table-striped table-bordered table-sm" style="width: 70%;">
				  <thead>
				    <tr>
				      <th scope="col">TIME</th>
				      <th scope="col">FLIGHT</th>
				      <th scope="col">TO</th>
				      <th scope="col">AIRLINE</th>
				      <th scope="col">AIRCRAFT</th>
				      <th scope="col">NB STOPS</th>
				      <th scope="col">STATUS</th>
				    </tr>
				  </thead>
				  <tbody>
				    <tr>
				      <td scope="row">1</td>
				      <td class="col">Mark</td>
				      <td>Otto</td>
				      <td class="col">@mdo</td>
				      <td>Mark</td>
				      <td class="col">Otto</td>
				      <td>@mdo</td>
				    </tr>
				    <tr>
				      <td scope="row">2</td>
				      <td class="col">Jacob</td>
				      <td>Thornton</td>
				      <td class="col">@fat</td>
				      <td>Mark</td>
				      <td class="col">Otto</td>
				      <td>@mdo</td>
				    </tr>
				    <tr>
				      <td scope="row">3</td>
				      <td class="col">Larry</td>
				      <td>the Bird</td>
				      <td class="col">@twitter</td>
				      <td>Mark</td>
				      <td class="col">Otto</td>
				      <td>@mdo</td>
				    </tr>
				    <tr>
				      <td scope="row">4</td>
				      <td class="col">Larry</td>
				      <td>the Bird</td>
				      <td class="col">@twitter</td>
				      <td>Mark</td>
				      <td class="col">Otto</td>
				      <td>@mdo</td>
				    </tr>
				    <tr>
				      <td scope="row">5</td>
				      <td class="col">Larry</td>
				      <td>the Bird</td>
				      <td class="col">@twitter</td>
				      <td>Mark</td>
				      <td class="col">Otto</td>
				      <td>@mdo</td>
				    </tr>
				    <tr>
				      <td scope="row">6</td>
				      <td class="col">Larry</td>
				      <td>the Bird</td>
				      <td class="col">@twitter</td>
				      <td>Mark</td>
				      <td class="col">Otto</td>
				      <td>@mdo</td>
				    </tr>

				    <tr>
				      <td scope="row">7</td>
				      <td class="col">Larry</td>
				      <td>the Bird</td>
				      <td class="col">@twitter</td>
				      <td>Mark</td>
				      <td class="col">Otto</td>
				      <td>@mdo</td>
				    </tr>
					<tr>
						<td scope="row">7</td>
						<td class="col">Larry</td>
						<td>the Bird</td>
						<td class="col">@twitter</td>
						<td>Mark</td>
						<td class="col">Otto</td>
						<td>@mdo</td>
					</tr>
					<tr>
						<td scope="row">7</td>
						<td class="col">Larry</td>
						<td>the Bird</td>
						<td class="col">@twitter</td>
						<td>Mark</td>
						<td class="col">Otto</td>
						<td>@mdo</td>
					</tr>
					<tr>
						<td scope="row">7</td>
						<td class="col">Larry</td>
						<td>the Bird</td>
						<td class="col">@twitter</td>
						<td>Mark</td>
						<td class="col">Otto</td>
						<td>@mdo</td>
					</tr>
					<tr>
						<td scope="row">7</td>
						<td class="col">Larry</td>
						<td>the Bird</td>
						<td class="col">@twitter</td>
						<td>Mark</td>
						<td class="col">Otto</td>
						<td>@mdo</td>
					</tr>
					<tr>
						<td scope="row">7</td>
						<td class="col">Larry</td>
						<td>the Bird</td>
						<td class="col">@twitter</td>
						<td>Mark</td>
						<td class="col">Otto</td>
						<td>@mdo</td>
					</tr>
					<tr>
						<td scope="row">7</td>
						<td class="col">Larry</td>
						<td>the Bird</td>
						<td class="col">@twitter</td>
						<td>Mark</td>
						<td class="col">Otto</td>
						<td>@mdo</td>
					</tr>
					<tr>
						<td scope="row">7</td>
						<td class="col">Larry</td>
						<td>the Bird</td>
						<td class="col">@twitter</td>
						<td>Mark</td>
						<td class="col">Otto</td>
						<td>@mdo</td>
					</tr>
					<tr>
						<td scope="row">7</td>
						<td class="col">Larry</td>
						<td>the Bird</td>
						<td class="col">@twitter</td>
						<td>Mark</td>
						<td class="col">Otto</td>
						<td>@mdo</td>
					</tr>
					<tr>
						<td scope="row">7</td>
						<td class="col">Larry</td>
						<td>the Bird</td>
						<td class="col">@twitter</td>
						<td>Mark</td>
						<td class="col">Otto</td>
						<td>@mdo</td>
					</tr>
					<tr>
						<td scope="row">7</td>
						<td class="col">Larry</td>
						<td>the Bird</td>
						<td class="col">@twitter</td>
						<td>Mark</td>
						<td class="col">Otto</td>
						<td>@mdo</td>
					</tr>
					<tr>
						<td scope="row">7</td>
						<td class="col">Larry</td>
						<td>the Bird</td>
						<td class="col">@twitter</td>
						<td>Mark</td>
						<td class="col">Otto</td>
						<td>@mdo</td>
					</tr>
					<tr>
						<td scope="row">7</td>
						<td class="col">Larry</td>
						<td>the Bird</td>
						<td class="col">@twitter</td>
						<td>Mark</td>
						<td class="col">Otto</td>
						<td>@mdo</td>
					</tr>
					<tr>
						<td scope="row">7</td>
						<td class="col">Larry</td>
						<td>the Bird</td>
						<td class="col">@twitter</td>
						<td>Mark</td>
						<td class="col">Otto</td>
						<td>@mdo</td>
					</tr>
					<tr>
						<td scope="row">7</td>
						<td class="col">Larry</td>
						<td>the Bird</td>
						<td class="col">@twitter</td>
						<td>Mark</td>
						<td class="col">Otto</td>
						<td>@mdo</td>
					</tr>
					<tr>
						<td scope="row">7</td>
						<td class="col">Larry</td>
						<td>the Bird</td>
						<td class="col">@twitter</td>
						<td>Mark</td>
						<td class="col">Otto</td>
						<td>@mdo</td>
					</tr>
					<tr>
						<td scope="row">7</td>
						<td class="col">Larry</td>
						<td>the Bird</td>
						<td class="col">@twitter</td>
						<td>Mark</td>
						<td class="col">Otto</td>
						<td>@mdo</td>
					</tr>
					<tr>
						<td scope="row">7</td>
						<td class="col">Larry</td>
						<td>the Bird</td>
						<td class="col">@twitter</td>
						<td>Mark</td>
						<td class="col">Otto</td>
						<td>@mdo</td>
					</tr>
					<tr>
						<td scope="row">7</td>
						<td class="col">Larry</td>
						<td>the Bird</td>
						<td class="col">@twitter</td>
						<td>Mark</td>
						<td class="col">Otto</td>
						<td>@mdo</td>
					</tr>
					<tr>
						<td scope="row">7</td>
						<td class="col">Larry</td>
						<td>the Bird</td>
						<td class="col">@twitter</td>
						<td>Mark</td>
						<td class="col">Otto</td>
						<td>@mdo</td>
					</tr>
					<tr>
						<td scope="row">7</td>
						<td class="col">Larry</td>
						<td>the Bird</td>
						<td class="col">@twitter</td>
						<td>Mark</td>
						<td class="col">Otto</td>
						<td>@mdo</td>
					</tr>
					<tr>
						<td scope="row">7</td>
						<td class="col">Larry</td>
						<td>the Bird</td>
						<td class="col">@twitter</td>
						<td>Mark</td>
						<td class="col">Otto</td>
						<td>@mdo</td>
					</tr>
					<tr>
						<td scope="row">7</td>
						<td class="col">Larry</td>
						<td>the Bird</td>
						<td class="col">@twitter</td>
						<td>Mark</td>
						<td class="col">Otto</td>
						<td>@mdo</td>
					</tr>
					<tr>
						<td scope="row">7</td>
						<td class="col">Larry</td>
						<td>the Bird</td>
						<td class="col">@twitter</td>
						<td>Mark</td>
						<td class="col">Otto</td>
						<td>@mdo</td>
					</tr>

				    
				  </tbody>
				</table>
			</div>
		<!---->
		
		</div>
		</div>

<script type="text/javascript" src="<%=request.getContextPath()%>/resources/js/bootstrap-datepicker.min.js"></script>
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/bootstrap-datepicker3.css"/>

	<script>
		$(document).ready(function () {
			$('#dtBasicExample').DataTable({
				"pageLength": 6
			});
			$('#dtExample').DataTable({
				"pageLength": 6
			});
			$('.dataTables_length').addClass('bs-select');
		});
	</script>

	</body>
</html>
