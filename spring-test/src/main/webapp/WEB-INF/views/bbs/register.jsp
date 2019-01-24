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
	<h1>게시글 등록</h1>
	<form action="<%=request.getContextPath()%>/bbs/register" method="post">
		<div class="form-group">
		  <label for="title">제목:</label>
		  <input type="text" class="form-control" id="title" name="title">
		</div>
		<div class="form-group">
		  <label for="writer">작성자:</label>
		  <input type="text" class="form-control" id="writer" name="writer" readonly value=${user.id}>
		</div>
		<div class="form-group">
		  <label for="content">내용:</label>
		  <textarea type="text" class="form-control" id="content" name="content"></textarea>
		</div>
		<button class="btn btn-outline-primary">등록</button>
	</form>
</body>
</html>