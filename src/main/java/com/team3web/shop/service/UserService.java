package com.team3web.shop.service;

import com.team3web.shop.vo.UserVO;

public interface UserService {
    UserVO getUserById(String id);
    void registerUser(UserVO user);
    void updateUser(UserVO user);
    void deleteUser(String id);
}
