
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
            crossorigin="anonymous"></script>
    <style>
        .add {
            color: blue;
            text-decoration: none;
            padding: 20px;
            border: 1px solid cornflowerblue;
            border-radius: 10px;
            margin-left: 5px;
        }

        .add:hover {
            color: white;
            background-color: cornflowerblue;
        }

        table {
            margin-top: 40px;
        }

        td {
            text-align: center;

        }

        th {
            text-align: center;
        }
        .btn-update>a{
            text-decoration: none;
            color: blue;
        }
        .btn-update>a:hover{
            color: white;
        }
        .search{
            margin-left: 700px;
        }
        .search > input {
            border-radius: 5px;
            border: 1px solid blue ;
            outline: none;
        }
        .search > select{
            border-radius: 5px;
            border: 1px solid blue ;
            outline: none;
        }
        .search > button{
            border-radius: 5px;
            border: 1px solid blue ;
            outline: none;
        }
    </style>
</head>
<body>
<h2 style="text-align: center">Danh sách Sách</h2>
<a class="add" href="/sach?action=showTK">Thống kê danh sách đang mượn</a>
<table class="table table-striped">
    <tr>
        <th>Mã sách</th>
        <th>Tên sách</th>
        <th>Tác giả</th>
        <th>Số lượng</th>
        <th>Mô tả</th>
        <th>Action</th>
    </tr>
    <c:forEach var="rom" items="${sachList}" varStatus="status">
        <tr>
            <td>S-000${rom.getMaSach()}</td>
            <td>${rom.getTenSach()}</td>
            <td>${rom.getTacGia()}</td>
            <td>${rom.getSoLuong()}</td>
            <td>${rom.getMoTa()}</td>
            <td>
                <button type="button" class="btn btn-outline-primary btn-update">
                    <a href="/sach?action=create"> Mượn</a>
                </button>
            </td>
        </tr>
    </c:forEach>
</table>
</body>

</html>
