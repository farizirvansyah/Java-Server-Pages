<%-- 
    Document   : Barang
    Created on : 2 Mei 2024, 13.30.41
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Barang</title>
        <!-- Bootstrap CSS 5.3.3 -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
        <!-- Font Awesome Icons 5.15.3 -->
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" rel="stylesheet">
        <!-- AdminLTE CSS 3.1.0 -->
        <link href="https://cdnjs.cloudflare.com/ajax/libs/admin-lte/3.1.0/css/adminlte.min.css" rel="stylesheet">
    </head>
    <body class="hold-transition sidebar-mini">
        <div class="wrapper">
            <!-- Navbar -->
            <jsp:include page="../Components/Navbar.jsp"/>
            <!-- /.navbar -->

            <!-- Main Sidebar Container. Contains page content -->
            <jsp:include page="../Components/Sidebar.jsp"/>
            <!-- /.MainSidebarContainer -->

            <!-- Content Wrapper. Contains page content -->
            <%@ page import="java.util.List" %>
            <%@ page import="model.barang.Barang" %>
            <%@ page import="java.util.Iterator" %>
            <%@ page import="java.util.ArrayList" %>
            <%@ page import="dao.barang.BarangDAO" %>
            <!-- Content -->
            <div class="content-wrapper">
                <!--Content Header-->
                <div class="content-header">
                    <div class="container-fluid">
                        <div class="row mb-2">
                            <div class="col-sm-6">
                                <h1 class="m-0">Data Barang</h1>
                            </div>
                            <div class="col-sm-6">
                                <ol class="breadcrumb float-sm-right">
                                    <li class="breadcrumb-item"><a href="../Dashboard/Dashboard.jsp">Dashboard</a></li>
                                    <li class="breadcrumb-item"><a href="../Barang/Barang.jsp">Barang</a></li>
                                    <li class="breadcrumb-item active">Data Barang</li>
                                </ol>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- /.content header -->
                <!-- Main content -->
                <div class="content">
                    <div class="container">
                        <div class="card card-primary">
                            <!-- /.card-header -->
                            <!-- form start -->
                            <form action="edit" method="post">
                                <div class="card-body">
                                    <div class="form-group">
                                        <label for="sku">SKU:</label>
                                        <input class="form-control form-control-sm" type="text" id="sku" name="sku" value="<% request.getParameter("sku"); %>" readonly>
                                    </div>
                                    <div class="form-group">
                                        <label for="nama_barang">Nama Barang:</label>
                                        <input type="text" class="form-control form-control-sm" id="nama_barang" name="nama_barang">
                                    </div>
                                    <div class="form-group">
                                        <label for="harga_jual">Harga Jual:</label>
                                        <input type="text" class="form-control form-control-sm" id="harga_jual" name="harga_jual">
                                    </div>
                                    <div class="form-group">
                                        <label for="harga_beli">Harga Beli:</label>
                                        <input type="text" class="form-control form-control-sm" id="harga_beli" name="harga_beli">
                                    </div>
                                    <div class="form-group align-items-center">
                                        <label for="kategori">Kategori:</label>
                                        <select class="form-control-auto" id="kategori" name="kategori">
                                            <option value="">Pilih Kategori</option>
                                            <option value="1">0001</option>
                                            <option value="2">0002</option>
                                            <!-- Tambahkan opsi-opsi kategori lainnya sesuai kebutuhan -->
                                        </select>
                                        <a href="KategoriServlet" class="btn btn-secondary">Tambah Kategori</a>
                                    </div>
                                    <div class="form-group align-items-center">
                                        <label for="merek">Merek:</label>
                                        <select class="form-control-auto" id="merek" name="merek">
                                            <option value="">Pilih Merek</option>
                                            <option value="1">0001</option>
                                            <option value="2">0002</option>
                                            <!-- Tambahkan opsi-opsi merek lainnya sesuai kebutuhan -->
                                        </select>
                                        <a href="KategoriServlet" class="btn btn-secondary">Tambah Merek</a>
                                    </div>

                                    <div class="form-group">
                                        <label for="stok">Stok:</label>
                                        <input type="text" class="form-control form-control-sm" id="stok" name="stok">
                                    </div>
                                    <div class="form-group">
                                        <label for="keterangan">Keterangan:</label>
                                        <textarea class="form-control" id="keterangan" name="keterangan" rows="3"></textarea>
                                    </div>
                                </div>
                                <!-- /.card-body -->

                                <div class="card-footer">
                                    <button type="reset" class="btn btn-danger">Batal</button>
                                    <button type="submit" class="btn btn-default"><i class="fa fa-save"></i> Ubah Data</button>
                                    <br><br>
                                    <a href="Barang.jsp" class="btn btn-secondary">Kembali ke Daftar Barang</a>
                                </div>
                            </form>
                            <!-- /.form -->
                            <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
                        </div>
                        <!-- /.card -->
                    </div>
                </div>
                <!-- /.content -->
            </div>
            <!-- /.content-wrapper -->

            <script src="https://code.jquery.com/jquery-3.7.1.js"></script>
            <script src="https://cdn.datatables.net/2.0.5/js/dataTables.min.js"></script>
            <script src="https://cdn.datatables.net/2.0.5/js/dataTables.bootstrap5.js"></script>

            <!-- Main Footer -->
            <jsp:include page="../Components/Footer.jsp"/>
            <!-- /.MainFooter -->
        </div>
        <!-- ./wrapper -->

        <!-- REQUIRED SCRIPTS -->
        <!-- jQuery -->
        <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
        <!-- Bootstrap 5.3.3 JS -->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
        <!-- AdminLTE App -->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/admin-lte/3.1.0/js/adminlte.min.js"></script>
    </body>
</html>
