/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package usermanagement.web;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import usermanagement.dao.SupplierDAO;
import usermanagement.model.Supplier;

/**
 *
 * @author Administrator
 */
@WebServlet("/DataSupplier")
public class SupplierServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;
    private SupplierDAO supplierDAO;

    /**
     *
     */
    @Override
    public void init() {
        supplierDAO = new SupplierDAO();
    }

    /**
     *
     * @param request
     * @param response
     * @throws ServletException
     * @throws IOException
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doGet(request, response);
    }

    /**
     *
     * @param request
     * @param response
     * @throws ServletException
     * @throws IOException
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String action = request.getServletPath();

        try {
            switch (action) {
                case "/new" ->
                    showNewForm(request, response);
                case "/insert" ->
                    insertSupplier(request, response);
                case "/delete" ->
                    deleteSupplier(request, response);
                case "/edit" ->
                    showEditForm(request, response);
                case "/update" ->
                    updateSupplier(request, response);
                default ->
                    listSupplier(request, response);
            }
        } catch (SQLException ex) {
            throw new ServletException(ex);
        }
    }

    private void listSupplier(HttpServletRequest request, HttpServletResponse response)
            throws SQLException, IOException, ServletException {
        List<Supplier> listSupplier = supplierDAO.selectAllSupplier();
        request.setAttribute("listSupplier", listSupplier);
        RequestDispatcher dispatcher = request.getRequestDispatcher("Main/DataSupplier.jsp");
        dispatcher.forward(request, response);
    }

    private void showNewForm(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        RequestDispatcher dispatcher = request.getRequestDispatcher("Main/DataSupplier/New.jsp");
        dispatcher.forward(request, response);
    }

    private void showEditForm(HttpServletRequest request, HttpServletResponse response)
            throws SQLException, ServletException, IOException {
        int kode = Integer.parseInt(request.getParameter("kode"));
        Supplier existingSupplier = supplierDAO.selectSupplier(kode);
        RequestDispatcher dispatcher = request.getRequestDispatcher("Main/DataSupplier/Edit.jsp");
        request.setAttribute("supplier", existingSupplier);
        dispatcher.forward(request, response);
    }

    private void insertSupplier(HttpServletRequest request, HttpServletResponse response)
            throws SQLException, IOException {
        String nama = request.getParameter("nama");
        String nohp = request.getParameter("nohp");
        String alamat = request.getParameter("alamat");
        Supplier newSupplier = new Supplier(nama, null, nohp, alamat);
        supplierDAO.insertSupplier(newSupplier);
        response.sendRedirect("list");
    }

    private void updateSupplier(HttpServletRequest request, HttpServletResponse response)
            throws SQLException, IOException {
        int kode = Integer.parseInt(request.getParameter("kode"));
        String nama = request.getParameter("nama");
        String nohp = request.getParameter("nohp");
        String alamat = request.getParameter("alamat");

        Supplier supplier = new Supplier(kode, nama, null, nohp, alamat);
        supplierDAO.updateSupplier(supplier);
        response.sendRedirect("list");
    }

    private void deleteSupplier(HttpServletRequest request, HttpServletResponse response)
            throws SQLException, IOException {
        int kode = Integer.parseInt(request.getParameter("kode"));
        supplierDAO.deleteSupplier(kode);
        response.sendRedirect("list");

    }
}
