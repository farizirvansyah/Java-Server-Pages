<%-- 
    Document   : Create
    Created on : 6 Mei 2024, 10.14.17
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
                            <form action="proses.jsp">
                            <div class="form-group">
                                <label for="sku">SKU:</label>
                                <input type="text" id="sku" name="kodebrg" placeholder="BRG*******" value ="BRG<%=nol_plusb + no_autob%>" readonly>
                            </div>
                            <div class="form-group">
                                <label for="nama">Nama Barang:</label>
                                <input type="text" id="nama" name="namabrg" placeholder="Masukan Nama Barang">
                            </div>
                            <div class="form-group">
                                <label for="harga_jual">Harga Jual:</label>
                                <input type="text" id="harga_jual" name="harga_jualbrg" placeholder="Masukan Harga Jual">
                            </div>
                            <div class="form-group">
                                <label for="harga_beli">Harga Beli:</label>
                                <input type="text" id="harga_beli" name="harga_belibrg" placeholder="Masukan Harga Beli">
                            </div>
                            <div class="form-group">
                                <label for="kategori">Kategori:</label>
                                <select id="kategori" name="kategoribrg">
                                    <option value="">Pilih Kategori</option>
                                    <%
                                    while(rs.next()){
                                      namkat = rs.getString("nmkategori");
                            
                                    %>
                                    <option value="<%= namkat%>"><%= namkat%></option>
                                    <%
                                        }
                                    %>

                                    <!-- Tambahkan opsi kategori di sini -->
                                </select>
                                <%
                                String sql3 = "select * from merek";
                                stmt = conn.prepareStatement(sql3);
                                rs = stmt.executeQuery();
                                String namaMerek = "";
                                %>
                                <a class="btn-kategori" href="./kategori.jsp">Tambah Kategori</a>
                            </div>
                            <div class="form-group">
                                <label for="merek">Merek:</label>
                                <select id="merek" name="merekbrg">
                                    <option value="">Pilih Merek</option>
                                    <%
                                    while(rs.next()){
                                        namaMerek = rs.getString("nmmerek");
                            
                                    %>
                                    <option value="<%=namaMerek%>"><%=namaMerek%></option>
                                    <%
                                        }
                                    %>

                                    <!-- Tambahkan opsi merek di sini -->
                                </select>
                                <a class="btn-merek" href="./merek.jsp">Tambah Merek</a>
                            </div>
                            <div class="form-group">
                                <label for="stok_minimal">Stok Minimal:</label>
                                <input type="text" id="stok_minimal" name="stok_minimalbrg" placeholder="Masukan Nomor">
                            </div>
                            <div class="form-group">
                                <label for="keterangan">Keterangan:</label>
                                <input type="text" id="keterangan" name="keteranganbrg" placeholder="Masukan Keterangan">
                            </div>
                            <div class="form-buttons">
                                <button class="btn-red" type="reset">Batal</button>
                                <button class="btn-blue" name="btn-simpan" value="simpan">
                                    <i class="fa-regular fa-floppy-disk"></i>
                                    Simpan
                                </button>
                            </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
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