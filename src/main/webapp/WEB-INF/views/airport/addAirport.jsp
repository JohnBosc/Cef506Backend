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

  <title>Flight Schedule - Add new airport</title>

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
          <h1 class="h3 mb-2 text-gray-800">Airports</h1>

          <div class="row">
            <div class="col-lg-12" style="color: #FFFFFF;">
              <nav aria-label="breadcrumb" class="bcr">
                <ol class="breadcrumb">
                  <li class="breadcrumb-item"><a href="#"><i class="fa fa-plus">&nbsp;Add</i></a></li>
                  <li class="breadcrumb-item"><span style="font-weight: lighter; font-style: italic">Add new airport</span></li>
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
            <c:url value="/airport/save" var="urlSaveAirport"/>
            <f:form action="${urlSaveAirport}" modelAttribute="airport" method="post">
              <f:hidden path="airport_id"/> <!-- System must not duplicate the entries after update -->
              <div class="form-group">
                <label for="airportName">Name</label>
                <f:input path="name" class="form-control form-fixer" id="airportName" placeholder="Name of airport"/>
              </div>
              <div class="form-group">
                <label for="airportCity">City</label>
                <f:input path="city" class="form-control form-fixer" id="airportCity" placeholder="Main city served by airport"/>
              </div>
              <div class="form-group">
                <label for="airportCountry">Country</label>
                <f:input path="country" class="form-control form-fixer" id="airportCountry" placeholder="Country where airport is located"/>
              </div>
              <div class="form-group">
                <label for="airportIata">Iata</label>
                <f:input path="iata" class="form-control form-fixer" id="airportIata" placeholder="3-letter IATA code"/>
              </div>
              <div class="form-group">
                <label for="airportIcao">Icao</label>
                <f:input path="icao" class="form-control form-fixer" id="airportIcao" placeholder="4-letter ICAO code"/>
              </div>
              <div class="col-auto">
                <div class="form-group">
                  <label for="airportTimezone">Timezone</label>
                  <div class="input-group mb-2 mr-sm-2">
                    <div class="input-group-prepend">
                      <div class="input-group-text form-gmt">GMT</div>
                    </div>
                    <f:input path="timezone" class="form-control form-fixer" id="airportTimezone" placeholder="example format + 1 or - 1"/>
                  </div>
                </div>
              </div>
              <div class="panel-footer">
                <a href="<c:url value="/airport/"/>" class="btn btn-secondary" data-dismiss="modal"><i class="fas fa-fw fa-arrow-left"></i>&nbsp;Cancel</a>
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
