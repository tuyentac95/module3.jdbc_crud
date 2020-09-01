<%--
  Created by IntelliJ IDEA.
  User: Pham Tuyen
  Date: 8/31/2020
  Time: 2:05 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>User Management Application</title>
</head>
<body>
    <center>
        <h1>User Management</h1>
        <h2>
            <a href="/users?action=create">Add New User</a>
        </h2>
        <p>
            <form action="/users">
                <input type="hidden" name="action" value="select">
                <input type="text" name="country" value=""/>
                <input type="submit" value="Search"/>
            </form>
        </p>
    </center>
    <div align="center">
        <table border="1" cellpadding="5">
            <caption><h2>List of Users</h2></caption>
            <tr>
                <th>ID</th>
                <th>Name</th>
                <th>Email</th>
                <th>Country</th>
                <th>Actions</th>
            </tr>
            <c:forEach var="user" items="${listUser}">
                <tr>
                    <td><c:out value="${user.getId()}"/></td>
                    <td><c:out value="${user.getName()}"/></td>
                    <td><c:out value="${user.getEmail()}"/></td>
                    <td><c:out value="${user.getCountry()}"/></td>
                    <td>
                        <a href="/users?action=edit&id=${user.getId()}">Edit</a>
                        <a href="/users?action=delete&id=${user.getId()}">Delete</a>
                    </td>
                </tr>
            </c:forEach>
        </table>
    </div>
</body>
</html>
