<%-- 
    Document   : Kategori
    Created on : 2 Mei 2024, 13.30.51
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Kategori</title>
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
            <div class="content-wrapper">
                <!--Content Header-->
                <div class="content-header">
                    <div class="container-fluid">
                        <div class="row mb-2">
                            <div class="col-sm-6">
                                <h1 class="m-0">Data Kategori</h1>
                            </div>
                            <div class="col-sm-6">
                                <ol class="breadcrumb float-sm-right">
                                    <li class="breadcrumb-item"><a href="../Dashboard/Dashboard.jsp">Dashboard</a></li>
                                    <li class="breadcrumb-item"><a href="../Kategori/Kategori.jsp">Kategori</a></li>
                                    <li class="breadcrumb-item active">Data Kategori</li>
                                </ol>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- /.content header -->
                <!-- Main content -->
                <section class="content">
                    <div class="container-fluid">
                        <div class="card card-primary">
                            <div class="card-header">
                                <h3 class="card-title">Tambah Data Kategori</h3>
                            </div>
                            <!-- /.card-header -->
                            <form method="POST" action="?action=add" >
                                <div class="card-body">
                                    <div class="form-floating">
                                        <input type="text" name="kode_kategori" class="form-control">
                                        <label>Kode Kategori</label>
                                    </div>
                                    <!-- /.form-floating -->
                                    <br>
                                    <div class="form-floating">
                                        <input type="text" name="nama_kategori" class="form-control" placeholder="">
                                        <label>Nama Kategori</label>
                                    </div>
                                    <!-- /.form-floating -->
                                </div>
                                <!-- /.card-body -->
                                <div class="card-footer">
                                    <div class="d-grid gap-2 d-md-flex">
                                        <a href="../Dashboard/Dashboard.jsp" class="btn btn-dark">Kembali ke Dashboard</a>
                                        <button type="reset" class="btn btn-warning"><i class="fa fa-undo"></i> Batal</button>
                                        <button type="submit" class="btn btn-primary ml-auto"><i class="fa fa-save"></i> Simpan</button>
                                    </div>
                                </div>
                                <!-- /.card-footer -->
                            </form>
                            <!-- /.form -->
                        </div>
                        <!-- /.card -->
                    </div>
                    <!-- /.container-fluid -->
                </section>
                <!-- /.content -->
            </div>
            <!-- /.content-wrapper -->

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
