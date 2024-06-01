<%-- 
    Document   : Content
    Created on : 11 Mei 2024, 22.45.19
    Author     : Administrator
--%>

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
            <div class="card card-light">
                <div class="card-header">
                    <h3 class="card-title"><i class="fa fa-th">&nbsp</i>Barang 
                        <span class="badge text-bg-secondary">1</span></h3>
                </div>
                <!-- /.card-header -->
                <div class="card-body">
                    <!-- Buttons -->
                    <div class="mb-3">
                        <button class="btn btn-primary" onclick="window.location.href = 'Form.jsp'">
                            <i class="fas fa-plus"></i> Tambah Data</button>
                        <button class="btn btn-warning" onclick="window.location.href = '#'">
                            <i class="fas fa-exclamation-triangle"></i> Stok Minimal</button>
                        <button class="btn btn-light" onclick="window.location.href = 'Kategori.jsp'">
                            <i class="fas fa-sync-alt"></i> Refresh</button>
                    </div>
                    <!-- /.buttons -->
                    <form action="/Kategori?action=list" method="POST">
                        <table id="list" class="table table-responsive table-striped" style="width:100%">
                            <thead>
                                <tr>
                                    <th>No</th>
                                    <th>Kode Kategori</th>
                                    <th>Nama Kategori</th>
                                    <th>Opsi</th>
                                </tr>
                            </thead>
                            <tbody>
                                <% 
                                    List<Kategori> daftarKategori = (List<Kategori>) request.getAttribute("daftarKategori");
                                    for (int i = 0; i < daftarKategori.size(); i++) {
                                        Kategori kategori = daftarKategori.get(i);
                                %>
                                <tr>
                                    <td><%= i + 1 %></td>
                                    <td><%= kategori.getKode_kategori() %></td>
                                    <td><%= kategori.getNama_kategori() %></td>
                                    <td>
                                        <a href="KategoriServlet?action=edit&kode_kategori=<%= kategori.getKode_kategori() %>" class="btn btn-success">Ubah</a>
                                        <a href="KategoriServlet?action=delete&kode_kategori=<%= kategori.getKode_kategori() %>" class="btn btn-danger">Hapus</a>
                                    </td>
                                </tr>
                                <% 
                                    } 
                                %>
                            </tbody>
                        </table>
                        <!-- /.table -->
                    </form>
                    <!-- /.form -->
                </div>
                <!-- /.card-body -->
                <div class="card-footer">
                </div>
                <!-- /.card-footer -->
            </div>
            <!-- /.card -->
        </div>
        <!-- /.container-fluid -->
    </section>
    <!-- /.content -->
</div>
<!-- /.content-wrapper -->