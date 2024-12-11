<%-- 
    Document   : editUser
    Created on : 11 Dec 2024, 13.31.10
    Author     : Novi Maria Natalia
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="Model.User" %>
<%
    User user = (User) request.getAttribute("user");
%>
<!DOCTYPE html>
<html>
<head>
    <title>Edit User</title>
</head>
<body>
    <h1>Edit User</h1>
    <form action="EditUserServlet" method="post">
        <input type="hidden" name="id" value="<%= user.getId() %>" />
        
        <label for="username">Username:</label>
        <input type="text" name="username" value="<%= user.getUsername() %>" required /><br>
        
        <label for="password">Password:</label>
        <input type="password" name="password" value="<%= user.getPassword() %>" required /><br>
        
        <label for="fullName">Full Name:</label>
        <input type="text" name="fullName" value="<%= user.getFullName() %>" required /><br>
        
        <button type="submit">Update User</button>
    </form>
    <a href="UserListServlet">Kembali ke User List</a>
</body>
</html>
