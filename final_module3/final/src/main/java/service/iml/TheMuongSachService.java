package service.iml;

import model.TheMuonSach;
import responsitory.ITheMuongSachReponsitory;
import responsitory.iml.TheMuongSachReponsitory;
import service.ITheMuongSachService;

import java.sql.SQLException;
import java.util.List;

public class TheMuongSachService implements ITheMuongSachService {
    ITheMuongSachReponsitory theMuongSachReponsitory = new TheMuongSachReponsitory();
    @Override
    public void insert(TheMuonSach theMuonSach) throws SQLException {
        theMuongSachReponsitory.insert(theMuonSach);
    }

    @Override
    public List<TheMuonSach> findAll() {
        return theMuongSachReponsitory.findAll();
    }
}
