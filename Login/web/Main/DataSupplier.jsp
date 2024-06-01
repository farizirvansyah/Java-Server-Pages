<%-- 
    Document   : DataSupplier
    Created on : 10 Apr 2024, 10.06.37
    Author     : Administrator
--%>

<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="jdbc.Koneksi" %>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Data Supplier</title>
        <link rel="stylesheet" href="mainstyle.css">
        <link href="https://unpkg.com/boxicons@2.1.2/css/boxicons.min.css" rel="stylesheet"/>
    </head>
    <body>
        <jsp:include page="Sidebar.jsp"/>
        <section class="home-section">
            <div class="home-content">
                <i class='bx bx-menu'></i>
                <span class="text">Data Supplier</span>
            </div>

            <div class="home-content">
                <a href="Dashboard.jsp" style="margin: 0px 15px 0px 20px; text-decoration: none;">Dashboard</a>
                <a>/</a>
                <a href="SupplierCustomer.jsp" style="margin: 0px 15px 0px 15px; text-decoration: none;">Supplier & Customer</a>
                <a>/</a>
                <a href="DataSupplier.jsp" style="margin-left: 15px; text-decoration: none;">Data Supplier</a>
            </div>

            <div class="isi-content">
                <form method="post" action="<%=request.getContextPath()%>/DataSupplier" style="width: 100%; margin: 0 auto;">
                    <table border="1" cellspacing="0" cellpadding="2">
                        <caption><b>Data Supplier</b></caption>
                        <tr>
                            <th width="2.5%">No</th>
                            <th width="7.5%">Kode Supplier</th>
                            <th width="20%">Nama Supplier</th>
                            <th width="10%">Tanggal Daftar</th>
                            <th width="10%">No Handphone</th>
                            <th width="30%">Alamat</th>
                            <th width="10%">Opsi</th>
                        </tr>

                        <tr>
                            <td align="center"></td>
                            <td align="center"></td>
                            <td align="center"></td>
                            <td align="center"></td>
                            <td align="center"></td>
                            <td align="center"></td>
                            <td>&nbsp;&nbsp;<a href="#">Ubah</a>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <a href="#">Hapus</a></td>
                        </tr>
                    </table>
                </form>
            </div>
        </section>
        <script src="Sidebar.js"></script>
    </body>
</html>