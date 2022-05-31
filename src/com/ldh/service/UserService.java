package com.ldh.service;

import com.ldh.bean.Message;
import com.ldh.bean.User;

import java.util.List;

public interface UserService {

    boolean judge(User user);

    void insertUser(User user);



}
