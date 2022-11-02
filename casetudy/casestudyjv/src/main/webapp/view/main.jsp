<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 1/11/2022
  Time: 5:40 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
            crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"
            integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p"
            crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js"
            integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF"
            crossorigin="anonymous"></script>
    <style>
        body{
            margin: 0;
            padding: 0;
        }
        .nav {
            display: flex;
        }

        .nav > li {

            padding-left: 68px;
        }

        a {
            text-decoration: none;
            color: black;
        }

        li {
            list-style: none;
        }

        .row {
            border-style: solid;
            border-width: 1px;
        }
    </style>
</head>
<body>
<div>
    <div class="row">
        <div class="col-6"><p>logo</p></div>
        <div class="col-6"><p>Nguyen Van A</p></div>
    </div>
    <div class="row ">
        <ul class="nav">
            <li><a href="">Home</a></li>
            <li><a href="">Employee</a></li>
            <li><a href="">Customer</a></li>
            <li><a href="">Service</a></li>
            <li><a href="">Contract</a></li>
            <li><input type="text"></li>
        </ul>
    </div>
    <div class="row">
        <div class="col-3">
            <div class="row">
                <ul>
                    <li><a href="">Item One</a></li>
                    <li><a href="">Item Two</a></li>
                    <li><a href="">Item Three</a></li>
                </ul>
            </div>
        </div>
        <div class="col-9">
        </div>
    </div>
    <div class="row">
        <p style="text-align: center">footer</p>
    </div>
</div>
</body>
</html>
