package com.ldh.service.impl;

import com.ldh.bean.Message;
import com.ldh.bean.User;
import com.ldh.mapper.UserMapper;
import com.ldh.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class UserServiceImpl implements UserService {
    @Autowired
    UserMapper userMapper;

    @Override
    public boolean judge(User user) {
        User user1 = userMapper.selectByUser(user);
        if (user1 != null) {
            user.setId(user1.getId());
            return true;
        }
        return false;
    }

    @Override
    public void insertUser(User user) {
        userMapper.insertUser(user);
    }




}
