<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>결제페이지</title>
<style>

body {
	font-family: Arial, sans-serif;
	margin: 0;
	display: flex;
	flex-direction: column;
	align-items: center;
}

.container {
	display: flex;
	justify-content: center;
	align-items: flex-start;
	gap: 50px;
	margin-top: 40px;
	width: 100%;
	max-width: 1000px;
}

.product-info, .product-details {
	width: 300px;
}

.product-info h2, .product-details h2 {
	margin-bottom: 10px;
}

.payment-options {
	margin-top: 30px;
}

.payment-options label {
	display: block;
	margin: 10px 0;
}

button.btn.btn-primary {
	margin-top: 15px;
	color: #f4f4f4;
	background: #1f53f0;
	border: none;
	padding: 10px 20px;
	border-radius: 6px;
	cursor: pointer;
}
</style>
</head>
<body>

<div class="page-layout">
	<!-- HEADER -->
	<jsp:include page="../common/header.jsp" />

	<!-- STYLE -->
	<jsp:include page="../common/style.jsp" />

	<div class="container">
		<div class="product-info">
			<h1>세미 박스</h1>
			<img src="${pageContext.request.contextPath}/resources/images/box.png"
			     width="150" />
			     
		<div class="payment-options">
			<h1>결제 수단</h1>
			<label><input type="radio" name="payment" value="account">계좌 이체</label> <label>
			<input type="radio" name="payment" value="easy">간편 결제</label> 
			<label><input type="radio" name="payment" value="card">카드 결제</label>
			<br>
			<button class="btn btn-small btn-secondary">결제</button>
		</div>    
	</div>
	 
		<br><br>
		
		<div class="product-details">
			<h1>상품 상세 정보</h1>
			<br><br>
			<p><strong>상품 분류</strong> 생필품</p>
			<br><br>
			
			<p><strong>박스 등급</strong> Platinum</p>
			<br><br>
			
			<p><strong>판매 가격</strong><span id="price">9,900</span>원</p>
			<br><br>
			
			<p><strong>수량</strong><span style="text-align:left;"> 2</span></p>
			<br><br>
			<p><strong>총 결제 금액</strong> 19,800원</p>
        </div>
	</div>
	
	<!-- FOOTER -->
	<jsp:include page="../common/footer.jsp" />
</div>

</body>
</html>




