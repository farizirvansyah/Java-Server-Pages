<%-- 
    Document   : ShoppingCart
    Created on : 8 Apr 2024, 05.49.18
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.*" %>
<jsp:useBean id="cart" scope="session" class="beans.ShoppingCart"/>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cart</title>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    </head>
    <body>
        <div class="container mt-4">
            <div class="text-center mb-4">
                <h4>Shopping Cart Contents</h4>
            </div>
            <table class="table table-bordered border-primary table-hover">
                <thead>
                    <tr class="table-primary">
                        <th>Description</th>
                        <th class="text-center">Price</th>
                        <th class="text-center">Quantity</th>
                    </tr>
                </thead>
                <tbody>
                    <%
                        Enumeration e = cart.getEnumeration();
                        String[] tmpItem;
                        while(e.hasMoreElements())
                        {
                        tmpItem=(String[])e.nextElement();
                    %>
                    <tr class="table-light">
                        <td><%= tmpItem[1] %></td>
                        <td class="text-center">$<%= tmpItem[2] %></td>
                        <td class="text-center"><%= tmpItem[3] %></td>
                    </tr>
                    <%
                        }
                    %>
                </tbody>
            </table>
            <div class="text-right">
                <h5>Total Quantity: <%= cart.getQuantity() %></h5>
                <h5>Total Cost: $<%= cart.getCost() %></h5>
            </div>
            <div class="text-center mt-4">
                <a href="index.jsp" class="btn btn-secondary">
                    <i class="fas fa-arrow-left"></i> Back
                </a>
                <a href="invoice.jsp" class="btn btn-primary">
                    Payment <i class="fas fa-credit-card"></i>
                </a>
            </div>
        </div>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
    </body>
</html>