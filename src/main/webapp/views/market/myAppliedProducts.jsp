<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html5>
<html>
<head>
<meta charset="UTF-8">
<title>나의 등록 상품</title>
</head>
<body>
	<!-- HEADER -->
	<jsp:include page="/views/common/header.jsp" />
	<!-- SUB HEADER -->
	<jsp:include page="subHeader.jsp" />

	<div class="market-page my-applied-prod-container page-layout footer-fixed-bottom" >
		<div class="market-page my-applied-prod contents-inner">
			<div class="market-page contents-title-container my-applied-prod">
				<h1 class="market-page contents-title my-applied-prod" >나의 거래 요청</h1>
			</div>
			<div class="market-page my-applied-prod-item-list-container">
				<div class="market-page contents-title my-applied-prod-list-inner" >
					<% for (int i = 0; i < 3; i++) { %>
						<div class="market-page my-applied-prod-item-container my-applied-prod">
							<span class="market-page my-applied-prod-item-section my-applied-prod"> <!-- 상대방이 등록한 상품 정보들 -->
								<div class="market-page contents-category my-applied-prod">등록된 상품</div>
								<div class="market-page contents-category-data my-applied-prod product-info">
									<span class="market-page contents-img-container my-applied-prod product-info">
										<img class="market-page contents-img my-applied-prod" src="/semi_box/views/market/puppy.jpg" alt="상품 이미지">
									</span>
									<span class="market-page contents-data my-applied-prod product-info">
										<div class="market-page contents-data my-applied-prod">상품명</div>
										<div class="market-page contents-data my-applied-prod">상품 가격</div>
										<div class="market-page contents-data my-applied-prod">카테고리</div>
									</span>
								</div>
							</span>
							<span class="market-page my-applied-prod-item-section my-applied-prod" > <!-- 내가 요청한 상품 정보들 -->
								<div class="market-page contents-category my-applied-prod">요청한 상품</div>
								<div class="market-page contents-category-data my-applied-prod product-info">
									<span class="market-page contents-img-container my-applied-prod">
										<img class="market-page contents-img my-applied-prod" src="/semi_box/views/market/puppy.jpg" alt="상품 이미지">
									</span>
									<span class="market-page contents-data my-applied-prod product-info">
										<div class="market-page contents-data my-applied-prod">상품명</div>
										<div class="market-page contents-data my-applied-prod">상품 가격</div>
										<div class="market-page contents-data my-applied-prod">카테고리</div>
									</span>
								</div>
							</span>
							<span class="market-page my-applied-prod-item-section my-applied-prod comment" >
								<div class="market-page contents-category my-applied-prod comment">코멘트</div>
								<div class="market-page contents-category-data my-applied-prod comment" >
									코멘트코멘트코멘트코멘트코멘트코멘트코멘트코멘트코멘트코멘트코멘트코멘트코멘트코멘트코멘트코멘트코멘트코멘트코멘트
								</div>
							</span>
							<span class="market-page my-applied-prod-item-section my-applied-prod applied-date">
								<div class="market-page contents-category my-applied-prod applied-date">요청 날짜</div>
								<div class="market-page contents-category-data my-applied-prod applied-date" >
									2025-04-04							
								</div>
							</span>
							<span class="market-page my-applied-prod-item-section my-applied-prod btn-container" >
								<button class="btn btn-small btn-secondary btn-hover" >요청 취소</button>
							</span>
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