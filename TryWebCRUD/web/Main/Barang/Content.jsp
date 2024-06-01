<%-- 
    Document   : Content
    Created on : 2 Mei 2024, 13.37.27
    Author     : Administrator
--%>

<%@ page import="model.Barang" %>
<%@ page import="dao.BarangDAO" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.Iterator" %>
<%@ page import="java.util.ArrayList" %>
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
    <section class="content">
        <div class="container-fluid">
            <div class="row">
                <div class="col-12">
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
                                <button class="btn btn-light" onclick="window.location.href = 'Barang.jsp'">
                                    <i class="fas fa-sync-alt"></i> Refresh</button>
                            </div>
                            <!-- /.buttons -->
                            <!-- Table -->
                            <table id="list" class="table table-responsive table-striped" style="width:100%">
                                <thead>
                                    <tr>
                                        <th>No</th>
                                        <th>SKU</th>
                                        <th>Nama</th>
                                        <th>Harga Jual</th>
                                        <th>Harga Beli</th>
                                        <th>Kategori</th>
                                        <th>Merk</th>
                                        <th>Stok</th>
                                        <th>Keterangan</th>
                                        <th>Opsi</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <% 
                                        List<Barang> daftarBarang = new BarangDAO().bacaBarang();
                                        int i = 1;
                                        for(Barang barang : daftarBarang) {
                                    %>
                                    <tr>
                                        <td><%= i %></td>
                                        <td><%= barang.getSku() %></td>
                                        <td><%= barang.getNama_barang() %></td>
                                        <td><%= barang.getHarga_jual() %></td>
                                        <td><%= barang.getHarga_beli() %></td>
                                        <td><%= barang.getKode_kategori() %></td>
                                        <td><%= barang.getKode_merek() %></td>
                                        <td><%= barang.getStok() %></td>
                                        <td><%= barang.getKeterangan() %></td>
                                        <td>
                                            <a id="edit" href="Update.jsp?sku=<%= barang.getSku() %>" class="btn btn-success">Edit</a>
                                            <a id="delete" href="Delete.jsp?sku=<%= barang.getSku() %>" class="btn btn-danger">Delete</a>
                                        </td>
                                    </tr>
                                    <% 
                                        i++;
                                        } 
                                    %>
                                </tbody>
                                <tfoot>
                                    <tr>
                                        <th>No</th>
                                        <th>SKU</th>
                                        <th>Nama</th>
                                        <th>Harga Jual</th>
                                        <th>Harga Beli</th>
                                        <th>Kategori</th>
                                        <th>Merk</th>
                                        <th>Stok</th>
                                        <th>Keterangan</th>
                                        <th>Opsi</th>
                                    </tr>
                                </tfoot>
                            </table>
                            <!-- /.table -->
                        </div>
                        <!-- /.card-body -->
                        <div class="card-footer">

                        </div>
                        <!-- /.card-footer -->
                    </div>
                    <!-- /.card -->
                </div>
                <!-- /.col -->
            </div>
            <!-- /.row -->
        </div><!-- /.container-fluid -->
    </section>
</div>
<!-- /.content-wrapper -->

<script src="https://code.jquery.com/jquery-3.7.1.js"></script>
<script src="https://cdn.datatables.net/2.0.5/js/dataTables.min.js"></script>
<script src="https://cdn.datatables.net/2.0.5/js/dataTables.bootstrap5.js"></script>
<script>
                                    $(document).ready(function () {
                                        $('#list').DataTable();
                                    });
</script>