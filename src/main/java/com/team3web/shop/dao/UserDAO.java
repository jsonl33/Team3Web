package com.team3web.shop.dao;

import com.team3web.shop.vo.UserVO;

public interface UserDAO {
    UserVO getUserById(String id);
    void insertUser(UserVO user);
    void updateUser(UserVO user);
    void deleteUser(String id);
}
