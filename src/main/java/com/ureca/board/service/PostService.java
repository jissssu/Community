// src/main/java/com/ureca/board/service/PostService.java
package com.ureca.board.service;

import com.ureca.board.dto.Post;

import java.sql.SQLException;
import java.util.List;

public interface PostService {
    int add(Post post) throws SQLException;
    int edit(Post post) throws SQLException;
    int remove(int id) throws SQLException;
    Post read(int id) throws SQLException;
    List<Post> readAll() throws SQLException;
}