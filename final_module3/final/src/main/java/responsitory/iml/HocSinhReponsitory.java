package responsitory.iml;

import model.HocSinh;
import model.Sach;
import model.TheMuonSach;
import responsitory.IHocSinhReponsitory;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class HocSinhReponsitory implements IHocSinhReponsitory {
    private static final String SELECT_ALL_HOCSINH = "select*from hocSinh;" ;

    @Override
    public List<HocSinh> findAll() {
        List<HocSinh> hocSinhs = new ArrayList<>();
        try (Connection connection = BaseRepository.getConnectDB();
             PreparedStatement preparedStatement = connection.prepareStatement(SELECT_ALL_HOCSINH)) {
            ResultSet rs = preparedStatement.executeQuery();
            while (rs.next()) {
                int maHocSinh = rs.getInt("maHocSinh");
                String hoTen = rs.getString("hoTen");
                String lop = rs.getString("lop");
                HocSinh hocSinh = new HocSinh(maHocSinh,hoTen,lop);
                hocSinhs.add(hocSinh);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return hocSinhs;
    }
}
