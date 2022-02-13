<%@ page import="java.util.List" %>
<%@ page import="authorBook.model.User" %><%--
  Created by IntelliJ IDEA.
  User: User
  Date: 13.02.2022
  Time: 03:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>User page</title>
</head>
<body>

<%
    User user = (User) request.getAttribute("user");
%>



Edit User:
<form action="/editUser" method="post">
    <input type="hidden" name="id" value="<%=user.getId()%>"/><br>
    Name: <input type="text" name="name" value="<%=user.getName()%>"/><br>
    Surname: <input type="text" name="surname" value="<%=user.getSurname()%>"/><br>
    email: <input type="email" name="email"  value="<%=user.getEmail()%>"/><br>
    password: <input type="password" name="password"><br>
    type: <select name="type">
    <option value="USER">USER</option>
    <option value="ADMIN">ADMIN</option>
</select> <br>
    <input type="submit" value="Edit user">
</form>


</body>
</html>
