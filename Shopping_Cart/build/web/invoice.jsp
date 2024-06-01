<%-- 
    Document   : invoice
    Created on : 8 Apr 2024, 05.49.18
    Author     : Administrator
--%>

<%@ page contentType="text/html" pageEncoding="UTF-8" %>
<%@ page import="java.util.*" %>
<%@ page import="java.util.Date, java.util.Calendar, java.text.SimpleDateFormat" %>
<jsp:useBean id="cart" scope="session" class="beans.ShoppingCart" />
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Invoice</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
        <link href="invoice.css" rel="stylesheet" type="text/css" />
    </head>
    <body>
        <br>
        <div class="invoice-box">
            <table cellpadding="0" cellspacing="0">
                <tr class="top">
                    <td colspan="3">
                        <table>
                            <tr>
                                <td class="title">
                                    <h2>AYO ELECTRONIC</h2>
                                </td>
                                <td>
                                    <%
                                        Date createdDate = new Date();
                                        Calendar cal = Calendar.getInstance();
                                        cal.setTime(createdDate);
                                        cal.add(Calendar.HOUR_OF_DAY, 2);
                                        Date dueDate = cal.getTime();
                                        
                                        SimpleDateFormat formatter = new SimpleDateFormat("EEEE, dd MMMM yyyy HH:mm:ss z");
                                        String createdDateString = formatter.format(createdDate);
                                        String dueDateString = formatter.format(dueDate);
                                        
                                        SimpleDateFormat fw = new SimpleDateFormat("dd MMMM yyyy");
                                        cal.add(Calendar.YEAR, 1);
                                        Date warrantyDate = cal.getTime();
                                        String warrantyDateString = fw.format(warrantyDate);
                                    %>
                                    Invoice #: 01<br>
                                    Created: <%= createdDateString %><br>
                                    Due: <%= dueDateString %>
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>

                <tr class="information">
                    <td colspan="3">
                        <table>
                            <tr>
                                <td>
                                    Customer Name<br>
                                    Customer Email
                                </td>
                                <td>
                                    <% String username = (String) session.getAttribute("username");%>
                                    <%= username%><br>
                                    <%= username%>@example.com
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>

                <tr class="heading">
                    <td>Description Item</td>
                    <td>Quantity</td>
                    <td>Price</td>
                </tr>

                <% Enumeration e = cart.getEnumeration();
                while (e.hasMoreElements()) {
                    String[] item = (String[]) e.nextElement();
                %>
                <tr class="item">
                    <td><%= item[1] %></td>
                    <td><%= item[3] %></td>
                    <td>$<%= item[2] %></td>
                </tr>
                <% } %>

                <tr class="total">
                    <td>Warranty Product: <b><%= warrantyDateString %></b></td>
                    <td colspan="2">Total Payments: $<%= cart.getCost() %></td>
                </tr>
                <tr>
                    <td colspan="3" style="text-align: center">Transfer to:<br>
                        BCA : 123456789<br>
                        Mandiri : 987654321</td>
                </tr>
            </table>
            <div class="text-center mt-4">
                <a href="index.jsp" class="btn btn-secondary">
                    <i class="fas fa-arrow-left"></i> Back
                </a>
                <button class="btn btn-primary" onclick="pay()"><i class="fas fa-credit-card"></i> Payment</button>
            </div>
        </div>
        <!-- Tambahkan pustaka SweetAlert -->
        <script src="https://cdn.jsdelivr.net/npm/sweetalert2@10"></script>
        <script>
                    function pay() {
                        // Gunakan SweetAlert untuk menampilkan pesan
                        Swal.fire({
                            icon: 'success',
                            title: 'Payment Successful',
                            text: 'Thank you for your purchase!'
                        }).then((result) => {
                            // Redirect setelah tombol OK ditekan
                            if (result.isConfirmed) {
                                // Hapus keranjang dari sesi
            <% session.removeAttribute("cart"); %>
                                window.location.href = "index.jsp";
                            }
                        });
                    }
        </script>
    </body>
</html>
