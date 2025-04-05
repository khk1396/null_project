<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html5>
<html>
<head>
<meta charset="UTF-8">
<title>상품 교환 내역</title>
<link href="/semi_box/resources/css/market/common.css" rel="stylesheet"/>

</head>
<body>
	<!-- HEADER -->
	<jsp:include page="/views/common/header.jsp" />

	<!-- STYLE -->
	<jsp:include page="/views/common/style.jsp" />




	<div id="mainFrame">
		<div id="tradeMenu">
			<div class="pageBtnList" style="text-align: center;" width="100%"
				height="100px">
				<a href="market" class="link link-medium link-hover"
					style="padding-left: 35px; padding-right: 35px;">다른 상품</a> 
					<a href="myRegistedProducts" class="link link-medium link-hover">등록한 상품</a> 
					<a href="myAppliedProducts" class="link link-medium link-hover">거래 요청 상품</a> 
					<a href="tradeRegist" class="link link-medium link-hover" style="padding-left: 35px; padding-right: 35px;">상품 등록</a> 
					<a href="#" onclick="location.reload();" class="link link-medium link-hover" style="padding-left: 35px; padding-right: 35px;">거래 내역</a>
					<br><hr>
			</div>
		</div>
		<div id="tradeContent">
			<div id="tradeContentUp">
				<div id="tradeContentUpTitle">상품 교환 내역</div>
				<div id="tradeContentUpCategory">
					<div class="Category">내 상품</div>
					<div class="Category">상대 상품</div>
					<div class="Category">코멘트</div>
					<div class="Category">교환 날짜</div>
				</div>
			</div>


			<div id="tradeContentDown">


				<div>
					<% for (int i = 0; i < 3; i++) { %>
					<div class="tradeinquiry">
						<div id="tradeinquiryInfo">
							<div class="tradeinquirydetail-left">
								<div class="image">
									<img class="productImg" src="/semi_box/views/market/puppy.jpg"
										alt="상품 이미지">
								</div>
							</div>
							<div class="tradeinquirydetail-right">
								<div class="productInfo">상품명</div>
								<div class="productInfo">상품 가격</div>
								<div class="productInfo">카테고리</div>
							</div>
						</div>
						<div id="tradeinquiryInfo">
							<div class="tradeinquirydetail-left">
								<div class="image">
									<img class="productImg" src="/semi_box/views/market/puppy.jpg"
										alt="상품 이미지">
								</div>
							</div>
							<div class="tradeinquirydetail-right">
								<div class="productInfo">상품명</div>
								<div class="productInfo">상품 가격</div>
								<div class="productInfo">카테고리</div>
							</div>
						</div>
						<div class="tradeinquirydetail" style="margin-right:120px; padding-top:2.3%;" id="tradeinquiryPrice">코멘트코멘트코멘트코멘트코멘트코멘트코멘트코멘트코멘트코멘트코멘트코멘트코멘트코멘트코멘트코멘트코멘트코멘트코멘트</div>
						<div class="tradeinquirydetail" style="margin-right:120px; padding-top:5%;" id="tradeinquiryOpen">2025-04-04</div>
						
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