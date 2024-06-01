<%-- 
    Document   : Content
    Created on : 3 Mei 2024, 10.31.18
    Author     : Administrator
--%>

<%@ page import="model.Merek" %>
<%@ page import="dao.MerekDAO" %>
<%@ page import="java.util.*" %>
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
            <div class="card card-light">
                <div class="card-header">
                    <h3 class="card-title"><i onclick="window.location.reload()" class="fa fa-th">&nbsp</i>Merek 
                        <span class="badge text-bg-secondary">1</span></h3>
                </div>
                <!-- /.card-header -->
                <div class="card-body">
                    <!-- Buttons -->
                    <div class="mb-3">
                        <button class="btn btn-primary" onclick="window.location.href = 'FormAdd.jsp'">
                            <i class="fas fa-plus"></i> Tambah Data</button>
                        <button class="btn btn-warning" onclick="window.location.reload()">
                            <i class="fas fa-exclamation-triangle"></i></button>
                        <button class="btn btn-light" onclick="window.location.href = 'Merek.jsp'">
                            <i class="fas fa-sync-alt"></i> Refresh</button>
                    </div>
                    <!-- /.buttons -->
                    <!-- Table -->
                    <table id="list" class="table table-responsive table-striped" style="width:100%">
                        <thead>
                            <tr>
                                <th>No</th>
                                <th>Kode Merek</th>
                                <th>Nama Merek</th>
                                <th>Opsi</th>
                            </tr>
                        </thead>
                        <tbody>
                            <% 
                                List<Merek> daftarMerek = (List<Merek>) request.getAttribute("daftarMerek");
                                for (int i = 0; i < daftarMerek.size(); i++) {
                                    Merek merek = daftarMerek.get(i);
                            %>
                            <tr>
                                <td><%= i + 1 %></td>
                                <td><%= merek.getKode_merek() %></td>
                                <td><%= merek.getNama_merek() %></td>
                                <td>
                                    <button class="btn btn-success">Edit</button>
                                    <button class="btn btn-danger">Delete</button>
                                </td>
                            </tr>
                            <% 
                                } 
                            %>
                        </tbody>
                        <tfoot>
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
        <!-- /.container-fluid -->
    </section>
    <!-- /.content -->
</div>
<!-- /.content-wrapper -->