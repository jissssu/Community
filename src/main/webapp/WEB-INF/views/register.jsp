<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
  <link href="/css/register.css" rel="stylesheet" type="text/css">
  <title>Register</title>
</head>
<body>
  <div class="container">
    <h2>회원가입</h2>
    <form action="/user/register" method="post">
      <label for="username">사용자 이름</label>
      <input type="text" id="username" name="username" required><br>

      <label for="password">비밀번호</label>
      <input type="password" id="password" name="password" required><br>

      <label for="email">이메일</label>
      <input type="email" id="email" name="email" required><br>

      <input type="submit" value="회원가입">
    </form>
  </div>
</body>
</html>
