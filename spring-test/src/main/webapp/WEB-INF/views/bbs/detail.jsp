<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시글 상세</title>
</head>
<body>
	<h1>게시글 상세</h1>
		<div class="form-group">
		  <label for="title">제목:</label>
		  <input type="text" class="form-control" id="title" name="title" readonly value="${board.title}"> 
		</div>
		<div class="form-group">
		  <label for="writer">작성자:</label>
		  <input type="text" class="form-control" id="writer" name="writer" readonly value="${board.writer}">
		</div>
		<div class="form-group">
		  <label for="content">내용:</label>
		  <textarea type="text" class="form-control" id="content" name="content">${board.content}</textarea>
		</div>
		<a href="<%= request.getContextPath()%>/bbs/list">
			<button class="btn btn-outline-primary">확인</button>
		</a>
		<c:if test="${user.id == board.writer}">
			<a href="<%= request.getContextPath()%>/bbs/delete?id=${board.id}">
				<button class="btn btn-outline-primary">삭제</button> 
			</a>
			<a href="<%= request.getContextPath()%>/bbs/modify?id=${board.id}">
				<button class="btn btn-outline-primary">수정</button> 
			</a>
		</c:if>
</body>
</html>