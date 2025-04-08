<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html5>
<html>
<head>
<meta charset="UTF-8">
<title>나의 등록 상품</title>
<script src="${ pageContext.request.contextPath }/resources/js/market/marketUtils.js" type="text/javascript" ></script>
</head>
<body>
	<!-- HEADER -->
	<jsp:include page="/views/common/header.jsp" />

	<!-- STYLE -->
	<jsp:include page="/views/common/style.jsp" />
	<jsp:include page="subHeader.jsp" />

	<div class="market-page contents-container my-registered page-layout footer-fixed-bottom">
		<div class="market-page contents-inner my-registered">
			<div class="market-page contents-title-container my-registered" >
				<h1 class="market-page contents-title my-registered">나의 등록 상품</h1>
			</div>

			<div class="market-page my-registered-item-list-container my-registered">
				<div class="market-page my-registered-item-list-inner my-registered">
					<% for (int i = 0; i < 100; i++) { %>
						<!-- TODO: 실제 데이터 조회 시 data-set 값 변경해야 함 -->
						<div 
							class="market-page my-registered-item-container list my-registered box-shadow" 
							<%-- data-set="trade-list<%= i %>" --%> 
							onclick="return onClickRegisteredItem(this);"
						  	aria-expanded="false"
							aria-controls="trade-list<%= i %>"
						>
							<div class="market-page my-registered-item-inner info-container my-registered">
								<span class="market-page my-registered-item img-container">
									<img class="market-page my-registered-item img" src="/semi_box/views/market/puppy.jpg" alt="PRODUCT.IMG">
								</span>
								<span class="market-page my-registered-item info-container" >
									<div class="market-page my-registered-item prod-name">상품명</div>
									<div class="market-page my-registered-item prod-price">500,000원</div>
									<div class="market-page my-registered-item prod-category">카테고리</div>
									<div class="market-page my-registered-item prod-comment" >코멘트코멘트코멘트코멘트코멘트코멘트코멘트코멘트코멘트코멘트코멘트코멘트코멘트코멘트코멘트코멘트코멘트코멘트코멘트</div>
									<div class="market-page my-registered-item prod-created-date" >2025-04-04</div>
								</span>
							</div>
						</div>
						<div id="trade-list<%= i %>" class="market-page my-registered trade-item-list-container" >
							<!-- TODO: 비동기 통신으로 거래 요청 목록 조회해야 함 -->
							<div class="market-page my-registered trade-item-list-inner" >
								<div class="market-page my-registered trade-item-container box-shadow" >
									<div class="market-page my-registered trade-item-inner my-registered">
										<span class="market-page my-registered trade-item img-container">
											<img class="market-page my-registered trade-item img" src="/semi_box/views/market/puppy.jpg" alt="PRODUCT.IMG">
										</span>
										<span class="market-page my-registered trade-item info-container" >
											<div class="market-page my-registered trade-item prod-name">상품명</div>
											<div class="market-page my-registered trade-item prod-price">10,000원</div>
											<div class="market-page my-registered trade-item prod-category">카테고리</div>
											<div class="market-page my-registered trade-item prod-comment" >코멘트코멘트코멘트코멘트코멘트코멘트코멘트코멘트코멘트코멘트코멘트코멘트코멘트코멘트코멘트코멘트코멘트코멘트코멘트</div>
											<div class="market-page my-registered trade-item prod-created-date" >2025-04-04</div>
										</span>
										<!-- TODO: 비동기 요청 기능 들어가야 함 -->
										<span class="market-page my-registered trade-item btn-container" >
											<button class="market-page my-registered trade-item btn btn-small btn-secondary btn-hover" >수락</button>
											<button class="market-page my-registered trade-item btn btn-small btn-secondary btn-hover">거절</button>				
										</span> 
									</div>
								</div>
							</div>
						</div>
					<% } %>
				</div>
			</div>
		</div>
	</div>

	<!-- FOOTER -->
	<jsp:include page="/views/common/footer.jsp" />
</body>
</html>