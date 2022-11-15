
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
<h2 style="text-align: center">Danh sách thống kê sách đang mượn</h2>

<table class="table table-striped">
    <tr>
        <th>Mã mượn sách</th>
        <th>Tên sách</th>
        <th>Tác giả</th>
        <th>Tên học sinh</th>
        <th>Lớp</th>
        <th>Ngày mượn</th>
        <th>Ngày trả</th>
        <th>Action</th>
    </tr>
    <c:forEach var="rom" items="${hocSinhtheMuonSachListList}" varStatus="status">
        <tr>
            <td>MS-000${rom.getMaMuongSach()}</td>
            <c:forEach var="sach" items="${sachList}">
                <c:if test="${sach.getMaSach() == rom.getMaSach_fk()}">
                    <td>${sach.getTenSach()}</td>
                </c:if>
            </c:forEach>
            <c:forEach var="sach" items="${sachList}">
                <c:if test="${sach.getMaSach() == rom.getMaSach_fk()}">
                    <td>${sach.getTacGia()}</td>
                </c:if>
            </c:forEach>
            <c:forEach var="hs" items="${hocSinhList}">
                <c:if test="${hs.getMaHocSinh() == rom.getMaHocSinh_fk()}">
                    <td>${hs.getHoTen()}</td>
                </c:if>
            </c:forEach>
            <c:forEach var="hs" items="${hocSinhList}">
                <c:if test="${hs.getMaHocSinh() == rom.getMaHocSinh_fk()}">
                    <td>${hs.getLop()}</td>
                </c:if>
            </c:forEach>
            <td>${rom.getNgayMuong()}</td>
            <td>${rom.getNgayTra()}</td>
            <td>
                <button type="button" class="btn btn-outline-primary btn-update">
                    trả sách
                </button>
                <!-- Button trigger modal update-->
<%--                <button type="button" onclick="infoDelete('${rom.getIdRoom()}','${rom.getNameCustomer() }')" class="btn btn-danger" data-bs-toggle="modal" data-bs-target="#exampleModal">--%>
<%--                    Delete--%>
<%--                </button>--%>
            </td>
        </tr>
    </c:forEach>
</table>




<!-- Modal delete -->
<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <%--        sửa ở đây--%>
        <form action="/room?action=delete" method="get">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <input name="action" value="delete" hidden>
                    <input name="deleteId" id="deleteId" hidden>
                    <span class="text-danger">Bạn có muốn xoá khách hàng </span><span id="deleteName"></span>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                    <button type="submit" class="btn btn-primary">Delete</button>
                </div>
            </div>
        </form>
    </div>
</div>
</body>
<script>
    <%--                    sửa ở đây--%>
    function infoDelete(id, name) {
        document.getElementById("deleteId").value=id;
        document.getElementById("deleteName").innerText=name;
    }
</script>
</html>
