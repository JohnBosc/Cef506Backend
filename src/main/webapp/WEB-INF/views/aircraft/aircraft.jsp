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
  <title>Flight Schedule - Aircrafts</title>

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
          <h1 class="h3 mb-2 text-gray-800">Aircrafts</h1>

          <div class="row">
            <div class="col-lg-12" style="color: #FFFFFF;">
              <nav aria-label="breadcrumb" class="bcr">
                <ol class="breadcrumb">
                  <li class="breadcrumb-item"><a href="<c:url value="/aircraft/new"/>"><i class="fa fa-plus">&nbsp;Add</i></a></li>
                  <li class="breadcrumb-item"><a href="#"><i class="fa fa-download">&nbsp;Export</i></a></li>
                  <li class="breadcrumb-item active" aria-current="page"><a href="#"><i class="fa fa-upload">&nbsp;import</i></a></li>
                </ol>
              </nav>
            </div>
          </div>

          <!-- DataTales Example -->
          <div class="card shadow mb-4" style="width: 80%; font-size: 13px">
            <div class="card-body">
              <div class="table-responsive">
                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                  <thead>
                        <tr>
                          <th>Code</th>
                          <th>Airline</th>
                          <th>Action</th>
                        </tr>
                  </thead>
                  <tbody>
<c:forEach items="${aircrafts}" var="aircraft">
                        <tr>


                          <td>${aircraft.getAircraft_code()}</td>
                          <td>${aircraft.getAirline().getAlias()}</td>
                          <td>
                            <c:url value="/aircraft/update/${aircraft.getAircraft_id()}" var="urlUpdate"/>
                            <a href="${urlUpdate}"><i class="fas fa-fw fa-edit"></i></a>&nbsp;
                            |
                            <a href="javascript:void(0);" data-toggle="modal" data-target="#modalAircraft${aircraft.getAircraft_id()}"><i class="fas fa-fw fa-trash" style="color: #CC0000;"></i></a>
                            <!-- Modal starts here -->

                            <div class="modal fade" id="modalAircraft${aircraft.getAircraft_id()}" tabindex="-1" role="dialog" aria-labelledby="deleteModalLabel" aria-hidden="true">
                              <div class="modal-dialog" role="document">
                                <div class="modal-content">
                                  <div class="modal-header">
                                    <h5 class="modal-title" id="deleteModalLabel">Confirm deletion</h5>
                                    <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                                      <span aria-hidden="true"><i class="fas fa-fw fa-window-close"></i></span>
                                    </button>
                                  </div>
                                  <div class="modal-body">Please confirm your choice</div>
                                  <div class="modal-footer">
                                    <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
                                    <c:url value="/aircraft/remove/${aircraft.getAircraft_id()}" var="urlRemove"/>
                                    <a class="btn btn-danger" href="${urlRemove}"><i class="fas fa-fw fa-trash" style="color: #FFFFFF;"></i>&nbsp;Delete</a>
                                  </div>
                                </div>
                              </div>
                            </div>
                            <!-- End Modal -->
                          </td>



                        </tr>
</c:forEach>
                  </tbody>
                </table>
              </div>
            </div>
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
