<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html5>
<html>
<head>
<meta charset="UTF-8">
<title>상품판매페이지</title>
<link href="${ pageContext.request.contextPath }/resources/css/product/productSale.css" rel="stylesheet" />
<script>

    function selectCategory(button) {
        let buttons = document.querySelectorAll('.category-btn');
        buttons.forEach(btn => {
            btn.classList.remove('btn-selected', 'btn-unselected');
            btn.classList.add('btn-unselected');
        });
        button.classList.remove('btn-unselected');
        button.classList.add('btn-selected');
    }
</script>
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
	    <div class="shop-page category-container" >
	   		<button class="shop-page category btn btn-medium btn-secondary" onclick="selectCategory(this)">가전제품</button>
	   		<button class="shop-page category btn btn-medium btn-secondary" onclick="selectCategory(this)">의류패션</button>
	   		<button class="shop-page category btn btn-medium btn-secondary" onclick="selectCategory(this)">생활용품</button>
	   		<button class="shop-page category btn btn-medium btn-secondary" onclick="selectCategory(this)">건강기능</button>	    
	    </div>
   		
    	<!-- TODO: 박스 아이템 클릭 시 상세 페이지로 url 이동 구현 -->
    	<div class="shop-page item-list-container" >
    		<div class="shop-page item-container box-shadow" onclick="return openBox();" >
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
    		</div>
	   		<div class="shop-page item-container box-shadow" onclick="return openBox();" >
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
    		</div>
    		<div class="shop-page item-container box-shadow" onclick="return openBox();" >
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
    		</div>
    		<div class="shop-page item-container box-shadow" onclick="return openBox();" >
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
    		</div>
    		<div class="shop-page item-container box-shadow" onclick="return openBox();" >
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
    		</div>
    	</div>
	 </div>
	 
    <!-- FOOTER -->
    <jsp:include page="/views/common/footer.jsp" />
</body>
</html>

