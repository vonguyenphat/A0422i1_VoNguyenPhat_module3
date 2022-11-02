package reponsitory;

import model.Customer;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class imlCustomerReponsitory extends BaseRepository implements CustomerReponsitory  {
    private final String SELECT_ALL = "select * from customer;";

    private final String INSERT_STUDENT =     "INSERT INTO customer" + "  (name, email, address) VALUES " +
            " (?, ?, ?);";


    @Override
    public List<Customer> findAll() {
        // kết nối db để láy dữ liệu

        List<Customer> customerList = new ArrayList<>();
        Connection connection = BaseRepository.getConnectDB();
        PreparedStatement pr = null;
        try {
            pr = connection.prepareStatement(SELECT_ALL);
            ResultSet resultSet = pr.executeQuery();
            while (resultSet.next()) {
                int id = resultSet.getInt("id");
                String name = resultSet.getString("name");
                String email = resultSet.getString("email");
                String address = resultSet.getString("address");
                Customer customer = new Customer(id, name, email, address);
                customerList.add(customer);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return customerList;
    }

    @Override
    public void save(Customer customer) {

        System.out.println(INSERT_STUDENT);
        // try-with-resource statement will auto close the connection.
        try (Connection connection = getConnectDB(); PreparedStatement preparedStatement = connection.prepareStatement(INSERT_STUDENT)) {
            preparedStatement.setString(1, customer.getName());
            preparedStatement.setString(2, customer.getEmail());
            preparedStatement.setString(3, customer.getAddress());
            System.out.println(preparedStatement);
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    @Override
    public Customer findById(int id) {
        return null;
    }

    @Override
    public void update(int id, Customer customer) {

    }

    @Override
    public void remove(int id) {
    }
}
