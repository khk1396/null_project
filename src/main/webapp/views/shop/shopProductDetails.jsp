<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com._null.semi_box.shop.model.vo.SemiProduct, java.util.ArrayList" %>
<!DOCTYPE html5>
<html>
<head>
<title>상품 상세 페이지</title>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<link href="${ pageContext.request.contextPath }/resources/css/shop/shopProductDetail.css" rel="stylesheet" />
<link href="${ pageContext.request.contextPath }/resources/css/shop/common.css" rel="stylesheet" />
<script src="${ pageContext.request.contextPath }/resources/js/shop/shopUtils.js" type="text/javascript" ></script>
</head>
<body>
</head>
<body>
	<!-- HEADER -->
	<jsp:include page="../common/header.jsp" />

	<!-- STYLE -->
	<jsp:include page="../common/style.jsp" />
	
	<div class="shop-page sale-detail contents-container page-layout footer-fixed-bottom">
	<form action="payment" method ="post">
		<!-- 상품 정보 -->
		<div class="shop-page sale-detail contents-inner">
			<div class="shop-page sale-detail box-img-container" >
				<!-- TODO: url 또는 선택 상품의 식별자로 박스 이미지 로드 -->
				<!-- <img class="shop-page sale-detail box-img" src="${pageContext.request.contextPath}/resources/images/black.jpg" /> -->
				<img class="shop-page sale-detail box-img"
					  src="${pageContext.request.contextPath}/resources/images/${semiBoxVo.boxName}.jpg"
					  alt="${semiBoxVo.boxName} 박스 이미지" />
			</div>
			<div class="shop-page sale-detail box-info-cotainer">
				<div class="shop-page sale-detail box-info name ">
					<!-- 박스 이름 -->
					${ semiBoxVo.boxName.toUpperCase() } BOX
				</div>
				<!-- NOTI: 설명에 대한 값이 더 필요함 -->
				<div class="shop-page sale-detail box-info price-container">
					<span class="shop-page sale-detail box-info-title price" >가격</span> 
					<span class="shop-page sale-detail box-info-price" >
						<span class="shop-page sale-detail box-info-price" id="price">${ semiBoxVo.boxPrice }</span>원
					</span>
				</div>	

					<!-- 수량 증가/감소 -->
					<div class="shop-page sale-detail box-info box-counter">
						<span class="shop-page sale-detail box-info-title">수량</span>
						<button class="shop-page sale-detail btn btn-secondary btn-small" id="decreaseBtn">-</button>
						<span id="quantity" class="shop-page sale-detail count">1</span>
						<button class="shop-page sale-detail btn btn-secondary btn-small" id="increaseBtn">+</button>
					
						<input type="hidden" name="quantity" id="hiddenQuantity" value="1">
 						<input type="hidden" name="totalPrice" id="hiddenTotalPrice" value="${semiBoxVo.boxPrice}">
					</div>
					
					<script>
						$(document).ready(function () {
						    const price = parseInt($("#price").text().replace(/,/g, ''));

						    $("#increaseBtn").click(function (e) {
 					        	e.preventDefault();
   								let qty = parseInt($("#quantity").text());
					   	 		qty++;
	    						
					   	 		$("#quantity").text(qty);
   								$("#hiddenQuantity").val(qty);
   								
   							    const total = price * qty;
   							    
						    	$("#totalPrice").text(total.toLocaleString());
						    	$("#hiddenTotalPrice").val(total);
    						});

							$("#decreaseBtn").click(function (e) {
								e.preventDefault();
			 					let qty = parseInt($("#quantity").text());
      						
     							if (qty > 1) {
       							qty--;
        							$("#quantity").text(qty);
       								$("#hiddenQuantity").val(qty);
       								
       						      	const total = price * qty;
       						      	
   						      		$("#totalPrice").text(total.toLocaleString());
   						      		$("#hiddenTotalPrice").val(total);
      							}
    						});
  						});
					</script>	
					
					<div class="shop-page sale-detail box-info box-counter">
						<span class="shop-page sale-detail box-info-title">총 금액</span> 
						<span class="shop-page sale-detail box-info-price">
							<span class="shop-page sale-detail box-info-total-price" id="totalPrice" >${semiBoxVo.boxPrice}</span>원
								<input type="hidden" name="boxImg" value="${semiBoxVo.boxName}">
						</span>
					</div>
		
					<div class="shop-page sale-detail btn-container form" >
						<button type="submit" class="shop-page sale-detail btn submit btn-medium btn-primary btn-hover">구매</button>
					</div>
				</div>
			</div>
		</form>	
		
		<!-- 획득 가능 상품 목록 -->
        <div class="shop-page sale-detail product-list-container">
            <div class="shop-page sale-detail product-list-title">획득 가능 상품 목록</div>
            <div class="shop-page sale-detail product-list">
                <!-- 상품 1~10 -->
                <!-- 아래는 동일 구조 반복 -->
                <% 
                	ArrayList<SemiProduct> semiProductList = (ArrayList<SemiProduct>)request.getAttribute("semiProductList");
                %>
                <% for (int i = 0; i < semiProductList.size(); i++) { %> </>
                	<% 
	                	SemiProduct semiProduct = semiProductList.get(i);
                		String productImg = semiProduct.getProductImg();
                		String productDescription = semiProduct.getProductDescription();
                		int productPrice = semiProduct.getProductPrice();
	               	%>
	                <div class="shop-page sale-detail product-item">
	                    <div class="shop-page product-item-img-container">
	                        <img class="shop-page product-item-img" src="${pageContext.request.contextPath}/<%= productImg %>" alt="상품 1">
	                    </div>
	                    <div class="shop-page product-item-info-container">
	                        <div class="shop-page product-item-info name"><%= productDescription %></div>
	                        <div class="shop-page product-item-info price"><%= productPrice %>원</div>
	                    </div>
	                </div>
         		<% } %>
			</div>
        </div>
    </div>
	<!-- FOOTER -->
	<jsp:include page="../common/footer.jsp" />
</body>
</html>

