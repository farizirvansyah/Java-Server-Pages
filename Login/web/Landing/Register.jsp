<%-- 
    Document   : Register
    Created on : 9 Apr 2024, 12.26.12
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Register Page</title>
    <style>
        /* CSS styles here */
    </style>
</head>
<body>
    <div class="navbar">
        <a href="#home">Home</a>
        <a href="#about">About</a>
        <a href="#contact">Contact</a>
    </div>
    <div class="container">
        <h2>Register</h2>
        <form action="register.jsp" method="post">
            <label for="username"><b>Username</b></label>
            <input type="text" placeholder="Enter Username" name="username" required>
            <label for="password"><b>Password</b></label>
            <input type="password" placeholder="Enter Password" name="password" required>
            <button type="submit">Register</button>
        </form>
    </div>
    <%!
        // JDBC driver name and database URL
        static final String JDBC_DRIVER = "com.mysql.jdbc.Driver";
        static final String DB_URL = "jdbc:mysql://localhost/mydatabase";

        // Database credentials
        static final String USER = "username";
        static final String PASS = "password";
    %>
    <%@page import="java.io.*,java.util.*,java.sql.*"%>
    <%
        Connection conn = null;
        Statement stmt = null;
        try {
            // Register JDBC driver
            Class.forName(JDBC_DRIVER);

            // Open a connection
            conn = DriverManager.getConnection(DB_URL, USER, PASS);

            // Execute SQL query
            stmt = conn.createStatement();
            String sql;
            sql = "INSERT INTO users (username, password) VALUES (?, ?)";
            PreparedStatement preparedStatement = conn.prepareStatement(sql);
            preparedStatement.setString(1, request.getParameter("username"));
            preparedStatement.setString(2, request.getParameter("password"));
            preparedStatement.executeUpdate();

            // Close all resources
            preparedStatement.close();
            stmt.close();
            conn.close();
        } catch (SQLException se) {
            // Handle errors for JDBC
            se.printStackTrace();
        } catch (Exception e) {
            // Handle errors for Class.forName
            e.printStackTrace();
        } finally {
            // Finally block to close resources
            try {
                if (stmt != null) stmt.close();
            } catch (SQLException se2) {
            } // nothing we can do
            try {
                if (conn != null) conn.close();
            } catch (SQLException se) {
                se.printStackTrace();
            } // end finally try
        } // end try
    %>
</body>
</html>
