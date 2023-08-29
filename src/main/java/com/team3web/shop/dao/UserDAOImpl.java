package com.team3web.shop.dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.team3web.shop.vo.UserVO;

@Repository
public class UserDAOImpl implements UserDAO {

    @Autowired
    private SqlSession sqlSession;

    @Override
    public UserVO getUserById(String id) {
        return sqlSession.selectOne("userMapper.getUserById", id);
    }

    @Override
    public void insertUser(UserVO user) {
        sqlSession.insert("userMapper.insertUser", user);
    }

    @Override
    public void updateUser(UserVO user) {
        sqlSession.update("userMapper.updateUser", user);
    }

    @Override
    public void deleteUser(String id) {
        sqlSession.delete("userMapper.deleteUser", id);
    }
}

