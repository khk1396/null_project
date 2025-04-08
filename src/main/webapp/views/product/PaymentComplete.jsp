<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>결재완료페이지</title>
<style>
        body {
            font-family: Arial, sans-serif;
            text-align: center;
            margin-top: 50px;
        }
        .circle {
            display: inline-block;
            width: 40px;
            height: 40px;
            background-color: pink;
            border-radius: 50%;
            text-align: center;
            line-height: 40px;
            font-weight: bold;
            margin-bottom: 10px;
        }
        .menu {
            margin-top: 30px;
            font-size: 18px;
        }
        .menu a {
            text-decoration: none;
            color: black;
            font-weight: bold;
            margin: 0 15px;
        }
        button.btn.btn-secondary {
		    color: #1f53f0;
  		    background: #f4f4f4;
 		    border: 2px solid #1f53f0;
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
	<br><br><br>	

	<div class="page-layout">
		<h2 style="font-size:35px;">결제가 완료되었습니다. 감사합니다.!</h2>
	
	<br><br><br>
		    <p style="font-size:20px;"><strong>상품 정보</strong></p>
    		<p>주문 상품 Platinum Box 9900 * 2개</p>
    		<p>주문 금액 19,800원</p>

	<br><br>
		    <p style="font-size:20px;"><strong>결제 수단</strong></p>
    		<p>쿠팡와우카드(KB국민)/일시불</p>
    		<p>총 결제 금액 19,800원</p>

	<br><br>
	
    	<div class="menu">
        	<a href="../product/ProductSale.jsp" class="button">상품판매</a>
        	<a href="#" class="button"><strong>마이페이지</strong></a>
   		</div>
	
	<br><br><br><br><br>
	</div>
	
	<!-- FOOTER -->
	<jsp:include page="../common/footer.jsp" />

</body>
</html>  


