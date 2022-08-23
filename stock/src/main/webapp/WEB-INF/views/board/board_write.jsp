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
	
	<section id="b_write">
		<form method="POST" class="b_writeform">
			<div id="bw_title">
				<input name="b_num" type="hidden" value="${board.b_num}"/>
				<input name="b_title" type="text" placeholder="제목을 입력해주세요"	value="${board.b_title}" />
				<input name="b_writer"  value="${board.b_writer}" readonly="readonly"  hidden="hidden" />
				<input name="b_date" type="date" value="${board.b_date}" hidden="hidden">
				<input name="b_time" type="time" value="${board.b_time}" hidden="hidden">	
			</div>
			<div id="content">
				<textarea rows="50" name="b_content" class="" placeholder="내용을 입력해주세요"	>${board.b_content}</textarea>
			</div>
			<div id="btn">
				<button type="submit">게시글 등록</button>
			</div>
		</form>
	</section>

</body>
</html>