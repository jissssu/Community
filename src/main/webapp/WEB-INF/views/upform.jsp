<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <link href="/css/upform.css" rel="stylesheet" type="text/css">
    <meta charset="UTF-8">
    <title>글 수정하기</title>
</head>
<body>
<nav>
    <div class="logo">
       🐾 <img src="/images/logo.png" alt="강아지 커뮤니티" class="logo-img">
    </div>
    <div class="nav-links">
        <a href="/user/login">로그인</a>
        <a href="/user/register">회원가입</a>
    </div>
</nav>
    <h3>글 수정하기</h3>
    <form method="post" action="/posts/update">
        <input type="hidden" name="id" value="${post.id}">
        제목<br>
        <input type="text" name="title" value="${post.title}"><br>
        내용<br>
        <textarea name="content">${post.content}</textarea><br>
        작성자<br>
        <input type="text" name="author" value="${post.author}"><br>
        <button type="submit">저장</button>
    </form>
    <a href="/posts/list" class="back-to-list">목록으로</a>
</body>
</html>
