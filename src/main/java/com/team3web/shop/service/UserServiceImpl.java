package com.team3web.shop.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.team3web.shop.dao.UserDAO;
import com.team3web.shop.vo.UserVO;

@Service
public class UserServiceImpl implements UserService {

    @Autowired
    private UserDAO userDAO;

    @Override
    public UserVO getUserById(String id) {
        return userDAO.getUserById(id);
    }

    @Override
    public void registerUser(UserVO user) {
        userDAO.insertUser(user);
    }

    @Override
    public void updateUser(UserVO user) {
        userDAO.updateUser(user);
    }

    @Override
    public void deleteUser(String id) {
        userDAO.deleteUser(id);
    }
}

