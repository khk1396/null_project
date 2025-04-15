<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com._null.semi_box.market.model.vo.Product, java.util.ArrayList" %>
<!DOCTYPE html5>
<html>
<head>
<meta charset="UTF-8">
<title>나의 등록 상품</title>
</head>
<body>
	<!-- HEADER -->
	<jsp:include page="/views/common/header.jsp" />
	<!-- SUB HEADER -->
	<jsp:include page="subHeader.jsp" />

	<div class="market-page my-applied-prod-container page-layout footer-fixed-bottom" >
		<div class="market-page my-applied-prod contents-inner">
			<div class="market-page contents-title-container my-applied-prod">
				<h1 class="market-page contents-title my-applied-prod" >나의 거래 요청</h1>
			</div>
			<div class="market-page my-applied-prod-item-list-container">
				<div class="market-page contents-title my-applied-prod-list-inner" >
					<% 
						ArrayList<Product> registedProductList = (ArrayList<Product>)request.getAttribute("registedproductList");
						ArrayList<Product> appliedProductList = (ArrayList<Product>)request.getAttribute("appliedProductList");
						
						for(int i = 0; i < appliedProductList.size(); i++) {
					%>
						<form action="myAppliedProducts" method="post" class="market-page my-applied-prod-item-container my-applied-prod">
							<span class="market-page my-applied-prod-item-section my-applied-prod"> <!-- 상대방이 등록한 상품 정보들 -->
								<div class="market-page contents-category my-applied-prod">등록된 상품</div>
								<div class="market-page contents-category-data my-applied-prod product-info">
									<span class="market-page contents-img-container my-applied-prod product-info">
										<img class="market-page contents-img my-applied-prod" src="${ pageContext.request.contextPath }<%= registedProductList.get(i).getProductImg() %>" alt="상품 이미지">
									</span>
									<span class="market-page contents-data my-applied-prod product-info">
										<div class="market-page contents-data my-applied-prod"><%= registedProductList.get(i).getProductName() %></div>
										<div class="market-page contents-data my-applied-prod"><%= registedProductList.get(i).getProductPrice() %></div>
									</span>
								</div>
							</span>
							<span class="market-page my-applied-prod-item-section my-applied-prod" > <!-- 내가 요청한 상품 정보들 -->
								<div class="market-page contents-category my-applied-prod">요청한 상품</div>
								<div class="market-page contents-category-data my-applied-prod product-info">
									<span class="market-page contents-img-container my-applied-prod">
										<img class="market-page contents-img my-applied-prod" src="${ pageContext.request.contextPath }<%= appliedProductList.get(i).getProductImg() %>" alt="상품 이미지">
									</span>
									<span class="market-page contents-data my-applied-prod product-info">
										<div class="market-page contents-data my-applied-prod"><%= appliedProductList.get(i).getProductName() %></div>
										<input type="hidden" name="myProductId" value="<%= appliedProductList.get(i).getProductId() %>"/>
										<div class="market-page contents-data my-applied-prod"><%= appliedProductList.get(i).getProductPrice() %></div>
									</span>
								</div>
							</span>
							<span class="market-page my-applied-prod-item-section my-applied-prod comment" >
								<div class="market-page contents-category my-applied-prod comment">코멘트</div>
								<div class="market-page contents-category-data my-applied-prod comment" >
									<%= appliedProductList.get(i).getRegistComment() %>
								</div>
							</span>
							<span class="market-page my-applied-prod-item-section my-applied-prod applied-date">
								<div class="market-page contents-category my-applied-prod applied-date">요청 날짜</div>
								<div class="market-page contents-category-data my-applied-prod applied-date" >
									<%= appliedProductList.get(i).getGetDate() %>							
								</div>
							</span>
							<span class="market-page my-applied-prod-item-section my-applied-prod btn-container" >
								<button class="btn btn-small btn-secondary btn-hover">요청 취소</button>
							</span>
						</form>
					<% } %>
				</div>
			</div>
		</div>
	</div>







	<!-- FOOTER -->
	<jsp:include page="/views/common/footer.jsp" />
</body>
</html>