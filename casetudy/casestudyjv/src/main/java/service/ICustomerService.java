package reponsitory;

import model.Customer;

import java.sql.SQLException;
import java.util.List;

public interface ICustomerRepository {
    void insertCustomer(Customer room) throws SQLException;

    List<Customer> selectAllCustomer();

    boolean deleteCustomer(int customer_id) throws SQLException;

    boolean updateCustomer(Customer customer) throws SQLException;

    List<Customer> search(String customer_name);
}
