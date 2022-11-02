package service;

import model.Customer;

import java.util.List;

public interface CustomerService {
    List<Customer> findAll(); // trả về danh sach tất cả khách hàng

    void save(Customer customer); // Lưu một khách hàng

    Customer findById(int id);//Tìm một khách hàng theo Id

    void update(int id, Customer customer); //Cập nhật thông tin của một khách hàng

    void remove(int id); // Xoá một khách hàng khỏi danh sách
}
