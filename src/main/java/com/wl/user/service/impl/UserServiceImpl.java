package com.wl.user.service.impl;

import com.wl.user.dao.UserMapper;
import com.wl.user.model.User;
import com.wl.user.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class UserServiceImpl implements UserService {

    @Autowired
     private UserMapper userMapper;
    @Override
    public User findUserById(Integer id) {
        return userMapper.findUserById(id);
    }

    @Override
    public List<User> findAllUsers() {
        return userMapper.findAllUsers();
    }

    @Override
    public void addUser(User user) {
          userMapper.addUser(user);
    }

    @Override
    public void updataUser(User user) {
       userMapper.updataUser(user);
    }

    @Override
    public boolean deleteUser(Integer id) {
          return userMapper.deleteUser(id);
    }
}
