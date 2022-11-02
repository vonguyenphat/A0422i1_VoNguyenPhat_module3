package service;

import model.User;
import reponsitory.IUserDAO;
import reponsitory.imlIUserDAO;


import java.sql.SQLException;
import java.util.List;

public class imlIUserDAOservice implements IUserDAOservice {
    IUserDAO iUserDAO = new imlIUserDAO();

    @Override
    public void insertUser(User user) throws SQLException {
        iUserDAO.insertUser(user);
    }

    @Override
    public User selectUser(int id) {
        return iUserDAO.selectUser(id);
    }

    @Override
    public List<User> selectAllUsers() {
        return iUserDAO.selectAllUsers();
    }

    @Override
    public boolean deleteUser(int id) throws SQLException {
        return iUserDAO.deleteUser(id);
    }

    @Override
    public boolean updateUser(User user) throws SQLException {
        return iUserDAO.updateUser(user);
    }
}
