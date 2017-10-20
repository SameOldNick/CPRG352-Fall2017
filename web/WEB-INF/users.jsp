<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Manage Users</title>
        <style>
        body {
            background-color: #ff0066;
        }
        </style>
    </head>
    <body>
        <h1>Manage Users</h1>
        <h2>Users</h2>
        <table>
                <tr>
                    <th>Username</th>
                    <th>First Name</th>
                    <th>Last Name</th>
                    <th>Email</th>
                    <th>Delete</th>
                    <th>Edit</th>
                </tr>
                <c:forEach var="user" items="${users}">
                    <tr>
                        <td>${user.username}</td>
                        <td>${user.firstname}</td>
                        <td>${user.lastname}</td>
                        <td>${user.email}</td>
                        <td>
                            <form action="users" method="POST" >
                                <input type="submit" value="Delete">
                                <input type="hidden" name="action" value="delete"> 
                            </form>
                        </td>
                        <td>
                            <form action="users" method="POST">
                                <input type="submit" value="Edit">
                                <input type="hidden" name="action" value="edit">
                            </form>
                        </td>
                    </tr>
                </c:forEach>
        </table>
        <c:if test="${1 == 1}">
            <h3>Add User</h3>
            <form action="users" method="POST">
                <input type="text" name="username"><br>
                <input type="text" name="firstname"><br>
                <input type="text" name="lastname"><br>
                <input type="text" name="password"><br>
                <input type="text" name="email"><br>
                <input type="hidden" name="action" value="add">
                <input type="submit" value="Save">
            </form>
        </c:if>
        <c:if test="${1 == 1}">
            <h3>Edit User</h3>
            <form action="users" method="POST">
                <input type="text" name="firstname"><br>
                <input type="text" name="lastname"><br>
                <input type="text" name="password"><br>
                <input type="text" name="email"><br>
                <input type="hidden" name="action" value="edit">
                <input type="submit" value="Save">
            </form>
        </c:if>
    </body>
</html>
