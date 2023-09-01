package com.team3web.shop.mapper;

import com.team3web.shop.vo.UserVO;

public interface UserMapper {
	
	
    UserVO getUserById(String id);
    void insertUser(UserVO user);
    void updateUser(UserVO user);
    void deleteUser(String id);
    
}

