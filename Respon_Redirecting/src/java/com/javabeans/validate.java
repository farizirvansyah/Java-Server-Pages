/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.javabeans;

import java.io.*;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.WebServlet;

/**
 *
 * @author Administrator
 */
@WebServlet (name = "validate", urlPatterns = {"/validate"})
public class validate extends HttpServlet { 

    /**
     *
     * @param request
     * @param response
     * @throws ServletException
     * @throws IOException
     */
    @Override
    protected void doPost (HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException 
    { 
        response.setContentType("text/html; charset=UTF-8");
        PrintWriter out= response.getWriter();
        try
        {
            String password= request.getParameter("pass");
            if(password.equals("123"))
            {
                RequestDispatcher rd= request.getRequestDispatcher("welcome");
                rd.forward(request, response);
            }
            else
            {
                out.println("<font color='red'<b>You have entered incorrect password</b></font>");
                RequestDispatcher rd= request.getRequestDispatcher("index.jsp");
                rd.include(request, response);
            }
        }
        finally
        {
            out.close();
        }
    }
}