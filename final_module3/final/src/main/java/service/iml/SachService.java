package service.iml;

import model.Sach;
import responsitory.ISachReponsitory;
import responsitory.iml.SachReponsitory;
import service.ISachService;

import java.util.List;

public class SachService implements ISachService {
    ISachReponsitory sachReponsitory = new SachReponsitory();
    @Override
    public List<Sach> findAll() {
        return sachReponsitory.findAll();
    }
}
