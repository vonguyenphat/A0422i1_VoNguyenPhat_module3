package service.iml;

import model.HocSinh;
import responsitory.IHocSinhReponsitory;
import responsitory.iml.HocSinhReponsitory;
import service.IHocSinhService;

import java.util.List;

public class HocSinhService implements IHocSinhService {
    IHocSinhReponsitory hocSinhReponsitory = new HocSinhReponsitory();
    @Override
    public List<HocSinh> findAll() {
        return hocSinhReponsitory.findAll();
    }
}
