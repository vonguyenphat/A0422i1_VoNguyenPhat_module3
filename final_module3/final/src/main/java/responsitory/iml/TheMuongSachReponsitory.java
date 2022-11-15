package responsitory.iml;

import model.Sach;
import model.TheMuonSach;
import responsitory.ITheMuongSachReponsitory;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class TheMuongSachReponsitory implements ITheMuongSachReponsitory {
    private static final String INSERT_SACH_SQL = "insert into TheMuongSach(maSach,maHocSinh,trangThai,ngayMuong,ngayTra) values (?,? ,?,?, ?);";
    private static final String SELECT_ALL_THEMUONGSACH = "select*from TheMuongSach;";

    @Override
    public void insert(TheMuonSach theMuonSach) throws SQLException {
        try (Connection connection = BaseRepository.getConnectDB(); PreparedStatement preparedStatement = connection.prepareStatement(INSERT_SACH_SQL)) {
            preparedStatement.setInt(1, theMuonSach.getMaSach_fk());
            preparedStatement.setInt(2, theMuonSach.getMaHocSinh_fk());
            preparedStatement.setBoolean(3, theMuonSach.getTrangThai());
            preparedStatement.setDate(4, Date.valueOf(theMuonSach.getNgayMuong()));
            preparedStatement.setDate(5, Date.valueOf(theMuonSach.getNgayTra()));
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    @Override
    public List<TheMuonSach> findAll() {
        List<TheMuonSach> theMuonSaches = new ArrayList<>();
        try (Connection connection = BaseRepository.getConnectDB();
             PreparedStatement preparedStatement = connection.prepareStatement(SELECT_ALL_THEMUONGSACH)) {
            ResultSet rs = preparedStatement.executeQuery();
            while (rs.next()) {
                int maMuongSach = rs.getInt("maMuongSach");
                int maSach_fk = rs.getInt("maSach");
                int maHocSinh_fk = rs.getInt("maHocSinh");
                boolean trangThai = rs.getBoolean("trangThai");
                String ngayMuong = rs.getString("ngayMuong");
                String ngayTra = rs.getString("ngayTra");
                TheMuonSach theMuonSach = new TheMuonSach(maMuongSach, maSach_fk, maHocSinh_fk, trangThai, ngayMuong, ngayTra);
                theMuonSaches.add(theMuonSach);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return theMuonSaches;
    }
}
