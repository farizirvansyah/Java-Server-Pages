<%-- 
    Document   : Content
    Created on : 3 Mei 2024, 10.31.18
    Author     : Administrator
--%>

<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
    <!--Content Header-->
    <div class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-6">
                    <h1 class="m-0">Data Merek</h1>
                </div>
                <div class="col-sm-6">
                    <ol class="breadcrumb float-sm-right">
                        <li class="breadcrumb-item"><a href="../Dashboard/Dashboard.jsp">Dashboard</a></li>
                        <li class="breadcrumb-item"><a href="../Merek/Merek.jsp">Merek</a></li>
                        <li class="breadcrumb-item active">Data Merek</li>
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
                    <h3 class="card-title">Tambah Data Merek</h3>
                </div>
                <!-- /.card-header -->
                <form class="" method="POST" action="Merk">
                    <div class="card-body">
                        <div class="form-floating">
                            <input type="text" class="form-control" readonly>
                            <label>Kode Merk</label>
                        </div>
                        <!-- /.form-floating -->
                        <br>
                        <div class="form-floating">
                            <input type="text" class="form-control" placeholder="">
                            <label>Nama Merk</label>
                        </div>
                        <!-- /.form-floating -->
                    </div>
                    <!-- /.card-body -->
                    <div class="card-footer">
                        <div class="d-grid gap-2 d-md-flex">
                            <a href="Merek.jsp" class="btn btn-dark">Kembali</a>
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