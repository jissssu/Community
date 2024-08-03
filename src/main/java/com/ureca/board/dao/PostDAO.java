package com.ureca.board.dao;

import com.ureca.board.dto.Post;
import org.apache.ibatis.annotations.Mapper;
import java.util.List;
import java.sql.SQLException;

@Mapper
public interface PostDAO {
    int insert(Post post) throws SQLException;
    int update(Post post) throws SQLException;
    int delete(int id) throws SQLException;
    Post select(int id) throws SQLException;
    List<Post> selectAll() throws SQLException;
}
