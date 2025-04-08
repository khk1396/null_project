<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>모든 유저 교환 상품</title>
<link href="/semi_box/resources/css/market/common.css" rel="stylesheet"/>
<script src="https://code.jquery.com/jquery-3.7.1.min.js" integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo=" crossorigin="anonymous"></script>
</head>
<body>
	<jsp:include page="../common/header.jsp" />
    <jsp:include page="subHeader.jsp" />
	<main class="market-page contents-container all-users-trade page-layout footer-fixed-bottom">
	    <div class="market-page contents-inner all-users-trade" >
	        <div class="market-page contents-title-container all-users-trade">
	            <h1>전체 상품 목록</h1>
	        </div>
	
	        <div class="market-page item-list-container all-users-trade">
	        <% for(int i = 0; i < 100; i++) { %>
	            <div class="market-page product-item container card box-shadow all-users-trade">
	            	<div class="market-page product-item card img-container all-users-trade" >
		                <img class="market-page product-item card img all-users-trade" src="/semi_box/views/market/puppy.jpg" />	            	
	            	</div>
	            	<div class="market-page product-item card info-container all-users-trade" >
		                <div class="market-page product-item card name all-users-trade">상품명</div>
		                <div class="market-page product-item card price all-users-trade">39,800원</div>
		                <div class="market-page product-item card comment all-users-trade" >이게얼마나맛있고멋있고귀여운제품인지너는알고있느냐정말맛있게먹을수도있다</div>
	            	</div>
	            </div>
	         <%} %>
	        </div>
	        
	    </div>
	</main>
	
	<jsp:include page="../common/footer.jsp" />
</body>
</html>