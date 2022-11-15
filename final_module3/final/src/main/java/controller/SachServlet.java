package controller;

import model.HocSinh;
import model.Sach;
import model.TheMuonSach;
import service.IHocSinhService;
import service.ISachService;
import service.ITheMuongSachService;
import service.iml.HocSinhService;
import service.iml.SachService;
import service.iml.TheMuongSachService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

@WebServlet(name = "SachServlet", value = "/sach")
public class SachServlet extends HttpServlet {
    ISachService sachService = new SachService();
    IHocSinhService hocSinhService = new HocSinhService();
    ITheMuongSachService theMuongSachService = new TheMuongSachService();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }

        switch (action) {
            case "create":
                    showNewForm(request, response);
                    break;
                case "showTK":
                    showTK(request, response);
                    break;
//                case "delete":
//                    deleteCustomer(request, response);
//                    break;
//                case "search":
//                    search(request,response);
//                    break;
            default:
                listSach(request, response);
                break;
        }
    }

    private void showTK(HttpServletRequest request, HttpServletResponse response) {
        List<Sach> sachList = sachService.findAll();
        List<HocSinh> hocSinhList = hocSinhService.findAll();
        List<TheMuonSach> theMuonSachList = theMuongSachService.findAll();
        request.setAttribute("sachList", sachList);
        request.setAttribute("hocSinhList", hocSinhList);
        request.setAttribute("hocSinhtheMuonSachListList", theMuonSachList);
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("view/listThongKe.jsp");
        try {
            requestDispatcher.forward(request, response);
        } catch (ServletException | IOException e) {
            e.printStackTrace();
        }
    }

    private void showNewForm(HttpServletRequest request, HttpServletResponse response) {
        List<Sach> sachList = sachService.findAll();
        List<HocSinh> hocSinhList = hocSinhService.findAll();
        request.setAttribute("sachList", sachList);
        request.setAttribute("hocSinhList", hocSinhList);
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("view/create.jsp");
        try {
            requestDispatcher.forward(request, response);
        } catch (ServletException | IOException e) {
            e.printStackTrace();
        }
    }

    private void listSach(HttpServletRequest request, HttpServletResponse response) {
        List<Sach> sachList = sachService.findAll();
        request.setAttribute("sachList", sachList);
        RequestDispatcher dispatcher = request.getRequestDispatcher("view/listSach.jsp");
        try {
            dispatcher.forward(request, response);
        } catch (ServletException | IOException e) {
            e.printStackTrace();
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }
        switch (action) {
            case "create":
                insertUser(request, response);
                break;
//            case "edit":
////                updateCustomer(request, response);
////                break;
        }
    }

    private void insertUser(HttpServletRequest request, HttpServletResponse response) {
        int maSach_fk = Integer.parseInt(request.getParameter("maSach_fk"));
        int maHocSinh_fk = Integer.parseInt(request.getParameter("maHocSinh_fk"));
        boolean trangThai =  Boolean.parseBoolean(request.getParameter("trangThai"));
        String ngayMuong = request.getParameter("ngayMuong");
        String ngayTra = request.getParameter("ngayTra");

        TheMuonSach theMuonSach = new TheMuonSach(maSach_fk,maHocSinh_fk,trangThai,ngayMuong,ngayTra);
        try {
            theMuongSachService.insert(theMuonSach);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        String mess = "Successfully Added New";
        request.setAttribute("mess", mess);
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("view/create.jsp");
        try {
            requestDispatcher.forward(request, response);
        } catch (ServletException | IOException e) {
            e.printStackTrace();
        }
    }
}
