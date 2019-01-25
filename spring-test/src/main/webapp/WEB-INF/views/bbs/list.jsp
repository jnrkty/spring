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
	<c:choose> <%-- 자바에서의 if else 기능이랑 똑같다--%>
		<c:when test="${user != null}">
			<a href="<%=request.getContextPath()%>/signout">로그아웃</a>
		</c:when>
		<c:otherwise>
			<a href="<%=request.getContextPath()%>/">로그인</a>
		</c:otherwise>
	</c:choose>
	<table class="table">
		<tr>
			<td>번호</td>
			<td>제목</td>
			<td>작성자</td>
		</tr>
		<c:forEach items="${list}" var="board">
		<tr>
			<td>${board.id}</td>
			<td><a href="<%= request.getContextPath()%>/bbs/detail?id=${board.id}">${board.title}</a></td>
			<td>${board.writer}</td>
		</tr>
		</c:forEach>
	</table>
	<a href="<%= request.getContextPath()%>/bbs/register">
		<button>등록</button>
	</a>
</body>
</html>