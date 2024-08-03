package com.ureca.board.controller;

import com.ureca.board.dto.Post;
import com.ureca.board.service.PostService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.sql.SQLException;
import java.util.List;

@Controller
@RequestMapping("/posts")
public class PostController {

    @Autowired
    private PostService postService;

    @GetMapping("/form")
    public String createPostForm(Model model) {
        model.addAttribute("post", new Post()); // 빈 Post 객체를 모델에 추가
        return "form"; // form.jsp
    }
    
    @GetMapping
    public String defaultRedirect() {
        return "redirect:/posts/list";
    }

    @PostMapping("/create")
    public String createPost(@ModelAttribute Post post) {
        try {
            postService.add(post); // 새 게시물 추가
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return "redirect:/posts/list"; // 게시물 목록으로 리다이렉트
    }

    @GetMapping("/list")
    public String getAllPosts(Model model) {
        try {
            List<Post> posts = postService.readAll();
            model.addAttribute("posts", posts);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return "list"; // list.jsp
    }

    @GetMapping("/detail")
    public String getPostById(@RequestParam("id") int id, Model model) {
        try {
            Post post = postService.read(id);
            model.addAttribute("post", post);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return "detail"; // detail.jsp
    }

    @GetMapping("/edit")
    public String editPostForm(@RequestParam("id") int id, Model model) {
        try {
            Post post = postService.read(id); // 수정할 게시물 조회
            model.addAttribute("post", post);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return "upform"; // upform.jsp
    }

    @PostMapping("/update")
    public String updatePost(@ModelAttribute Post post) {
        try {
            postService.edit(post); // 게시물 수정
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return "redirect:/posts/list"; // 게시물 목록으로 리다이렉트
    }

    @PostMapping("/delete")
    public String deletePost(@RequestParam("id") int id) {
        try {
            postService.remove(id); // 게시물 삭제
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return "redirect:/posts/list"; // 게시물 목록으로 리다이렉트
    }

    @GetMapping("/main")
    public String mainPage() {
        return "main"; // main.jsp 파일이 있다고 가정
    }

}
