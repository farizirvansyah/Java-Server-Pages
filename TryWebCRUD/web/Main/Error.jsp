<%-- 
    Document   : Error
    Created on : 6 Mei 2024, 17.10.06
    Author     : Administrator
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Error</title>
        <style>
            body {
                font-family: Arial, sans-serif;
                background-color: #f4f4f4;
                margin: 0;
                padding: 0;
                display: flex;
                justify-content: center;
                align-items: center;
                height: 100vh;
            }
            .error-container {
                text-align: center;
            }
            .error-code {
                font-size: 72px;
                margin-bottom: 20px;
            }
            .error-message {
                font-size: 24px;
                margin-bottom: 20px;
            }
        </style>
    </head>
    <body>
        <div class="error-container">
            <div class="error-code">Error</div>
            <div class="error-message">
                Oops! Something went wrong.
            </div>
            <div>
                <a href="javascript:history.back()">Go Back</a>
            </div>
        </div>
    </body>
</html>