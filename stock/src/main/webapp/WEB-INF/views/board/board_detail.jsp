<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set value="${pageContext.request.contextPath}" var="rootPath" />
<!DOCTYPE html>
<html>
<head>
<script>
	const rootPath = "${rootPath}"
</script>
<script src="${rootPath}/static/js/write.js?ver=2022-08-24"></script>
</head>

<body>
	
	<section id="board-in">

		<div id="title1">

			<div id="nick">
				<img src="${rootPath}/static/image/01.png" />
				<p>닉네임</p>
			</div>

			<!-- 제목 title  -->

			<h3>제목 : ${board.b_title}</h3>
		</div>

		<!-- 내용 content -->
		<div id="content">
			<p>내용</p>
			<p>${board.b_content}</p>
		</div>
				<div class="btn-box">
				<c:choose>
				<c:when test="${loginUser eq USER}">
					<div class="update_btn">
					<a href="${rootPath}/board/${board.b_num}/board_update" class="update">수정</a>
					</div>
					<a href="${rootPath}/board/${board.b_num}/board_delete" class="delete">삭제</a>
				</c:when>
				<c:otherwise>
				</c:otherwise>
			</c:choose>	
	 				<a href="${rootPath}/board/board_list" class="list">리스트</a> 
			
				</div>

	</section>

</body>
</html>