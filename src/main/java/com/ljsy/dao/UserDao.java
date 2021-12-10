package com.ljsy.dao;

import com.ljsy.entity.User;
import org.apache.ibatis.annotations.Param;

public interface UserDao {
    User login(@Param("name") String name, @Param("password") String password);
}
