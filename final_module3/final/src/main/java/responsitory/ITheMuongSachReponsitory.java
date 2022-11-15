package responsitory;

import model.Sach;
import model.TheMuonSach;

import java.sql.SQLException;
import java.util.List;

public interface ITheMuongSachReponsitory {
    void insert(TheMuonSach theMuonSach) throws SQLException;
    List<TheMuonSach> findAll();
}
