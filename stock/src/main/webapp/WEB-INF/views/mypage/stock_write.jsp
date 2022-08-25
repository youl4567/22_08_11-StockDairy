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
	
	<section id="s_write">
		<form method="POST" class="s_writeform">
			<div id="s_input">
				<input name="s_user"  value="${stock.s_user}" readonly="readonly"  hidden="hidden" />
				<input name="s_num" type="hidden" value="${stock.s_num}"/>
				<input name="s_name" type="text" value="${stock.s_name}"/ placeholder="주식이름">
				<input name="s_buy" type="number" value="${stock.s_buy}" placeholder="매수 가격"/>
				<input name="s_amount" type="number" value="${stock.s_amount}" placeholder="매수 수량"/>
				<input name="s_buydate" type="text" value="${stock.s_buydate}" placeholder="매수 일자"/>
				<input name="s_sell" type="number" value="${stock.s_sell}" placeholder="매도 가격"/>
				<input name="s_selldate" type="text" value="${stock.s_selldate}" placeholder="매도 일자"/>
			</div>
			<div id="btn">
				<button type="submit">등록</button>
			</div>
		</form>
	</section>

</body>
</html>