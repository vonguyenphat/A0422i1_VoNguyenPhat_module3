package service;

import model.TheMuonSach;

import java.sql.SQLException;
import java.util.List;

public interface ITheMuongSachService {
    void insert(TheMuonSach theMuonSach) throws SQLException;
    List<TheMuonSach> findAll();
}
