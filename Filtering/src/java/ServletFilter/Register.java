/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package ServletFilter;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import static java.lang.System.out;

/**
 *
 * @author Administrator
 */
@WebServlet(name = "Register", urlPatterns = {"/Register"})
public class Register extends HttpServlet{

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
            out.println("<td>");
            out.println("Name");
            out.println("</td>");
            out.println("<td>");
            out.println(request.getParameter("nama"));
            out.println("</td>");
            out.println("</tr>");
            
            out.println("<tr>");
            out.println("<td>");
            out.println("Address");
            out.println("</td>");
            out.println("<td>");
            out.println(request.getParameter("alamat"));
            out.println("</td>");
            out.println("</tr>");
            
            out.println("<tr>");
            out.println("<td>");
            out.println("Mobile");
            out.println("</td>");
            out.println("<td>");
            out.println(request.getParameter("mobile"));
            out.println("</td>");
            out.println("</tr>");
            
            out.println("<tr>");
            out.println("<td>");
            out.println("Password");
            out.println("</td>");
            out.println("<td>");
            out.println(request.getParameter("password"));
            out.println("</td>");
            out.println("</tr>");
            
            out.println("<tr>");
            out.println("<td>");
            out.println("Ip Address");
            out.println("</td>");
            out.println("<td>");
            out.println(request.getParameter("IPAddress"));
            out.println("</td>");
            out.println("</tr>");
            
            out.println("<tr>");
            out.println("<td>");
            out.println("Time Register");
            out.println("</td>");
            out.println("<td>");
            out.println(request.getParameter("timeReg"));
            out.println("</td>");
            out.println("</tr>");
            
            out.println("</table>");
            out.println("</body>");
            out.println("</html>");
        }
        finally{
            out.close();
        }
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
        System.out.println("do Post");
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
