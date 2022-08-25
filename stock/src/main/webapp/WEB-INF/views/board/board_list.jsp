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
<script src="${rootPath}/static/js/write.js?ver=220825-3"></script>
</head>

<body>
	<section id="freeboard">
		<div id="topsection">
			<div id="bh2">
				<ul>
					<li>
						<h2>게시판</h2>

					</li>
				</ul>
			</div>
		</div>

		<table id="boardtable" class="board">
			<colgroup>
				<col width="10%" />
				<col width="30%" />
				<col width="15%" />
				<col width="15%" />
				<col width="15%" />
				<col width="15%" />
			</colgroup>
			<tr>
				<th>NO.</th>
				<th>제목</th>
				<th>작성자</th>
				<th>작성일</th>
				<th>작성 시간</th>
				<th>조회수</th>
			</tr>

			<!--
		서버로 부터 받은 데이터(도서리스트)를 보여주기 위한 부분
		BOOKS : 서버로부터 받을 데이터
		BOOK : forEach 를 사용하여 한개의 요소를 추출하여 저장할 변수
		 -->
			<c:forEach items="${board}" var="Con">
				<tr data-b_num="${Con.b_num}">
					<td>${Con.b_num}</td>
					<td>${Con.b_title}</td>
					<td>${Con.b_writer}</td>
					<td>${Con.b_date}</td>
					<td>${Con.b_time}</td>
					<td>${Con.b_hit}</td>
				</tr>
			</c:forEach>
		</table>


				<a href="${rootPath}/"><button>홈으로</button></a>
		<c:if test="${ not empty USER}">
			<div id="pagebutton">
				<a href="${rootPath}/board/board_write"><button>작성하기</button></a>
			</div>
			<div>
			</div>	
		</c:if>
	</section>


</body>
</html>