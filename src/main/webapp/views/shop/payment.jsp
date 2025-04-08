<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html5>
<html>
<head>
<meta charset="UTF-8">
<title>결제페이지</title>
<link href="${ pageContext.request.contextPath }/resources/css/shop/payment.css" rel="stylesheet" />
<link href="${ pageContext.request.contextPath }/resources/css/shop/common.css" rel="stylesheet" />
</head>
<body>
	<!-- HEADER -->
	<jsp:include page="../common/header.jsp" />

	<!-- STYLE -->
	<jsp:include page="../common/style.jsp" />
	<!-- NOTI: 결제 api 연동? -->
	<div class="shop-page payment contents-container page-layout footer-fixed-bottom">
		<div class="shop-page payment contents-title">
			<h1>결제 정보</h1>
		</div>
		<div class="shop-page payment contents-inner box-shadow">
			<div class="shop-page payment payment-img-container">
				<img class="shop-page payment payment-img" src="${pageContext.request.contextPath}/resources/images/black.jpg" />
			</div>
			<div class="shop-page payament payment-details-container">
				<div class="shop-page payment payment-product-info-container" >
					<div class="shop-page payment-product-info title" >
						<h1>상품 상세 정보</h1>					
					</div>
					<div class="shop-page payment payment-product-info product-grade">
						<span class="shop-page payment product-info label">박스 등급</span> 
						<span class="shop-page payment product-info value">Platinum</span>
					</div>
					<div class="shop-page payment-product-info price">
						<span class="shop-page payment product-info label">판매 가격</span>
						<span class="shop-page payment product-info value">9,900원</span>
					</div>
					<div class="shop-page payment-product-info quantity">
						<span class="shop-page payment product-info label">수량</span>
						<span class="shop-page payment product-info value"> 2</span>
					</div>
					<div class="shop-page payment-product-info total-price">
						<span class="shop-page payment product-info label">총 결제 금액</span> 
						<span class="shop-page payment product-info value">19,800원</span>
					</div>				
				</div>
				<div class="shop-page payment payment-option-container">
					<div class="shop-page payment payment-option-title" >
						<h1>결제 수단</h1>					
					</div>
					<label class="shop-page payment payment-option label">
						<input class="shop-page payment payment-option radio" type="radio" name="payment" value="account">
						<div class="shop-page payment payment-option value" >계좌 이체</div>
					</label>
					<label class="shop-page payment payment-option label">
						<input class="shop-page payment payment-option radio" type="radio" name="payment" value="easy">
						<div class="shop-page payment payment-option value" >간편 결제</div>
					</label> 
					<label class="shop-page payment payment-option label">
						<input class="shop-page payment payment-option radio" type="radio" name="payment" value="card">
						<div class="shop-page payment payment-option value" >카드 결제</div>
					</label>
					<div class="shop-page payment btn-container" >
						<!-- NOTI: 임시 링크 버튼, 선택 옵션에 따라 결제 방법 진행 -->
						<a class="shop-page payment btn btn-small btn-secondary" href="${ pageContext.request.contextPath }/shop/paymentResult" >결제</a>
					</div>
				</div>
	        </div>
		</div>
	</div>
	
	<!-- FOOTER -->
	<jsp:include page="../common/footer.jsp" />
</body>
</html>




