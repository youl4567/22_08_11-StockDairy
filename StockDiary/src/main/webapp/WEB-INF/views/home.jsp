<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set value="${pageContext.request.contextPath}" var="rootPath" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style>
	header {
		padding:2rem;
		text-align: center;
	}
	nav {
	 background-color: black;
	 color:white;
	}
	nav ul {
		list-style-type: none;
		display: flex;
	}
	nav li {
		padding:12px 1rem;
	}
	nav li:nth-of-type(4) {
		margin-left:auto;
	}
	
	nav li:hover {
		background-color: #333;
		cursor: pointer;
	}
	
</style>
<title>Insert title here</title>
</head>
<body>
	<h1>투자 일기장</h1>
	<nav>
		<ul>
			<li>Home</li>
			<li>자산 배분</li>
			<li>투자 일기</li>
			
			<c:choose>
				<c:when test="${empty USER}">
					<li>로그인</li>
					<li>회원가입</li>
				</c:when>
				<c:otherwise>
					<li>로그아웃</li>
				</c:otherwise>
			</c:choose>	
		</ul>
	</nav>
</body>
</html>