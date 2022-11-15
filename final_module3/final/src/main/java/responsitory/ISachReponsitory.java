package responsitory;

import model.Sach;

import java.sql.SQLException;
import java.util.List;

public interface ISachReponsitory {
    List<Sach> findAll();
}
