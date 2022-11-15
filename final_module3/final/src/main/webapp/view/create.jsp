<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <title>Title</title>
    <style>
        body {
            margin: 0;
            padding: 0;
            background: linear-gradient(45deg, wheat, mediumslateblue);
            height: 200vh;
        }

        /*back ve list*/
        .btn-sm > a {
            text-decoration: none;
            color: white;
        }

        /*css thẻ a để quay về*/
        .btn-secondary {
            margin-top: 10px;
        }

        /*css button*/
        .btn {
            margin-left: 70px;
            padding: 10px 20px;
        }

        input {
            border-radius: 5px;
            border: none;
            outline: none;

        }

        /*css  input type number*/
        input[type=number]::-webkit-inner-spin-button {
            -webkit-appearance: none;
        }

        /*sửa boder css*/
        .select-css {
            border-radius: 5px;
            border: none;
            outline: none;

        }

        .main {
            margin-top: 100px;
            background: lightgray;
            border-radius: 10px;
        }

        h1 {
            padding-left: 100px;
            color: red;
        }
    </style>
</head>
<body>
<div class="row">
    <div class="col-4">
    </div>
    <div class="col-4 main">
        <form action="/sach?action=create" method="post">
            <h1>Thêm mới</h1>
            <pre>Tên sách         : <select required class="select-css" style="font-size: 20px; width: 100px"
                                            name="maSach_fk">
                <c:forEach var="cls" items="${sachList}">
                    <option value="${cls.getMaSach()}">${cls.getTenSach()}</option>
                </c:forEach>
            </select></pre>
            <pre>Tên Học Sinh     : <select required class="select-css" style="font-size: 20px; width: 100px"
                                            name="maHocSinh_fk">
                <c:forEach var="cls" items="${hocSinhList}">
                    <option value="${cls.getMaHocSinh()}">${cls.getHoTen()}</option>
                </c:forEach>
            </select></pre>
            <input required type="text" name="trangThai" hidden value="${true}">
            <pre>Ngày mượng       : <input required type="date" name="ngayMuong"></pre>
            <pre>Ngày trả         : <input required type="date" name="ngayTra"></pre>
            <button type="submit" class="btn btn-primary btn-sm">Mượn</button>
        </form>
        <button type="button" class="btn btn-secondary  btn-sm"><a href="/sach">Hủy</a></button>
        <c:if test="${mess!=null}">
            <p style="color: red">${mess}</p>
        </c:if>
    </div>
    <div class="col-4">

    </div>
</div>

</body>
</html>
