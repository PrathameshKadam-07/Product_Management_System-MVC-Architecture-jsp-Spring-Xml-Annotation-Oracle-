<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Product Management System</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background: #f0f2f5;
        margin: 0;
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
    }
    .container {
        background: #fff;
        padding: 40px;
        border-radius: 10px;
        box-shadow: 0 6px 12px rgba(0,0,0,0.1);
        text-align: center;
        width: 400px;
    }
    h1 {
        margin-bottom: 30px;
        color: #333;
    }
    .btn {
        display: block;
        width: 100%;
        padding: 12px;
        margin: 10px 0;
        background: #3498db;      
        color: white;
        text-decoration: none;
        font-weight: bold;
        border-radius: 6px;
        transition: background 0.3s ease;
    }
    .btn:hover {
        background: #2980b9;    
    }
</style>
</head>
<body>
    <div class="container">
        <h1>🏠 Home Page</h1>
        <a href="addProduct" class="btn">➕ Add Product</a>
        <a href="deleteProduct" class="btn">🗑 Delete Product</a>
        <a href="updateProduct" class="btn">✏️ Update Product</a>
        <a href="showbyidProduct" class="btn">🔍 Show Product by ID</a>
        <a href="showallProduct" class="btn">📋 Show All Products</a>
    </div>
</body>
</html>