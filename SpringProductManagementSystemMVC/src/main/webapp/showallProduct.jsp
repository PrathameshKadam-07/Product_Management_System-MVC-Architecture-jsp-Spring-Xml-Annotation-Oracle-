<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Product List</title>
<style>
    table {
        border: 5px solid black;
        width: 60%;              /* Adjust width as needed */
        margin: 20px auto;       /* Centers the table */
        border-collapse: collapse;
        text-align: center;
    }
    th, td {
        padding: 10px;
        border: 1px solid black;
    }
</style>
</head>
<body>
<c:if test="${not empty list}">
    <table>
        <tr>
            <th>PID</th>
            <th>PNAME</th>
            <th>PQTY</th>
            <th>PRICE</th>
        </tr>
        <c:forEach var="item" items="${list}">
            <tr>
                <td><c:out value="${item.pid}" /></td>
                <td><c:out value="${item.pname}" /></td>
                <td><c:out value="${item.qty}" /></td>
                <td><c:out value="${item.price}" /></td>
            </tr>
        </c:forEach>
    </table>
</c:if>
</body>
</html>