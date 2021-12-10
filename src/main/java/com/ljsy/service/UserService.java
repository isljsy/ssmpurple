package com.ljsy.service;

import com.ljsy.entity.User;

public interface UserService {
    User login(String name, String password);
}
