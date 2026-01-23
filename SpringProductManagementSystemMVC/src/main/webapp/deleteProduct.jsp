<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Delete Product</title>
  <style>
    body {font-family: Arial, sans-serif;background:#f0f2f5;display:flex;justify-content:center;align-items:center;height:100vh;margin:0;}
    .form-box {background:#fff;padding:30px;border-radius:8px;box-shadow:0 4px 8px rgba(0,0,0,0.1);width:350px;text-align:center;}
    .form-box h2 {margin-bottom:20px;color:#333;}
    .form-box input {width:90%;padding:10px;margin:8px 0;border:1px solid #ccc;border-radius:4px;}
    .form-box input[type="submit"] {background:#dc2626;color:white;font-weight:bold;cursor:pointer;}
    .form-box input[type="submit"]:hover {background:#b91c1c;}
</style>
</head>
<body>
  <div class="form-box">
    <h2>Delete Product</h2>
    <form action="delete" method="post">
      <input type="number" name="pid" placeholder="Product ID" required>
      <input type="submit" value="Delete Product">
    </form>
    
    <c:if test="${not empty msg}">
    <c:out value="${msg}"></c:out>
    </c:if>
    
    <form action="home.jsp">
      <input type="submit" value="Home">
    </form>
  </div>
</body>
</html>
