<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Search Product</title>
  <style>
    body {
      font-family: Arial, sans-serif;
      background:#f0f2f5;
      display:flex;
      justify-content:center;
      align-items:center;
      height:100vh;
      margin:0;
    }
    .form-box {
      background:#fff;
      padding:30px;
      border-radius:8px;
      box-shadow:0 4px 8px rgba(0,0,0,0.1);
      width:450px;
      text-align:center;
    }
    .form-box h2 {
      margin-bottom:20px;
      color:#333;
    }
    .form-box input {
      width:90%;
      padding:10px;
      margin:8px 0;
      border:1px solid #ccc;
      border-radius:4px;
    }
    .form-box input[type="submit"] {
      background:#f39c12;
      color:white;
      font-weight:bold;
      cursor:pointer;
    }
    .form-box input[type="submit"]:hover {
      background:#d35400;
    }
    table {
      margin:20px auto;         
      border-collapse: collapse;
      width: 100%;               
    }
    th, td {
      border:1px solid #ccc;
      padding:10px;
      text-align:center;
    }
    th {
      background:#f39c12;
      color:white;
    }
  </style>
</head>
<body>
  <div class="form-box">
    <h2>Search Product</h2>
    <form action="search" method="get">
      <input type="text" name="pid" placeholder="Product ID" required>
      <input type="text" name="pname" placeholder="Product Name">
      <input type="submit" value="Search Product">
    </form>
    <form action="home.jsp">
      <input type="submit" value="Home">
    </form>
    <br>

    <c:if test="${not empty list}">
      <table>
        <tr>
          <th>PID</th>
          <th>PNAME</th>
          <th>Price</th>
          <th>PQTY</th>
        </tr>
        <c:forEach var="item" items="${list}">
          <tr>
            <td><c:out value="${item.pid}" /></td>
            <td><c:out value="${item.pname}" /></td>
            <td><c:out value="${item.price}" /></td>
            <td><c:out value="${item.qty}" /></td>
          </tr>
        </c:forEach>
      </table>
    </c:if>

  </div>
</body>
</html>