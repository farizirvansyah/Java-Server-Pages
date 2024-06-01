<%-- 
    Document   : Navbar
    Created on : 2 Mei 2024, 14.30.37
    Author     : Administrator
--%>

<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Date" %>
<!-- Navbar -->
<nav class="main-header navbar navbar-expand navbar-purple navbar-dark">
    <!-- Left navbar links -->
    <ul class="navbar-nav">
        <li class="nav-item">
            <a class="nav-link" data-widget="pushmenu" href="#" role="button"><i class="fas fa-bars"></i></a>
        </li>
        <li class="nav-item d-none d-sm-inline-block">
            <a href="../Dashboard/Dashboard.jsp" class="nav-link">Home</a>
        </li>
        <li class="nav-item d-none d-sm-inline-block">
            <a href="#" class="nav-link">Contact</a>
        </li>
    </ul>
    <ul class="navbar-nav ml-auto">
        <li class="nav-item">
            <a class="nav-link"> <!-- href="#" role="button" -->
                <%= new SimpleDateFormat("HH:mm:ss z").format(new Date()) %>&nbsp
                <%= new SimpleDateFormat("EEEE, dd MMMM yyyy").format(new Date()) %>
            </a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="#" role="button">
                User
            </a>
        </li>
        <li class="nav-item">
            <a class="nav-link" data-widget="fullscreen" href="#" role="button">
                <i class="fas fa-expand-arrows-alt"></i>
            </a>
        </li>
    </ul>
</nav>
<!-- /.navbar -->