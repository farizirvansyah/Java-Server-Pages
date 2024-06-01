<%-- 
    Document   : Login
    Created on : 9 Apr 2024, 12.25.26
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login Page</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #E4E9F7;
            margin: 0;
            padding: 0;
        }
        .navbar {
            background-color: #1d1b31;
            overflow: hidden;
        }
        .navbar a {
            float: left;
            display: block;
            color: #f2f2f2;
            text-align: center;
            padding: 14px 20px;
            text-decoration: none;
        }
        .navbar a:hover {
            background-color: #ddd;
            color: black;
        }
        .container {
            padding: 20px;
            margin: auto;
            width: 300px;
            background-color: #fff;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            margin-top: 50px;
        }
        input[type=text], input[type=password] {
            width: 100%;
            padding: 12px 20px;
            margin: 8px 0;
            display: inline-block;
            border: 1px solid #ccc;
            box-sizing: border-box;
            border-radius: 4px;
        }
        button {
            background-color: #4CAF50;
            color: white;
            padding: 14px 20px;
            margin: 8px 0;
            border: none;
            cursor: pointer;
            width: 100%;
            border-radius: 4px;
        }
        button:hover {
            opacity: 0.8;
        }
    </style>
</head>
<body>
    <div class="navbar">
        <a href="#home">Home</a>
        <a href="#about">About</a>
        <a href="#contact">Contact</a>
    </div>
    <div class="container">
        <h2>Login</h2>
        <form action="<%=request.getContextPath()%>/Login" method="post">
            <label for="username"><b>Username</b></label>
            <input type="text" placeholder="Username" name="username" required>
            <label for="password"><b>Password</b></label>
            <input type="password" placeholder="Password" name="password" required>
            <button type="submit">Login</button>
        </form>
    </div>
</body>
</html>
