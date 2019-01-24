<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/bootstrap.css">
</head>
<body>
	<table class="table">
		<tr>
			<td>번호</td>
			<td>제목</td>
			<td>작성자</td>
		</tr>
		<c:forEach items="${list}" var="board">
		<tr>
			<td>${board.id}</td>
			<td>${board.title}</td>
			<td>${board.writer}</td>
		</tr>
		</c:forEach>
	</table>
	<a href="<%= request.getContextPath()%>/bbs/register">
		<button>등록</button>
	</a>
</body>
</html>