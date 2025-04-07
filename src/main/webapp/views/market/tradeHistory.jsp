<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html5>
<html>
<head>
<meta charset="UTF-8">
<title>상품 교환 내역</title>
</head>
<body>
	<!-- HEADER -->
	<jsp:include page="/views/common/header.jsp" />

	<!-- SUB HEADER -->
	<jsp:include page="subHeader.jsp" />

	<div class="market-page page-layout footer-fixed-bottom">
		<div class="market-page contents-inner">
			<div class="market-page contents-title-container">
				<h1>상품 교환 내역</h1>
			</div>
			<div class="market-page ">
				<div class="market-page trade-history-item-list-container">
					<% for (int i = 0; i < 3; i++) { %>
					<div class="market-page trade-history-item-container trade-history">
						<div class="market-page trade-history-item-section trade-history">
							<div class="market-page contents-category trade-history">내 상품</div>
							<div class="market-page contents-category-data trade-history product-info">
								<div class="market-page contents-img-container trade-history product-info">
									<img class="market-page contents-img trade-history" src="/semi_box/views/market/puppy.jpg" alt="상품 이미지">
								</div>
								<div class="market-page contents-data trade-history product-info">
									<div class="market-page contents-data trade-history">상품명</div>
									<div class="market-page contents-data trade-history">상품 가격</div>
									<div class="market-page contents-data trade-history">카테고리</div>
								</div>
							</div>
						</div>
						<div class="market-page trade-history-item-section trade-history" >
							<div class="market-page contents-category trade-history">상대 상품</div>
							<div class="market-page contents-category-data trade-history product-info">
								<div class="market-page contents-img-container trade-history product-info">
									<img class="market-page contents-img trade-history" src="/semi_box/views/market/puppy.jpg" alt="상품 이미지">
								</div>
								<div class="market-page contents-data trade-history product-info">
									<div class="market-page contents-data trade-history">상품명</div>
									<div class="market-page contents-data trade-history">상품 가격</div>
									<div class="market-page contents-data trade-history">카테고리</div>
								</div>
							</div>
						</div>
						<div class="market-page trade-history-item-section trade-history comment" >
							<div class="market-page contents-category trade-history">코멘트</div>
							<div class="market-page contents-category-data trade-history comment" >
								코멘트코멘트코멘트코멘트코멘트코멘트코멘트코멘트코멘트코멘트코멘트코멘트코멘트코멘트코멘트코멘트코멘트코멘트코멘트							
							</div>
						</div>
						<div class="market-page trade-history-item-section trade-history applied-date" >
							<div class="market-page contents-category trade-history trade-date">교환 날짜</div>
							<div class="market-page contents-category-data trade-history trade-date" >
								2025-04-04							
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