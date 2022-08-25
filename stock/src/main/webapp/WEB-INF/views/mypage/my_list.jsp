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
	<section id="freeboard">
		<div id="topsection">
			<div id="bh2">
				<ul>
					<li>
						<h2>마이 페이지</h2>

					</li>
				</ul>
			</div>
		</div>

		<table id="boardtable" class="board">
			<colgroup>
				<col width="5%" />
				<col width="15%" />
				<col width="8%" />
				<col width="8%" />
				<col width="8%" />
				<col width="10%" />
				<col width="8%" />
				<col width="8%" />
				<col width="10%" />
				<col width="8%" />
				<col width="5%" />
			</colgroup>
			<tr>
				<th>NO.</th>
				<th>종목명</th>
				<th>매수가</th>
				<th>수량</th>
				<th>매수일</th>
				<th>총 매수금액</th>
				<th>매도가</th>
				<th>매도일</th>
				<th>총 매도금액</th>
				<th>실현 차익</th>
				<th>수익률</th>
			</tr>

			<!--
		서버로 부터 받은 데이터(도서리스트)를 보여주기 위한 부분
		BOOKS : 서버로부터 받을 데이터
		BOOK : forEach 를 사용하여 한개의 요소를 추출하여 저장할 변수
		 -->
			<c:forEach items="${stock}" var="Con">
				<tr data-b_num="${Con.s_num}">
					<td>${Con.s_num}</td>		 
					<td>${Con.s_name}</td>		
					<td>${Con.s_buy}</td>		
					<td>${Con.s_amount}</td>	
					<td>${Con.s_buyDate}</td>	
					<td>${Con.s_total_buy}</td>	 
					<td>${Con.s_sell}</td>		
					<td>${Con.s_sellDate}</td>	
					<td>${Con.s_total_sell}</td>	 
					<td>${Con.s_rate}</td>		
					<td>${Con.s_benefit}</td>	 
				</tr>
			</c:forEach>
		</table>


		<c:if test="${ not empty USER}">
			<div id="pagebutton">
				<a href="${rootPath}/mypage/stock_write"><button>작성하기</button></a>
			</div>

		</c:if>
	</section>


</body>
</html>