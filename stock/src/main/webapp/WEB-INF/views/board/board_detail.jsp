<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<script>
	const rootPath = "${rootPath}"
</script>
<script src="${rootPath}/static/js/board.js?ver=2022-06-10-002"></script>
</head>

<body>
	
	<section id="board-in">

		<div id="title1">

			<div id="nick">
				<img src="${rootPath}/static/image/01.png" />
				<p>닉네임</p>
			</div>

			<!-- 제목 title  -->

			<h3>${BOARD.b_title}</h3>
		</div>

		<!-- 내용 content -->
		<div id="content">
			<p>${BOARD.b_content}</p>
		</div>
				<div class="btn-box">
					<a href="${rootPath}/board/board_list" class="list">리스트</a> 
			<c:if test="${USER1 eq 'OK'}">
					<div class="update_btn">
					<a href="${rootPath}/board/${BOARD.b_num}/board_update" class="update">수정</a>
					</div>
					<!-- href="javascript:void(0) : a tag의 link 연결기능을 완전히 무력화 -->
					<a href="${rootPath}/board/${BOARD.b_num}/board_delete" class="delete">삭제</a>
			</c:if>
				</div>


		<!-- 댓글 부분 -->

		<div id="comment">
			<ul>
				<li>
					<div id="nick">
						<img src="${rootPath}/static/image/02.png" />
						<p>닉네임</p>
					</div>
					<p>카카오페이가</p>
				</li>
				<li>
					<div id="nick">
						<img src="${rootPath}/static/image/03.png" />
						<p>닉네임</p>
					</div>
					<p>SK하이닉스</p>
				</li>
			</ul>
		</div>

		<div id="comment-sub">
			<ul>
				<li id="comment-nick">닉네임님</li>
				<li><input type="text" placeholder="댓글을 남겨보세요!" /></li>
				<li id="btnli">
					<button type="button">댓글 등록</button>
				</li>
			</ul>
		</div>
	</section>

</body>
</html>