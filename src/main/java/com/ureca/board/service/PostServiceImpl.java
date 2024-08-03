
package com.ureca.board.service;

import com.ureca.board.dao.PostDAO;
import com.ureca.board.dto.Post;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.sql.SQLException;
import java.util.List;

@Service
public class PostServiceImpl implements PostService {

    @Autowired
    private PostDAO postDAO;

    @Override
    public int add(Post post) throws SQLException {
        return postDAO.insert(post);
    }

    @Override
    public int edit(Post post) throws SQLException {
        return postDAO.update(post);
    }

    @Override
    public int remove(int id) throws SQLException {
        return postDAO.delete(id);
    }

    @Override
    public Post read(int id) throws SQLException {
        return postDAO.select(id);
    }

    @Override
    public List<Post> readAll() throws SQLException {
        return postDAO.selectAll();
    }
}
