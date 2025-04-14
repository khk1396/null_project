<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html5>
<html>
<head>
<meta charset="UTF-8">
<title>상품판매페이지</title>
<link href="${ pageContext.request.contextPath }/resources/css/shop/shopMain.css" rel="stylesheet" />
<link href="${ pageContext.request.contextPath }/resources/css/shop/common.css" rel="stylesheet" />
</head>
<body>      
    <!-- HEADER -->
    <jsp:include page="/views/common/header.jsp" />
    
    <!-- STYLE -->
    <jsp:include page="/views/common/style.jsp" />

    <div class="shop-page sale contents-container page-layout footer-fixed-bottom">
	    <div class="shop-page sale contents-inner" >
	    	<div class="shop-page sale contents-title" >
		    	<h1>세미 박스 상품</h1>	    	
	    	</div>
	    </div>
    	<!-- 
    		TODO: 박스 아이템 클릭 시 상세 페이지로 url 이동 구현 
    		cetegory 번호와 박스 번호 또는 이름으로 구별하여 이동 
    	-->
    	<div class="shop-page item-list-container" >
    		<div class="shop-page item-container box-shadow" >
    			<a class="shop-page item-inner product-item-link" href="${pageContext.request.contextPath}/shop/details?boxType=black">
    		<!--  
    			<a class="shop-page item-inner product-item-link" href="${pageContext.request.contextPath}/shop/details" >
    		-->
	    			<div class="shop-page item-img-container" >
		    			<img class="shop-page item-img" src="${pageContext.request.contextPath}/resources/images/black.jpg"/>    			
	    			</div>
	    			<div class="shop-page item-info-container" >
	    				<div class="shop-page item-info description" >
	    					최소 10만원 보장, 꽝 없는 박스
	    				</div>
	    				<div class="shop-page item-info price" >
	    					99,000원
	    				</div>
	    			</div>
    			</a>
    		</div>
	   		<div class="shop-page item-container box-shadow" >
	   				<!-- <a class="shop-page item-inner product-item-link" href="${pageContext.request.contextPath}/shop/details" > -->
	    		<a class="shop-page item-inner product-item-link" href="${pageContext.request.contextPath}/shop/details?boxType=platinum">
	    			<div class="shop-page item-img-container" >
		    			<img class="shop-page item-img" src="${pageContext.request.contextPath}/resources/images/platinum.jpg"/>
	    			</div>
	    			<div class="shop-page item-info-container" >
	    				<div class="shop-page item-info description" >
	    					최소 6만원 보장, 꽝 없는 박스
	    				</div>
	    				<div class="shop-page item-info price" >
	    					59,000원
	    				</div>
	    			</div>
    			</a>
    		</div>
    		<div class="shop-page item-container box-shadow" >
	    		<a class="shop-page item-inner product-item-link" href="${pageContext.request.contextPath}/shop/details?boxType=gold">
	    			<div class="shop-page item-img-container" >
		    			<img class="shop-page item-img" src="${pageContext.request.contextPath}/resources/images/gold.jpg"/>    			
	    			</div>
	    			<div class="shop-page item-info-container" >
	    				<div class="shop-page item-info description" >
	    					최소 5만원 보장, 꽝 없는 박스
	    				</div>
	    				<div class="shop-page item-info price" >
	    					49,000원
	    				</div>
	    			</div>
		   		</a>
    		</div>    		
    		<div class="shop-page item-container box-shadow" >
    				    			<a class="shop-page item-inner product-item-link" href="${pageContext.request.contextPath}/shop/details?boxType=silver">
	    			<div class="shop-page item-img-container" >
		    			<img class="shop-page item-img" src="${pageContext.request.contextPath}/resources/images/silver.jpg"/>    			
	    			</div>
	    			<div class="shop-page item-info-container" >
	    				<div class="shop-page item-info description" >
	    					최소 3만원 보장, 꽝 없는 박스
	    				</div>
	    				<div class="shop-page item-info price" >
	    					29,000원
	    				</div>
	    			</div>
    			</a>
    		</div>
    		<div class="shop-page item-container box-shadow" >
    				    			<a class="shop-page item-inner product-item-link" href="${pageContext.request.contextPath}/shop/details?boxType=bronze">
	    			<div class="shop-page item-img-container" >
		    			<img class="shop-page item-img" src="${pageContext.request.contextPath}/resources/images/bronze.jpg"/>    			
	    			</div>
	    			<div class="shop-page item-info-container" >
	    				<div class="shop-page item-info description" >
	    					최소 1만원 보장, 꽝 없는 박스
	    				</div>
	    				<div class="shop-page item-info price" >
	    					9,000원
	    				</div>
	    			</div>
    			</a>
    		</div>
    	</div>
	 </div>
	 
    <!-- FOOTER -->
    <jsp:include page="/views/common/footer.jsp" />
</body>
</html>

