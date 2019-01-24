<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시글 등록</title>
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/bootstrap.css">
</head>
<body>
	<h1>게시글 수정</h1>
	<form action="<%=request.getContextPath()%>/bbs/modify" method="post">
	<input type="hidden" value="${board.id}" name="id">
		<div class="form-group">
		  <label for="title">제목:</label>
		  <input type="text" class="form-control" id="title" name="title" value="${board.title}">
		</div>
		<div class="form-group">
		  <label for="writer">작성자:</label>
		  <input type="text" class="form-control" id="writer" name="writer" readonly value="${board.writer}">
		</div>
		<div class="form-group">
		  <label for="content">내용:</label>
		  <textarea type="text" class="form-control" id="content" name="content">${board.content}</textarea>
		</div>
		<button class="btn btn-outline-primary">완료</button>
	</form>
</body>
</html>