<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html5>
<html>
<head>
<meta charset="UTF-8">
<title>결제취소페이지</title>
    <style>
        body {
            text-align: center;
            font-family: Arial, sans-serif;
        }
        .container {
            margin-top: 50px;
        }
        .cancel-reason {
            font-size: 14px;
            color: gray;
        }
        .info {
            margin-top: 20px;
            font-size: 18px;
        }
        .circle {
            width: 30px;
            height: 30px;
            border-radius: 50%;
            background-color: pink;
            display: inline-flex;
            align-items: center;
            justify-content: center;
            font-weight: bold;
            margin: 10px;
        }
        .button-container {
            margin-top: 20px;
        }
        .button {
            background-color: pink;
            padding: 10px 20px;
            border-radius: 20px;
            text-decoration: none;
            color: black;
            font-weight: bold;
            margin: 10px;
        }
    </style>
</head>
<body>
	
	<!-- HEADER -->
	<jsp:include page="../common/header.jsp" />
	
	<!-- STYLE -->
	<jsp:include page="../common/style.jsp" />
	
	<div class="page-layout"> 	
		<div class="container">
    		<h2 style="font-size:35px">결제가 취소되었습니다</h2>
    		<p class="cancel-reason">취소 사유<br> [ 전산 작업중 1시 이후 이용 바랍니다. ]</p>
		</div>
		<br>
		
    <div class="info">
        <p><strong>상품 정보</strong></p>
        <p>주문 박스 Platinum Box 9900 × 2개</p>
        <p>주문 금액 19,800원</p>

		<br><br>
		
        <p><strong>결제 수단</strong></p>
        <p>쿠팡와우카드(KB국민)/일시불</p>
        <p>총 결제 금액 19,800원</p>
    </div>
	<br>
    <div class="button-container">
        <a href="../product/ProductSale.jsp" class="button">상품 판매</a>
        <a href="../product/Payment.jsp" class="button">결제 페이지</a>
    </div>
  </div>
  <br><br>
 
  <!-- FOOTER -->
  <jsp:include page="../common/footer.jsp" />	
</body>
</html>  



