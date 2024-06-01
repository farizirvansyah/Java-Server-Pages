<%-- 
    Document   : test
    Created on : 2 Mei 2024, 20.33.17
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
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
        <div class="login-box-body">
            <p class="login-box-msg"><i class="fa fa-user icon-title"></i> Silahkan Login</p>
            <br/>
            <form action="<%=request.getContextPath()%>/Login" method="post">
                <div class="form-group has-feedback">
                    <input type="text" class="form-control" name="username" placeholder="Username" autocomplete="off" required />
                </div>

                <div class="form-group has-feedback">
                    <input type="password" class="form-control" name="password" placeholder="Password" required />
                </div>
                <br/>
                <div class="row">
                    <div class="col-xs-12">
                        <input type="submit" class="btn btn-primary btn-lg btn-block btn-flat" name="login" value="Login" />
                    </div><!-- /.col -->
                </div>
            </form>
        </div><!-- /.login-box-body -->
    </body>
</html>
