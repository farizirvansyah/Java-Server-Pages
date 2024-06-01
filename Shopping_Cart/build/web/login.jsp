<%-- 
    Document   : login
    Created on : 30 Mei 2024, 11.25.10
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login | Kel4</title>
        <!-- Bootstrap CSS 5.3.3 -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
        <!-- Font Awesome Icons 4.7.0 -->
        <link href="https://unpkg.com/font-awesome@4.7.0//css/font-awesome.min.css" rel="stylesheet"/>
        <!-- Box Icons -->
        <link href="https://unpkg.com/boxicons@2.1.2/css/boxicons.min.css" rel="stylesheet"/>
        <!-- AdminLTE CSS 3.1.0 -->
        <link href="https://cdnjs.cloudflare.com/ajax/libs/admin-lte/3.1.0/css/adminlte.min.css" rel="stylesheet">
        <!-- Custom CSS -->
        <link href="log_in.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <nav class="navbar navbar-expand-lg navbar-dark">
            <div class="container-fluid">
                <a class="navbar-brand" href="#"><i class='bx bxl-java'><b> KELOMPOK 4: Fariz Hafiz Khamid</b></i>
                </a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarNav">
                    <ul class="navbar-nav ml-auto">
                        <li class="nav-item">
                            <a class="nav-link" href="#">Home</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#">About</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#">Contact</a>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
        <div class="login-box">
            <%
                // Fungsi untuk menampilkan pesan
                // Jika alert = "" (kosong)
                // Tampilkan pesan "" (kosong)
                if (request.getParameter("alert") == null || request.getParameter("alert").isEmpty()) {
                    out.println("");
                } 
                // Jika alert = 1
                // Tampilkan pesan Gagal "Username atau Password Anda salah"
                else if (request.getParameter("alert").equals("1")) {
                    out.println("<div class='alert alert-danger .alert-dismissable'>");
                    out.println("<button type='button' class='close' data-dismiss='alert' aria-hidden='true'>&times;</button>");
                    out.println("<h4><i class='icon fa fa-ban'></i> Gagal Login!</h4>");
                    out.println("Username atau Password Anda salah.");
                    out.println("</div>");
                }
                // Jika alert = 2
                // Tampilkan pesan Sukses "Anda telah berhasil logout"
                else if (request.getParameter("alert").equals("2")) {
                    out.println("<div class='alert alert-success .alert-dismissable'>");
                    out.println("<button type='button' class='close' data-dismiss='alert' aria-hidden='true'>&times;</button>");
                    out.println("<h4><i class='icon fa fa-check-circle'></i> Sukses!</h4>");
                    out.println("Anda telah berhasil logout.");
                    out.println("</div>");
                }
            %>
            <div class="card-header text-center">
                <a href="#" class="h1"><b>AYO </b>ELECTRONIC</a>
            </div> <!-- card-header -->
            <div class="login-box-body">
                <p class="login-box-msg"><i class="fa fa-user icon-title"></i>Spend your money please</p>
                <form action="validate" method="POST">
                    <div class="form-group has-feedback">
                        <div class="input-group mb-3">
                            <input type="text" class="form-control" name="uname" placeholder="Username" autocomplete="off" required />
                            <div class="input-group-append">
                                <div class="input-group-text">
                                    <span class="bx bx-user"></span>
                                </div>
                            </div>
                        </div>
                        <div class="input-group mb-3">
                            <input type="password" class="form-control" name="pass" placeholder="Password" required />
                            <div class="input-group-append">
                                <div class="input-group-text">
                                    <span class="bx bx-lock"></span>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-8">
                                <div class="icheck-primary">
                                    <input type="checkbox" id="remember">
                                    <label for="remember">Remember me</label>
                                </div>
                            </div>
                            <div class="col-4">
                                <button type="submit" class="btn btn-primary btn-block">Login</button>
                            </div>
                        </div>
                    </div><!-- /.form-group -->
                </form><!-- form -->
                <div class="social-auth-links text-center mt-2 mb-3">
                    <a href="#" class="btn btn-block btn-primary">
                        <i class="fa fa-facebook-square fa-lg mr-3"></i> Masuk dengan Facebook</a>
                    <a href="#" class="btn btn-block btn-danger">
                        <i class="fa fa-google-plus-square fa-lg mr-3"></i> Masuk dengan Google+</a>
                </div>
                <p class="mb-1">
                    <a href="#">Lupa kata sandi</a>
                </p>
                <p class="mb-0">
                    <a href="#" class="text-center">Daftar Akun baru</a>
                </p>
            </div><!-- /.login-box-body -->
        </div><!-- /.login-box -->

        <!-- Bootstrap 5.3.3 JS -->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
        <!-- Script untuk menutup alert saat tombol close diklik -->
        <!-- jQuery 3.6.0 -->
        <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
        <script>
            $(document).ready(function () {
                $(".close").click(function () {
                    $(this).parent().remove();
                });
            });
        </script>
    </body>
</html>