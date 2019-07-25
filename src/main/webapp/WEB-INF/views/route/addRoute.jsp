<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.ResultSet" %>
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

  <title>Flight Schedule - Add new route</title>

  <!-- Custom fonts for this template -->
  <link href="<%=request.getContextPath()%>/resources/dashboard/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
  <link href="<%=request.getContextPath()%>/resources/dashboard/css.css" rel="stylesheet">
  <link href="<%=request.getContextPath()%>/resources/css/global.css" type="text/css" rel="stylesheet">

  <!-- Custom styles for this template -->
  <link href="<%=request.getContextPath()%>/resources/dashboard/css/sb-admin-2.min.css" rel="stylesheet">

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
          <h1 class="h3 mb-2 text-gray-800">Routes</h1>
          <div class="row">
            <div class="col-lg-12" style="color: #FFFFFF;">
              <nav aria-label="breadcrumb" class="bcr">
                <ol class="breadcrumb">
                  <li class="breadcrumb-item"><a href="#"><i class="fa fa-plus">&nbsp;Add</i></a></li>
                  <li class="breadcrumb-item"><span style="font-weight: lighter; font-style: italic">Add new route</span></li>
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
<%--            <c:url value="/route/save" var="urlSaveRoute"/>--%>
            <f:form action="/route/save" modelAttribute="route" method="post">
              <f:hidden path="route_id"/> <!-- System must not duplicate the entries after update -->

              <div class="form-group">
                <label>Airline IATA</label>
                <f:select path="airline.airline_id" items="${airlines}" itemLabel="iata" itemValue="airline_id" class="form-control form-control-sm"/>
              </div>
              <div class="form-group">
                <label>Src IATA</label>
                <f:select path="airports" items="${airports}" itemLabel="iata" itemValue="airport_id" class="form-control form-control-sm"/>
              </div>
              <div class="form-group">
                <label>Dst IATA</label>
                <f:select path="airports" items="${airports}" itemLabel="iata" itemValue="airport_id" class="form-control form-control-sm"/>
              </div>
              <div class="form-group">
                <label for="routeStops">Stops</label>
                <f:input path="stops" class="form-control" type="number" id="routeStops" placeholder="Number of stops on this flight ('0' for direct)"/>
              </div>
              <div class="panel-footer" style="margin-top: 10px;">
                <a href="<c:url value="/route/"/>" class="btn btn-secondary" data-dismiss="modal"><i class="fas fa-fw fa-arrow-left"></i>&nbsp;Cancel</a>
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

</body>

</html>
