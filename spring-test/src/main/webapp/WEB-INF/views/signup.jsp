<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="<%= request.getContextPath() %>/signup" method="post">
		<input type="text" name="id"><br>
		<input type="password" name="pw"><br>
		<input type="email" name="email"><br>
		<input type="radio" name="gender" value="male" id="male" checked>
		<label for="male">남성</label>
		<input type="radio" name="gender" value="female" id="female">
		<label for="female">여성</label><br>
		<button type="submit">회원가입</button>

	</form>
	<script type="text/javascript">
		var signup = ${signup};
		if(signup == false) alert("회원가입에 실패했습니다");
	</script>
</body>
</html>