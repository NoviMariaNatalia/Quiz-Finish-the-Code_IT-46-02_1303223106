<%-- 
    Document   : welcome
    Created on : 11 Dec 2024, 13.31.45
    Author     : Novi Maria Natalia
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="Model.User" %>
<%
    User user = (User) session.getAttribute("user");
    if (user == null) {
        response.sendRedirect("login.jsp");
        return;
    }
%>
<!DOCTYPE html>
<html>
<head>
    <title>Welcome</title>
</head>
<body>
    <h1>Selamat Datang, <%= user.getUsername() %>!</h1>
    <a href="UserListServlet">Kelola Pengguna</a><br>
    <a href="LogoutController">Logout</a>
</body>
</html>
