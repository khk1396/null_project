<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html5>
<html>
<head>
<meta charset="UTF-8">
<title>내가 등록한 상품</title>
<link href="/semi_box/resources/css/market/common.css" rel="stylesheet"/>

<style>

<!-- 다름 -->
#tradeinquiryInfo {
	width: 20%;
}

<!-- 다름 -->
.tradeinquirydetail-left {
	width: 60%;
}

</style>
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
				<a href="market" class="link link-medium link-hover" style="padding-left: 35px; padding-right: 35px;">다른 상품</a> 
					<a href="myRegistedProducts" class="link link-medium link-hover">등록한 상품</a> 
					<a href="#" onclick="location.reload();" class="link link-medium link-hover">거래 요청 상품</a> 
					<a href="tradeRegist" class="link link-medium link-hover" style="padding-left: 35px; padding-right: 35px;">상품 등록</a> 
					<a href="tradeHistory" class="link link-medium link-hover" style="padding-left: 35px; padding-right: 35px;">거래 내역</a>
					<br><hr>
			</div>
		</div>
		<div id="tradeContent">
			<div id="tradeContentUp">
				<div id="tradeContentUpTitle">내가 요청한 상품</div>
				<div id="tradeContentUpCategory">
					<div class="Category">등록된 상품</div>
					<div class="Category" style="padding-left:80px;">요청한 상품</div>
					<div class="Category" style="padding-left:85px;">코멘트</div>
					<div class="Category">요청 날짜</div>
					<div class="Category">요청 취소</div>
				</div>
			</div>


			<div id="tradeContentDown">
				<div>
					<% for (int i = 0; i < 3; i++) { %>
					<div class="tradeinquiry">
						<div id="tradeinquiryInfo"> <!-- 상대방이 등록한 상품 정보들 -->
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
						<div id="tradeinquiryInfo"> <!-- 내가 요청한 상품 정보들 -->
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
						<div class="tradeinquirydetail" style="padding-top:2.3%;" id="tradeinquiryPrice">코멘트코멘트코멘트코멘트코멘트코멘트코멘트코멘트코멘트코멘트코멘트코멘트코멘트코멘트코멘트코멘트코멘트코멘트코멘트</div>
						<div class="tradeinquirydetail" style="padding-top:5%;" id="tradeinquiryOpen">2025-04-04</div>
						<div class="tradeinquirydetail" id="tradeinquiryOpen">
							<button class="btn btn-small btn-secondary btn-hover" style="margin-left:25px;">요청 취소</button>
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