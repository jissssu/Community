<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<link href="/css/list.css" rel="stylesheet" type="text/css">
    <meta charset="UTF-8">
    <title>게시판</title>
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
    <a href="http://localhost:8080/posts/form" class="btn-register">새 글 쓰기</a>
    <table class="board">
        <thead>
            <tr>
                <th>번호</th>
                <th>제목</th>
                <th>글쓴이</th>
                <th>작성일시</th>
                <th>수정/삭제</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach items="${posts}" var="post" varStatus="status">
                <c:if test="${status.index < 8}">
                    <tr>
                        <td>${post.id}</td>
                        <td><a href="/posts/detail?id=${post.id}">${post.title}</a></td>
                        <td>${post.author}</td>
                        <td><fmt:formatDate value="${post.createdAt}" pattern="yyyy-MM-dd HH:mm"/></td>
                        <td>
                            <a href="/posts/edit?id=${post.id}"><button class="btn-edit">수정</button></a>
                            <form action="/posts/delete" method="post" style="display:inline;">
                                <input type="hidden" name="id" value="${post.id}">
                                <button type="submit" class="btn-delete">삭제</button>
                            </form>
                        </td>
                    </tr>
                </c:if>
            </c:forEach>
        </tbody>
    </table>
    <div class="pagination">
        <a href="#">이전</a>
        <c:forEach var="i" begin="1" end="6">
            <a href="#" class="${i == currentPage ? 'active' : ''}">${i}</a>
        </c:forEach>
        <a href="#">다음</a>
    </div>
</div>
</body>
</html>
