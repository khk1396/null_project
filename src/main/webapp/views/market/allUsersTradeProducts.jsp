<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com._null.semi_box.market.model.vo.Product, java.util.ArrayList" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>모든 유저 교환 상품</title>
<link href="${ pageContext.request.contextPath }/resources/css/market/common.css" rel="stylesheet"/>
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
	       			<%
               			ArrayList<Product> productList = (ArrayList<Product>)request.getAttribute("productList");
               		for(int i = 0; i< productList.size(); i++) { %>
	               
	            <form action="market/tradeRegist" method="post" onclick="this.submit();" class="market-page product-item container card box-shadow all-users-trade">
	            	<input type="hidden" name="selectProductId" value="<%= productList.get(i).getProductId() %>"/>
	            	<div class="market-page product-item card img-container all-users-trade" >
		                <img class="market-page product-item card img all-users-trade" src="${ pageContext.request.contextPath }<%= productList.get(i).getProductImg() %>" />	            	
	            	</div>
	            	<div class="market-page product-item card info-container all-users-trade" >
		                <div class="market-page product-item card name all-users-trade"><%= productList.get(i).getProductName() %></div>
		                <input name="selectProductName" value="<%= productList.get(i).getProductName() %>" type="hidden" />
		                <div class="market-page product-item card price all-users-trade"><%= productList.get(i).getProductPrice() %>원</div>
		                <div class="market-page product-item card comment all-users-trade" ><%= productList.get(i).getRegistComment() %></div>
	            	</div>
	            </form>
	         	<%} %>
	        </div>
	    </div>
	</main>
	
	
	<jsp:include page="../common/footer.jsp" />
</body>
</html>