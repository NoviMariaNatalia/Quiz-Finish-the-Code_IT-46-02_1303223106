<%-- 
    Document   : UserList
    Created on : 11 Dec 2024, 13.30.40
    Author     : Novi Maria Natalia
--%>

<%@ page import="Model.User" %>
<%@ page import="java.util.List" %>
<!DOCTYPE html>
<html>
<head>
    <title>User List</title>
</head>
<body>
    <h1>User List</h1>
    <table border="1">
        <tr>
            <th>ID</th>
            <th>Username</th>
            <th>Full Name</th>
            <th>Action</th>
        </tr>
        <%
            List<User> users = (List<User>) request.getAttribute("users");
            if (users != null) {
                for (User user : users) {
        %>
        <tr>
            <td><%= user.getId() %></td>
            <td><%= user.getUsername() %></td>
            <td><%= user.getFullName() %></td>
            <td>
                <a href="EditUserServlet?id=<%= user.getId() %>">Edit</a>
                <a href="DeleteUserServlet?id=<%= user.getId() %>">Delete</a>
            </td>
        </tr>
        <% 
                }
            }
        %>
    </table>
    <a href="addUser.jsp">Tambah User Baru</a>
</body>
</html>
