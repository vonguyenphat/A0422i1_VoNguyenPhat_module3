package model;

public class TheMuonSach {
    private int maMuongSach;
    private int maSach_fk;
    private int maHocSinh_fk;
    private boolean trangThai;
    private String ngayMuong;
    private String ngayTra;

    public TheMuonSach(int maMuongSach, int maSach_fk, int maHocSinh_fk, boolean trangThai, String ngayMuong, String ngayTra) {
        this.maMuongSach = maMuongSach;
        this.maSach_fk = maSach_fk;
        this.maHocSinh_fk = maHocSinh_fk;
        this.trangThai = trangThai;
        this.ngayMuong = ngayMuong;
        this.ngayTra = ngayTra;
    }

    public TheMuonSach(int maSach_fk, int maHocSinh_fk, boolean trangThai, String ngayMuong, String ngayTra) {
        this.maSach_fk = maSach_fk;
        this.maHocSinh_fk = maHocSinh_fk;
        this.trangThai = trangThai;
        this.ngayMuong = ngayMuong;
        this.ngayTra = ngayTra;
    }

    public int getMaMuongSach() {
        return maMuongSach;
    }

    public void setMaMuongSach(int maMuongSach) {
        this.maMuongSach = maMuongSach;
    }

    public int getMaSach_fk() {
        return maSach_fk;
    }

    public void setMaSach_fk(int maSach_fk) {
        this.maSach_fk = maSach_fk;
    }

    public int getMaHocSinh_fk() {
        return maHocSinh_fk;
    }

    public void setMaHocSinh_fk(int maHocSinh_fk) {
        this.maHocSinh_fk = maHocSinh_fk;
    }

    public boolean getTrangThai() {
        return trangThai;
    }

    public void setTrangThai(boolean trangThai) {
        this.trangThai = trangThai;
    }

    public String getNgayMuong() {
        return ngayMuong;
    }

    public void setNgayMuong(String ngayMuong) {
        this.ngayMuong = ngayMuong;
    }

    public String getNgayTra() {
        return ngayTra;
    }

    public void setNgayTra(String ngayTra) {
        this.ngayTra = ngayTra;
    }
}
