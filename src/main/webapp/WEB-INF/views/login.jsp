<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
  <link href="/css/login.css" rel="stylesheet" type="text/css">
  <title>로그인</title>
</head>
<body>
  <div class="container">
    <h2>로그인</h2>
    <form action="/user/login" method="post">
      <label for="username">사용자 이름</label>
      <input type="text" id="username" name="username" required><br>

      <label for="password">비밀번호</label>
      <input type="password" id="password" name="password" required><br>

      <input type="submit" value="로그인">
    </form>
    <c:if test="${not empty error}">
      <p style="color:red">${error}</p>
    </c:if>
  </div>
</body>
</html>
