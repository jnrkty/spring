<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
<script src="//code.jquery.com/jquery-3.3.1.js"></script>
</head>
<body>
	<form action="<%= request.getContextPath() %>/signup" method="post">
		<input type="text" name="id" id="id">
		<button id="dup" type="button">중복체크</button>
		<br> <input type="password" name="pw"><br> <input
			type="email" name="email"><br> <input type="radio"
			name="gender" value="male" id="male" checked> <label
			for="male">남성</label> <input type="radio" name="gender"
			value="female" id="female"> <label for="female">여성</label><br>
		<button type="submit">회원가입</button>

	</form>
	<script type="text/javascript">
	   var dup;
      $('#dup').click( function() {
				var id = "";
				id = $('#id').val();
				$.ajax({
				async:true,
				type:'POST',
				data:id,
				url: 'http://localhost:8080/springtest/signup/dup',
				dataType: 'json',
				contentType: "application/json; charset=UTF-8",
				success : function(data){
					console.log(data.dup);
					if(data.dup){
					 alert('이미 사용중인 아이디 입니다');
					} else {
					 alert('사용 가능한 아이디 입니다');
					}
				}
	     });
     })
	</script>
</body>
</html>