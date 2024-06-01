/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package ServletTest;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import static java.lang.System.out;
import java.util.Date;

/**
 *
 * @author Administrator
 */
@WebServlet(name = "Test", urlPatterns = {"/Test"})
public class Test extends HttpServlet {

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
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Filter Register</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Parameter and Attribute Request</h1>");
            out.println("<table>");

            out.println("<tr>");
            out.println("<td>Name</td>");
            out.println("<td>" + request.getParameter("nama") + "</td>");
            out.println("</tr>");

            out.println("<tr>");
            out.println("<td>Address</td>");
            out.println("<td>" + request.getParameter("alamat") + "</td>");
            out.println("</tr>");

            out.println("<tr>");
            out.println("<td>Mobile</td>");
            out.println("<td>" + request.getParameter("mobile") + "</td>");
            out.println("</tr>");

            out.println("<tr>");
            out.println("<td>Password</td>");
            out.println("<td>" + request.getParameter("password") + "</td>");
            out.println("</tr>");

            out.println("<tr>");
            out.println("<td>Ip Address</td>");
            out.println("<td>" + request.getRemoteAddr() + "</td>");
            out.println("</tr>");

            out.println("<tr>");
            out.println("<td>Time Register</td>");
            out.println("<td>" + new Date() + "</td>");
            out.println("</tr>");

            out.println("</table>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    /**
     *
     * @return
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }
}
