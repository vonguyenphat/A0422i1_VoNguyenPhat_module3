<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 26/10/2022
  Time: 6:41 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<h1>Customer details</h1>
<p>
    <a href="customer">Back to customer list</a>
</p>
<table>
    <tr>
        <td>Name: </td>
        <td>${requestScope["customerServiceById"].getName()}</td>
    </tr>
    <tr>
        <td>Email: </td>
        <td>${requestScope["customerServiceById"].getEmail()}</td>
    </tr>
    <tr>
        <td>Address: </td>
        <td>${requestScope["customerServiceById"].getAddress()}</td>
    </tr>
</table>
</body>
</html>
