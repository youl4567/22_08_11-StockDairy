<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set value="${pageContext.request.contextPath}" var="rootPath" />

<!DOCTYPE html>
<html>
<head>
<style>
</style>
<meta charset="UTF-8">
<title>회원 가입 페이지</title>
<script>
	const rootPath = "${rootPath}"
</script>
<c:set value="${pageContext.request.contextPath}" var="rootPath" />
</head>
<body>
	<h1>투자 일기장</h1>
	<form class="join" autocomplete="off" method="POST">
		<fieldset>
			<legend>회원가입</legend>
			<div>
				<input name="username" placeholder="USER NAME" autocomplete="off" />
				<button class="id-check" type="button">중복검사</button>
			</div>
			<div class="username"></div>
			<div>
				<input name="password" type="password" autocomplete="off" />
			</div>
			<div>
				<input name="re_password" type="password" />
			</div>
			<div>
				<input name="useremail" placeholder="이메일" />
			</div>
			<div>
				<button type="button" class="join">회원가입</button>
				<button type="reset">새로작성</button>
			</div>
		</fieldset>
	</form>

</body>
</html>