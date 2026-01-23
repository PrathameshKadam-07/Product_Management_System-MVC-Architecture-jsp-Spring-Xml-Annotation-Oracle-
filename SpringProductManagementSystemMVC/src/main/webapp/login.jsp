<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login Page</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background: #f0f2f5;
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
        margin: 0;
    }
    .login-box {
        background: #fff;
        padding: 40px;
        border-radius: 10px;
        box-shadow: 0 6px 12px rgba(0,0,0,0.1);
        width: 350px;
        text-align: center;
    }
    h2 {
        margin-bottom: 20px;
        color: #333;
    }
    input[type="text"], input[type="password"] {
        width: 90%;
        padding: 10px;
        margin: 10px 0;
        border: 1px solid #ccc;
        border-radius: 6px;
    }
    input[type="submit"] {
        width: 95%;
        padding: 12px;
        background: #f39c12;   
        color: white;
        font-weight: bold;
        border: none;
        border-radius: 6px;
        cursor: pointer;
        transition: background 0.3s ease;
    }
    input[type="submit"]:hover {
        background: #d35400;   /* darker orange on hover */
    }
    .msg {
        margin-top: 10px;
        color: red;
        font-weight: bold;
    }
</style>
</head>
<body>
    <div class="login-box">
        <h2>🔐 Login</h2>
        <form action="auth" method="post">
            <input type="text" name="uname" placeholder="Username" required><br>
            <input type="password" name="pass" placeholder="Password" required><br>
            
            <c:if test="${not empty msg}">
                <div class="msg"><c:out value="${msg}" /></div>
            </c:if>
            
            <input type="submit" value="Login">
        </form>
    </div>
</body>
</html>