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

  <title>Flight Schedule - Dashboard</title>

  <!-- Custom fonts for this template-->
  <link href="<%=request.getContextPath()%>/resources/dashboard/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
  <link href="<%=request.getContextPath()%>/resources/dashboard/css.css" rel="stylesheet">

  <!-- Custom styles for this template-->
  <link href="<%=request.getContextPath()%>/resources/dashboard/css/sb-admin-2.min.css" rel="stylesheet">
  <link href="<%=request.getContextPath()%>/resources/css/style.css" rel="stylesheet">

</head>

<body id="page-top">

  <!-- Page Wrapper -->
  <div id="wrapper">

    <%@ include file="../menu_left/leftMenu.jsp" %>




    <!-- Content Wrapper -->
    <div id="content-wrapper" class="d-flex flex-column">

      <!-- Main Content -->
      <div id="content">




        <%@ include file="../menu_top/topMenu.jsp" %>





        <!-- Begin Page Content -->
        <div class="container-fluid">

          <!-- Page Heading -->
          <h1 class="h3 mb-4 text-gray-800" style="display: none;">
            <span style="background: #E4F4FA!important; padding: 0 10px; border-radius: 5px;"><i class="fas fa fa-home"></i></span>
          </h1>

          <!-- Card starts here -->

          <div class="row" style="margin-top: 45vh;">

            <!-- Earnings (Monthly) Card Example -->
            <div class="col-xl-3 col-md-6 mb-4">
              <div class="card border-left-primary shadow h-100 py-2">
                <div class="card-body">
                  <div class="row no-gutters align-items-center">
                    <div class="col mr-2">
                      <div class="text-xs font-weight-bold text-primary text-uppercase mb-1">Airports</div>
                      <div class="h5 mb-0 font-weight-bold text-gray-800">

                        <%
                          Object nbAirport = 0;
                          try {
                          Class.forName("com.mysql.cj.jdbc.Driver");
                          Connection cx = DriverManager.getConnection("jdbc:mysql://localhost:3309/cef506db?createDatabaseIfNotExist=true && useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC", "root", "");
                          Statement st = cx.createStatement();
                          ResultSet rs = st.executeQuery("SELECT COUNT(*) FROM airport");
                          while (rs.next()) {
                            nbAirport = rs.getInt(1);
                          }
                          }
                          catch (Exception e){

                          }
                         %>
                        <%=nbAirport%>


                      </div>
                    </div>
                    <div class="col-auto">
                      <i class="fas fa-industry fa-2x text-gray-300"></i>
                    </div>
                  </div>
                </div>
              </div>
            </div>

            <!-- Earnings (Monthly) Card Example -->
            <div class="col-xl-3 col-md-6 mb-4">
              <div class="card border-left-success shadow h-100 py-2">
                <div class="card-body">
                  <div class="row no-gutters align-items-center">
                    <div class="col mr-2">
                      <div class="text-xs font-weight-bold text-success text-uppercase mb-1">Airlines</div>
                      <div class="h5 mb-0 font-weight-bold text-gray-800">
                        <%
                          Object nbAirline = 0;
                          try {
                            Class.forName("com.mysql.cj.jdbc.Driver");
                            Connection cx = DriverManager.getConnection("jdbc:mysql://localhost:3309/cef506db?createDatabaseIfNotExist=true && useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC", "root", "");
                            Statement st = cx.createStatement();
                            ResultSet rs = st.executeQuery("SELECT COUNT(*) FROM airline");
                            while (rs.next()) {
                              nbAirline = rs.getInt(1);
                            }
                          }
                          catch (Exception e){

                          }
                        %>
                        <%=nbAirline%>
                      </div>
                    </div>
                    <div class="col-auto">
                      <i class="fas fa-trademark fa-2x text-gray-300"></i>
                    </div>
                  </div>
                </div>
              </div>
            </div>

            <!-- Earnings (Monthly) Card Example -->
            <div class="col-xl-3 col-md-6 mb-4">
              <div class="card border-left-info shadow h-100 py-2">
                <div class="card-body">
                  <div class="row no-gutters align-items-center">
                    <div class="col mr-2">
                      <div class="text-xs font-weight-bold text-info text-uppercase mb-1">Aicraft / Airplane</div>
                      <div class="row no-gutters align-items-center">
                        <div class="col-auto">
                          <div class="h5 mb-0 mr-3 font-weight-bold text-gray-800">
                            <%
                              Object nbAircraft = 0;
                              try {
                                Class.forName("com.mysql.cj.jdbc.Driver");
                                Connection cx = DriverManager.getConnection("jdbc:mysql://localhost:3309/cef506db?createDatabaseIfNotExist=true && useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC", "root", "");
                                Statement st = cx.createStatement();
                                ResultSet rs = st.executeQuery("SELECT COUNT(*) FROM aircraft");
                                while (rs.next()) {
                                  nbAircraft = rs.getInt(1);
                                }
                              }
                              catch (Exception e){

                              }
                            %>
                            <%=nbAircraft%>
                          </div>
                        </div>
                      </div>
                    </div>
                    <div class="col-auto">
                      <i class="fas fa-plane fa-2x text-gray-300"></i>
                    </div>
                  </div>
                </div>
              </div>
            </div>

            <!-- Pending Requests Card Example -->
            <div class="col-xl-3 col-md-6 mb-4">
              <div class="card border-left-warning shadow h-100 py-2">
                <div class="card-body">
                  <div class="row no-gutters align-items-center">
                    <div class="col mr-2">
                      <div class="text-xs font-weight-bold text-warning text-uppercase mb-1">Flights</div>
                      <div class="h5 mb-0 font-weight-bold text-gray-800">
                        <%
                          Object nbFlight = 0;
                          try {
                            Class.forName("com.mysql.cj.jdbc.Driver");
                            Connection cx = DriverManager.getConnection("jdbc:mysql://localhost:3309/cef506db?createDatabaseIfNotExist=true && useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC", "root", "");
                            Statement st = cx.createStatement();
                            ResultSet rs = st.executeQuery("SELECT COUNT(*) FROM flight");
                            while (rs.next()) {
                              nbFlight = rs.getInt(1);
                            }
                          }
                          catch (Exception e){

                          }
                        %>
                        <%=nbFlight%>
                      </div>
                    </div>
                    <div class="col-auto">
                      <i class="fas fa-paper-plane fa-2x text-gray-300"></i>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>

          <!-- Card ends here-->



        </div>
        <!-- /.container-fluid -->

      </div>
      <!-- End of Main Content -->

      <!-- Footer -->
      <footer class="sticky-footer bg-white">
        <div class="container my-auto">
          <div class="copyright text-center my-auto">
            <span>Redesigned by Jean Bosco Mengue &copy; 2019</span>
          </div>
        </div>
      </footer>
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

</body>

</html>
