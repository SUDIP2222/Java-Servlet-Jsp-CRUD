package com.crud.Dao;

import com.crud.Model.User;

import java.util.List;

/**
 * Created by sudip sarker on 2/26/2017.
 */
public interface UserDao {
    public void addUser(User user);
    public void deleteUser(int userId);
    public void updateUser(User user);
    public List<User> getAllUsers();
    public User getUserById(int userId);
}
