<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>상품상세페이지</title>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<style>
body {
    font-family: 'Arial', sans-serif;
    margin: 0;
    padding: 0;
}

.page-layout {
  max-width: 1440px;
  min-width: 1200px;
  margin: 0 auto;
}

.header {
    display: flex;
    justify-content: space-between;
    align-items: center;
    padding: 20px 40px;
    border-bottom: 2px solid #ddd;
}

.nav {
    display: flex;
    gap: 25px;
    font-weight: bold;
}

.nav a {
    text-decoration: none;
    color: black;
}

.container {
    display: flex;
    justify-content: center;
    align-items: flex-start;
    gap: 60px;
    padding: 40px 20px;
}

.product-info img {
    width: 250px;
    border: 1px solid #ddd;
    padding: 10px;
    border-radius: 8px;
}

.product-details {
    max-width: 400px;
}

.product-details h2 {
    margin-bottom: 10px;
}

.product-details p {
    font-size: 16px;
    margin-bottom: 10px;
}

.quantity-control {
    display: flex;
    align-items: center;
    gap: 10px;
    margin: 15px 0;
}

.quantity-btn {
    width: 30px;
    height: 30px;
    font-size: 18px;
    border: none;
    background-color: #0056b3;
    color: white;
    cursor: pointer;
    border-radius: 4px;
}

.purchase-btn {
    padding: 10px 30px;
    background-color: #0056b3;
    color: white;
    text-decoration: none;
    font-size: 18px;
    border-radius: 5px;
    display: inline-block;
    margin-top: 10px;
}

.product-list {
    text-align: center;
    margin: 60px auto;
}

.product-items {
    display: flex;
    justify-content: center;
    gap: 20px;
    margin-top: 20px;
}

.product-item {
    width: 160px;
    border: 1px solid #ddd;
    padding: 10px;
    border-radius: 8px;
    text-align: center;
    font-size: 14px;
}

.product-item img {
    width: 100%;
    height: 80px;
    background-color: #eee;
    object-fit: cover;
    margin-bottom: 10px;
}

.footer {
    text-align: center;
    font-size: 12px;
    padding: 20px;
    border-top: 1px solid #ccc;
    color: gray;
}
</style>
</head>
<body>
</head>
<body>

	<!-- HEADER -->
	<jsp:include page="../common/header.jsp" />

	<!-- STYLE -->
	<jsp:include page="../common/style.jsp" />

<div class="page-layout">
	<!-- 상품 정보 -->
	<div class="container">
		<div class="product-info">
			<h2>세미 박스</h2>
			<img class="image"
				src="${pageContext.request.contextPath}/resources/images/box.png" />
		</div>
		<div class="product-details">
			<h2>상품 상세 정보</h2>
			<br>
			<p><strong>상품 분류</strong> 생필품</p>
			<br><br>
			
			<p><strong>박스 등급</strong> Platinum</p>
			<br><br>
			
			<p><strong>판매 가격</strong> <span id="price">9,900</span>원</p>
			<br><br>

			<!-- 수량 증가/감소 -->
			<div>
				<strong>수량</strong>
				<button class="btn.btn-primary" id="decreaseBtn">-</button>
				<span id="quantity">2</span>
				<button class="btn.btn-primary" id="increaseBtn">+</button>
			</div>
			<br><br>

			<p><strong>총 상품 금액:</strong> <span id="totalPrice">19,800</span>원</p>
			<br>

			<!-- 구매 버튼 -->
			<form action="Payment.jsp" method="get">
				<button type="submit" class="btn btn-medium btn-primary btn-hover">구매</button>
			</form>
		</div>
	</div>

	<!-- 획득 가능 상품 목록 -->
	<div class="product-list">
		<h3>획득 가능 상품 목록</h3>
		<div class="product-items">
			<div class="product-item">
				<img src="" alt="상품 1">
				<p>3겹 화장지 뽑배</p>
				<p>19,800</p>
			</div>
			<div class="product-item">
				<img src="" alt="상품 2">
				<p>3겹 화장지 뽑배</p>
				<p>19,800</p>
			</div>
			<div class="product-item">
				<img src="" alt="상품 3">
				<p>3겹 화장지 뽑배</p>
				<p>19,800</p>
			</div>
		</div>
	</div>
</div>
	<!-- FOOTER -->
	<jsp:include page="../common/footer.jsp" />

	<!-- JavaScript -->
	<script>
		$(document).ready(function() {
			let pricePerItem = 9900;
			let quantity = 2;

			function updateTotalPrice() {
				let totalPrice = pricePerItem * quantity;
				$("#totalPrice").text(totalPrice.toLocaleString());
				$("#quantity").text(quantity);
				$("#decreaseBtn").prop("disabled", quantity <= 1);
			}

			$("#increaseBtn").click(function() {
				quantity++;
				updateTotalPrice();
			});

			$("#decreaseBtn").click(function() {
				if (quantity > 1) {
					quantity--;
					updateTotalPrice();
				}
			});

			updateTotalPrice();
		});
	</script>

</body>
</html>

