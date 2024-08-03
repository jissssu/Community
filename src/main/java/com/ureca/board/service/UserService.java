package com.ureca.board.service;

import com.ureca.board.dto.User;

public interface UserService {
    void registerUser(User user);
    User findUserByUsername(String username);
}
