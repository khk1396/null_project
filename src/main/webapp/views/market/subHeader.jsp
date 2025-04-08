<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html5>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<link href="${ pageContext.request.contextPath}/resources/css/market/common.css" rel="stylesheet"/>
<link href="${ pageContext.request.contextPath}/resources/css/market/allUsersTradeProducts.css" rel="stylesheet"/>
<link href="${ pageContext.request.contextPath}/resources/css/market/myAppliedProducts.css" rel="stylesheet"/>
<link href="${ pageContext.request.contextPath}/resources/css/market/myRegisteredProducts.css" rel="stylesheet"/>
<link href="${ pageContext.request.contextPath}/resources/css/market/tradeHistory.css" rel="stylesheet"/>
<link href="${ pageContext.request.contextPath}/resources/css/market/tradeRegist.css" rel="stylesheet"/>
</head>
<body>
	<jsp:include page="/views/common/style.jsp" />
	<div class="market-page sub-header-container" >
		<div class="market-page sub-header-inner page-layout" >
	        <a href="market" class="market-page link link-medium link-text-hover" >전체 상품</a>
	        <a href="myRegistedProducts" class="market-page link link-medium link-text-hover">나의 등록 상품</a>
	        <a href="myAppliedProducts" class="market-page link link-medium link-text-hover">나의 거래 요청</a>
	        <a href="tradeRegist" class="market-page link link-medium link-text-hover" >상품 등록</a>
	        <a href="tradeHistory" class="market-page link link-medium link-text-hover" >상품 교환 내역</a>		
		</div>
    </div>
</body>
</html>