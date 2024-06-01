<%-- 
    Document   : Delete
    Created on : 6 Mei 2024, 15.52.12
    Author     : Administrator
--%>


<%@ page import="java.util.List" %>
<%@ page import="model.barang.Barang" %>
<%@ page import="java.util.Iterator" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="dao.barang.BarangDAO" %>
<%
    try {
        String sku = request.getParameter("sku");
        new BarangDAO().hapusBarang(sku);
        response.sendRedirect("Barang.jsp?d=1");
    } catch (Exception e) {
        e.printStackTrace();
        response.sendRedirect("../Error.jsp");
    }
%>
