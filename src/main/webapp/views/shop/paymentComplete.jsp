<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
  String boxName = request.getParameter("boxName");
  String boxPrice = request.getParameter("boxPrice");
  String quantity = request.getParameter("quantity");
  String totalPrice = request.getParameter("totalPrice");
  String paymentMethod = request.getParameter("paymentMethod");

  int priceInt = Integer.parseInt(boxPrice);
  int qtyInt = Integer.parseInt(quantity);
  int totalInt = Integer.parseInt(totalPrice);
%>
<!DOCTYPE html5>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<link href="${ pageContext.request.contextPath }/resources/css/shop/common.css" rel="stylesheet" />
<link href="${ pageContext.request.contextPath }/resources/css/shop/paymentResult.css" rel="stylesheet" />
</head>
<body>

	
	<!-- HEADER -->
	<jsp:include page="../common/header.jsp" />
	
	<!-- STYLE -->
	<jsp:include page="../common/style.jsp" />

	<div class="shop-page payment-result contents-container page-layout footer-fixed-bottom">
		<div class="shop-page payment-result contents-inner box-shadow" >
			<div class="shop-page payment-result contents-title" >
				<h2 >결제가 완료되었습니다!</h2>
			</div>
			<div class="shop-page payment-result payment-info-container" >
			    <div class="shop-page payment-result payment-info title product">
			    	주문 정보
			    </div>
			    <!--  주문상품 -->
	    		<div class="shop-page payment-result payment-info product">
	    			<span class="shop-page payment-result info sub-title product" >주문 상품</span>
	    			<span class="shop-page payment-result info info">
	    				<%= boxName %> Box <%= quantity %>개  
	    			 </span>
	    		</div>
	
	    		<!-- 주문 금액 -->
				<div class="shop-page payment-result payment-info price">
					<span class="shop-page payment-result info sub-title price">주문 금액</span>
  					<span class="shop-page payment-result info value price">
    					<%= String.format("%,d", totalInt) %>원
  					</span>
				</div>
				
				<!-- 결제 수단 -->
			    <div class="shop-page payment-result payment-info method title">
			    	결제 수단
			    </div>
				<div class="shop-page payment-result payment-info method-info">
  					결제 형태 <%= paymentMethod %>
				</div>
	    		
	    		<!-- 총 결제 금액 -->
				<div class="shop-page payment-result payment-info total-price">
  					총 결제 금액 <%= String.format("%,d", Integer.parseInt(totalPrice)) %>원
				</div>
			</div>
	    	<div class="shop-page payment payment-btn-container">
	        	<a href="${ pageContext.request.contextPath }/shop" class="shop-page payment btn btn-secondary btn-medium btn-hover">
	        		상품판매
	        	</a>
	        	<a href="${ pageContext.request.contextPath }/mypage/inventory" class="shop-page payment btn btn-secondary btn-medium btn-hover">
	        		마이페이지
	        	</a>
	   		</div>
		</div>		
	</div>
	
	<!-- FOOTER -->
	<jsp:include page="../common/footer.jsp" />

</body>
</html>  


