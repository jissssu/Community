package com.ureca.board.dao;

import com.ureca.board.dto.User;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface UserDAO {
    void insertUser(User user);
    User getUserByUsername(String username);
}
