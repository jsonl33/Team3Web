package com.team3web.shop.mapper;

import com.team3web.shop.vo.UserVO;

public interface UserMapper {
	
	
	public int insertUser(UserVO user);
	public UserVO loginUser(UserVO user);
    
}

