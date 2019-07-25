
<!-- Sidebar -->
<ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">

    <!-- Sidebar - Brand -->
    <a class="sidebar-brand d-flex align-items-center justify-content-center" href="index.html">
        <div class="sidebar-brand-icon rotate-n-15">
            <i class="fas fa-plane-departure"></i>
        </div>
        <div class="sidebar-brand-text mx-3">Flight Schedule</div>
    </a>

    <!-- Divider -->
    <hr class="sidebar-divider my-0">

    <!-- Nav Item - Dashboard -->
    <c:url value="/" var="home"/>
    <li class="nav-item">
        <a class="nav-link" href="${home}">
            <i class="fas fa-fw fa-tachometer-alt"></i>
            <span>Dashboard</span></a>
    </li>

    <!-- Divider -->
    <hr class="sidebar-divider">

    <!-- Heading -->
    <div class="sidebar-heading">
        <span style="border: 2px solid #6F9AE7; padding: 1px 3px;">Airport Flight scheduler</span>
    </div>


    <!-- Airport -->
    <c:url value="/airport/" var="airport"/>
    <li class="nav-item">
        <a class="nav-link" href="${airport}">
            <i class="fas fa-fw fa-home"></i>
            <span>Airports</span></a>
    </li>

    <!-- Nav Item - Aircraft -->
    <c:url value="/aircraft/" var="aircraft"/>
    <li class="nav-item">
        <a class="nav-link" href="${aircraft}">
            <i class="fas fa-fw fa-plane"></i>
            <span>Aircrafts</span></a>
    </li>

    <!-- Nav Item - Airline -->
    <c:url value="/airline/" var="airline"/>
    <li class="nav-item">
        <a class="nav-link" href="${airline}">
            <i class="fas fa-fw fa-trademark"></i>
            <span>Airlines</span></a>
    </li>

    <c:url value="/route/" var="route"/>
    <li class="nav-item">
        <a class="nav-link" href="${route}">
            <i class="fas fa-fw fa-road"></i>
            <span>Routes</span></a>
    </li>

    <c:url value="/flight/" var="flight"/>
    <li class="nav-item">
        <a class="nav-link" href="${flight}">
            <i class="fas fa-fw fa-paper-plane"></i>
            <span>Flight Scheduler</span></a>
    </li>

    <!-- Divider -->
    <hr class="sidebar-divider">


    <!-- Divider -->
    <hr class="sidebar-divider d-none d-md-block">

    <!-- Sidebar Toggler (Sidebar) -->
    <div class="text-center d-none d-md-inline">
        <button class="rounded-circle border-0" id="sidebarToggle"></button>
    </div>

</ul>
<!-- End of Sidebar -->

