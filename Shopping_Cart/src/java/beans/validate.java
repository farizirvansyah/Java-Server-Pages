/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package beans;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.io.IOException;

/**
 *
 * @author Administrator
 */
@WebServlet(name = "validate", urlPatterns = {"/validate"})
public class validate extends HttpServlet { 

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

        String username = request.getParameter("uname");
        String password = request.getParameter("pass");

        try {
            if (password.equals("123")) {
                HttpSession session = request.getSession();
                session.setAttribute("username", username);
                response.sendRedirect("index.jsp");
            } else {
                String alertMessage = "Username atau Password Anda salah.";
                HttpSession session = request.getSession();
                session.setAttribute("alert", alertMessage);
                session.setAttribute("username", username);
                response.sendRedirect("login.jsp?alert=1");
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
