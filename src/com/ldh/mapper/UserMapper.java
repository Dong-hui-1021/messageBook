package com.ldh.mapper;

import com.ldh.bean.User;

public interface UserMapper {
    User selectByUser(User user);

    void insertUser(User user);

}
