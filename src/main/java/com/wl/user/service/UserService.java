package com.wl.user.service;

import com.wl.user.model.User;

import java.util.List;

public interface UserService {
    User findUserById(Integer id);
    List<User> findAllUsers();
    void addUser(User user);
    void updataUser(User user);
    boolean deleteUser(Integer id);

}
