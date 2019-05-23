package com.wl.user.dao;
/**
 * 名称:mapper
 * 功能:和数据库操作UserMapper进行绑定,形成数据库操作的函数映射方便用户调用
 * */
import com.wl.user.model.User;

import java.util.List;

public interface UserMapper {
     User findUserById(Integer id); //根据id查询信息
     List<User> findAllUsers(); //查询所有信息
     void addUser(User user); //注册用户
     void updataUser(User user);//修改信息
     boolean deleteUser(Integer id);//删除用户
}
