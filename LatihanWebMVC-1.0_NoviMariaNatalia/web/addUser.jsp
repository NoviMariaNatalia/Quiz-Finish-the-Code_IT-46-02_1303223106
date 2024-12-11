<%-- 
    Document   : addUser
    Created on : 11 Dec 2024, 13.46.47
    Author     : Novi Maria Natalia
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Tambah User Baru</title>
</head>
<body>
    <h1>Tambah User Baru</h1>
    <form action="AddUserServlet" method="post">
        <label for="username">Username:</label>
        <input type="text" id="username" name="username" required><br><br>
        
        <label for="password">Password:</label>
        <input type="password" id="password" name="password" required><br><br>
        
        <label for="fullName">Full Name:</label>
        <input type="text" id="fullName" name="fullName" required><br><br>
        
        <button type="submit">Simpan</button>
    </form>
    <a href="UserListServlet">Kembali ke User List</a>
</body>
</html>

