<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<html>
<head>
    <link href="/css/detail.css" rel="stylesheet" type="text/css">
    <title>${post.title}</title>
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
    <div class="container">
        <div class="post-header">
            <h3>${post.title}</h3>
        </div>
        <div class="post-content">
            <p>${post.content}</p>
        </div>
        <div class="post-meta">
            <p>작성자: ${post.author}</p>
            <p>작성일: <fmt:formatDate value="${post.createdAt}" pattern="yyyy-MM-dd HH:mm:ss"/></p>
            <p>수정일: <fmt:formatDate value="${post.updatedAt}" pattern="yyyy-MM-dd HH:mm:ss"/></p>
        </div>
        <div class="post-actions">
            <a href="/posts/list">목록으로</a>
        </div>
    </div>
</body>
</html>
