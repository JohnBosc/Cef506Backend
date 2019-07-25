<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.Statement" %>
<%@ include file="../includes/includes.jsp" %>
<!DOCTYPE html>
<html lang="en">

<head>

  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <%@ include file="../ico.jsp" %>

  <title>Flight Schedule - Add new flight</title>

  <!-- Custom fonts for this template -->
  <link href="<%=request.getContextPath()%>/resources/dashboard/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
  <link href="<%=request.getContextPath()%>/resources/dashboard/css.css" rel="stylesheet">
  <link href="<%=request.getContextPath()%>/resources/css/global.css" type="text/css" rel="stylesheet">

  <link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/bootstrap-timepicker.min.css" />
  <script type="text/javascript" src="<%=request.getContextPath()%>/resources/js/bootstrap-timepicker.js"></script>

  <!-- Custom styles for this template -->
  <link href="<%=request.getContextPath()%>/resources/dashboard/css/sb-admin-2.min.css" rel="stylesheet">

  <script src="<%=request.getContextPath()%>/resources/js/jquery.min.js"></script>
  <script src="<%=request.getContextPath()%>/resources/js/datepicker.js"></script>
  <script src="<%=request.getContextPath()%>/resources/js/bootstrap-datetimepicker.min.js"></script>

  <!-- Custom styles for this page -->
  <link href="<%=request.getContextPath()%>/resources/dashboard/vendor/datatables/dataTables.bootstrap4.min.css" rel="stylesheet">

</head>

<style>

  div.dataTables_length, div.dataTables_filter{
    display: none!important;}

  div.dataTables_info{text-align: right!important; width: 30%!important;}

  ul.pagination{text-align: left!important; width: 40%!important;}

</style>

<body id="page-top">

  <!-- Page Wrapper -->
  <div id="wrapper">

    <!-- Sidebar-->
    <%@ include file="../menu_left/leftMenu.jsp" %>
    <!-- End of Sidebar -->

    <!-- Content Wrapper -->
    <div id="content-wrapper" class="d-flex flex-column">

      <!-- Main Content -->
      <div id="content">

        <!-- Topbar -->
          <%@ include file="../menu_top/topMenu.jsp" %>
        <!-- End of Topbar -->

        <!-- Begin Page Content -->
        <div class="container-fluid" align="center">

          <!-- Page Heading -->
          <h1 class="h3 mb-2 text-gray-800">Flights</h1>

          <div class="row">
            <div class="col-lg-12" style="color: #FFFFFF;">
              <nav aria-label="breadcrumb" class="bcr">
                <ol class="breadcrumb">
                  <li class="breadcrumb-item"><a href="#"><i class="fa fa-plus">&nbsp;Add</i></a></li>
                  <li class="breadcrumb-item"><span style="font-weight: lighter; font-style: italic">Add new flight</span></li>
                </ol>
              </nav>
            </div>
          </div>


          <style>
            .form-group{margin:0!important;}
            label{margin-bottom: 0!important; margin-top: 10px!important;}
          </style>

          <!-- Form airport -->
          <div class="panel-body form-add">
<%--            <c:url value="/flight/save" var="urlSaveFlight"/>--%>
            <f:form action="/flight/save" modelAttribute="flight" method="post">
              <f:hidden path="flight_id"/> <!-- System must not duplicate the entries after update -->


              <div class="form-group">
                <label for="flightNumber">Flight Number</label>
                <f:input path="flight_code" class="form-control form-fixer" id="flightNumber" placeholder="Code number of the flight"/>
              </div>


              <div class="form-group">
                <label for="flightTime">Flight Time</label>
                <div class="form-group">
                  <div class='input-group date' id='datetimepicker3'>
                    <f:input path="flight_time" id="flightTime" type="time" class="form-control form-fixer" />
                    <span class="input-group-addon">
                      <span class="glyphicon glyphicon-time"></span>
                    </span>
                  </div>
                </div>

                <script type="text/javascript">
                  $(function () {
                    $('#datetimepicker3').datetimepicker({
                      format: 'LT'
                    });
                  });
                </script>
              </div>


              <div class="form-group">
                <label for="flightStatus">Flight Status</label>
                <f:select path="flight_status" class="form-control form-control-sm" id="flightStatus">
                  <f:option value="CANCEL">CANCELLED</f:option>
                  <f:option value="ONGOING">ONGOING</f:option>
                  <f:option value="BOARDING">BOARDING</f:option>
                </f:select>
              </div>
              <!-- Date picker js and css-->
              <style>
                label.datelabel{margin-left: 20px;}
                #datepicker{width:80%; margin: 0 20px 20px 20px;}
                #datepicker > span:hover{cursor: pointer;}
              </style>
              <script>
                $(function () {
                  $("#datepicker").datepicker({
                    autoclose: true,
                    todayHighlight: true
                  }).datepicker('update', new Date());
                });
              </script>
              <!---->

              <div class="form-group">
                <label class="datelabel">Flight Date: </label>
                <div id="datepicker" class="input-group date" data-date-format="mm-dd-yyyy">
                  <f:input path="date" class="form-control form-fixer"/>
                  <span class="input-group-addon"><i class="glyphicon glyphicon-calendar"></i></span>
                </div>
              </div>

              <div class="form-group">
                <label>Aircraft</label>
                <f:select id="aircraft" path="aircraft.aircraft_id" items="${aircrafts}" itemLabel="aircraft_code" itemValue="aircraft_id" class="form-control form-control-sm"/>
              </div>




              <div class="panel-footer" style="margin-top: 10px;">
                <a href="<c:url value="/flight/"/>" class="btn btn-secondary" data-dismiss="modal"><i class="fas fa-fw fa-arrow-left"></i>&nbsp;Cancel</a>
                <button type="submit" class="btn btn-primary"><i class="fas fa-fw fa-save"></i>&nbsp;Save</button>
              </div>
            </f:form>
          </div>


        </div>
        <!-- /.container-fluid -->

      </div>
      <!-- End of Main Content -->

      <!-- Footer -->

      <!-- End of Footer -->

    </div>
    <!-- End of Content Wrapper -->

  </div>
  <!-- End of Page Wrapper -->

  <!-- Scroll to Top Button-->
  <a class="scroll-to-top rounded" href="#page-top">
    <i class="fas fa-angle-up"></i>
  </a>

  <!-- Logout Modal-->
  <div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
          <button class="close" type="button" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">×</span>
          </button>
        </div>
        <div class="modal-body">Select "Logout" below if you are ready to end your current session.</div>
        <div class="modal-footer">
          <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
          <a class="btn btn-primary" href="login.html">Logout</a>
        </div>
      </div>
    </div>
  </div>

  <!-- Bootstrap core JavaScript-->
  <script src="<%=request.getContextPath()%>/resources/dashboard/vendor/jquery/jquery.min.js"></script>
  <script src="<%=request.getContextPath()%>/resources/dashboard/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

  <!-- Core plugin JavaScript-->
  <script src="<%=request.getContextPath()%>/resources/dashboard/vendor/jquery-easing/jquery.easing.min.js"></script>

  <!-- Custom scripts for all pages-->
  <script src="<%=request.getContextPath()%>/resources/dashboard/js/sb-admin-2.min.js"></script>

  <!-- Page level plugins -->
  <script src="<%=request.getContextPath()%>/resources/dashboard/vendor/datatables/jquery.dataTables.min.js"></script>
  <script src="<%=request.getContextPath()%>/resources/dashboard/vendor/datatables/dataTables.bootstrap4.min.js"></script>

  <!-- Page level custom scripts -->
  <script src="<%=request.getContextPath()%>/resources/dashboard/js/demo/datatables-demo.js"></script>

  <script type="text/javascript" src="<%=request.getContextPath()%>/resources/js/bootstrap-datepicker.min.js"></script>
  <link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/bootstrap-datepicker3.css"/>

</body>

</html>
