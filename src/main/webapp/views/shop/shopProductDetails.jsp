<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html5>
<html>
<head>
<title>상품 상세 페이지</title>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<link href="${ pageContext.request.contextPath }/resources/css/shop/shopProductDetail.css" rel="stylesheet" />
<link href="${ pageContext.request.contextPath }/resources/css/shop/common.css" rel="stylesheet" />
<script src="${ pageContext.request.contextPath }/resources/js/shop/shopUtils.js" type="text/javascript" ></script>
</head>
<body>
</head>
<body>

	<!-- HEADER -->
	<jsp:include page="../common/header.jsp" />

	<!-- STYLE -->
	<jsp:include page="../common/style.jsp" />

	<div class="shop-page sale-detail contents-container page-layout footer-fixed-bottom">
		<!-- 상품 정보 -->
		<div class="shop-page sale-detail contents-inner">
			<div class="shop-page sale-detail box-img-container" >
				<!-- TODO: url 또는 선택 상품의 식별자로 박스 이미지 로드 -->
				<img class="shop-page sale-detail box-img" src="${pageContext.request.contextPath}/resources/images/black.jpg" />
			</div>
			<div class="shop-page sale-detail box-info-cotainer">
				<div class="shop-page sale-detail box-info name ">
					<!-- 박스 이름 -->
					BRONZE BOX
				</div>
				<!-- NOTI: 설명에 대한 값이 더 필요함 -->
				<div class="shop-page sale-detail box-info price-container">
					<span class="shop-page sale-detail box-info-title price" >판매 가격</span> 
					<span class="shop-page sale-detail box-info-price" >
						<span class="shop-page sale-detail box-info-price" id="price">9,900</span>원	
					</span>
				</div>
	
				<!-- 수량 증가/감소 -->
				<div class="shop-page sale-detail box-info box-counter">
					<span class="shop-page sale-detail box-info-title">수량</span>
					<button class="shop-page sale-detail btn btn-secondary btn-small" id="decreaseBtn">-</button>
					<span id="quantity" class="shop-page sale-detail count">2</span>
					<button class="shop-page sale-detail btn btn-secondary btn-small" id="increaseBtn">+</button>
				</div>
				<div class="shop-page sale-detail box-info box-counter">
					<span class="shop-page sale-detail box-info-title">총 금액</span> 
					<span class="shop-page sale-detail box-info-price">
						<span class="shop-page sale-detail box-info-total-price" id="totalPrice" >19,800</span>원
					</span>
				</div>
	
				<div class="shop-page sale-detail btn-container form" >
					<a class="shop-page sale-detail btn submit btn-medium btn-primary btn-hover" href="${pageContext.request.contextPath}/shop/payment">구매</a>
				</div>
			</div>
		</div>
	
		<!-- 획득 가능 상품 목록 -->
		<div class="shop-page sale-detail product-list-container">
			<div class="shop-page sale-detail product-list-title">획득 가능 상품 목록</div>
			<div class="shop-page sale-detail product-list">
				<div class="shop-page sale-detail product-item box-shadow">
					<div class="shop-page product-item-img-container" >
						<img class="shop-page product-item-img" src="${ pageContext.request.contextPath }/resources/images/bronze.jpg" alt="상품 1">					
					</div>
					<div class="shop-page product-item-info-container" >
						<div class="shop-page product-item-info name" >3겹 화장지 뽑배</div>
						<div class="shop-page product-item-info price" >19,800원</div>					
					</div>
				</div>
				<div class="shop-page sale-detail product-item" >
					<div class="shop-page product-item-img-container">
						<img class="shop-page product-item-img" src="${ pageContext.request.contextPath }/resources/images/black.jpg" alt="상품 2">
					</div>
					<div class="shop-page product-item-info-container" >
						<div class="shop-page product-item-info">3겹 화장지 뽑배</div>
						<div class="shop-page product-item-info">19,800</div>				
					</div>				
				</div>
				<div class="shop-page sale-detail product-item" >
					<div class="shop-page product-item-img-container">
						<img class="shop-page product-item-img" src="${ pageContext.request.contextPath }/resources/images/black.jpg" alt="상품 2">
					</div>
					<div class="shop-page product-item-info-container" >
						<div class="shop-page product-item-info">3겹 화장지 뽑배</div>
						<div class="shop-page product-item-info">19,800</div>				
					</div>				
				</div>
				<div class="shop-page sale-detail product-item" >
					<div class="shop-page product-item-img-container">
						<img class="shop-page product-item-img" src="${ pageContext.request.contextPath }/resources/images/black.jpg" alt="상품 2">
					</div>
					<div class="shop-page product-item-info-container" >
						<div class="shop-page product-item-info">3겹 화장지 뽑배</div>
						<div class="shop-page product-item-info">19,800</div>				
					</div>				
				</div>
				<div class="shop-page sale-detail product-item" >
					<div class="shop-page product-item-img-container">
						<img class="shop-page product-item-img" src="${ pageContext.request.contextPath }/resources/images/platinum.jpg" alt="상품 3">
					</div>
					<div class="shop-page product-item-info-container" >
						<div class="shop-page product-item-info">3겹 화장지 뽑배</div>
						<div class="shop-page product-item-info">19,800</div>				
					</div>				
				</div>
				<div class="shop-page sale-detail product-item" >
					<div class="shop-page product-item-img-container">
						<img class="shop-page product-item-img" src="${ pageContext.request.contextPath }/resources/images/black.jpg" alt="상품 2">
					</div>
					<div class="shop-page product-item-info-container" >
						<div class="shop-page product-item-info">3겹 화장지 뽑배</div>
						<div class="shop-page product-item-info">19,800</div>				
					</div>				
				</div>
				<div class="shop-page sale-detail product-item" >
					<div class="shop-page product-item-img-container">
						<img class="shop-page product-item-img" src="${ pageContext.request.contextPath }/resources/images/black.jpg" alt="상품 2">
					</div>
					<div class="shop-page product-item-info-container" >
						<div class="shop-page product-item-info">3겹 화장지 뽑배</div>
						<div class="shop-page product-item-info">19,800</div>				
					</div>				
				</div>
			</div>
		</div>
	</div>
	<!-- FOOTER -->
	<jsp:include page="../common/footer.jsp" />
</body>
</html>

