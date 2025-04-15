<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com._null.semi_box.market.model.vo.Product, java.util.ArrayList" %>
<!DOCTYPE html5>
<html>
<head>
<meta charset="UTF-8">
<title>나의 등록 상품</title>
<script src="${ pageContext.request.contextPath }/resources/js/market/marketUtils.js" type="text/javascript" ></script>
</head>
<body>
	<!-- HEADER -->
	<jsp:include page="/views/common/header.jsp" />

	<!-- STYLE -->
	<jsp:include page="/views/common/style.jsp" />
	<jsp:include page="subHeader.jsp" />

	<div class="market-page contents-container my-registered page-layout footer-fixed-bottom">
		<div class="market-page contents-inner my-registered">
			<div class="market-page contents-title-container my-registered" >
				<h1 class="market-page contents-title my-registered">나의 등록 상품</h1>
			</div>

			<div class="market-page my-registered-item-list-container my-registered">
				<div class="market-page my-registered-item-list-inner my-registered">
					<%
						ArrayList<Product> registedProductList = (ArrayList<Product>)request.getAttribute("registedProductList");
						ArrayList<Product> appliedProductList = (ArrayList<Product>)request.getAttribute("appliedProductList");
						
						for(int i = 0; i < registedProductList.size(); i++) {
					%>
					<form  action="myRegistedProducts" method="post">
						<!-- TODO: 실제 데이터 조회 시 data-set 값 변경해야 함 -->
						<div 
							class="market-page my-registered-item-container list my-registered box-shadow" 
							<%-- data-set="trade-list<%= i %>" --%> 
							onclick="return onClickRegisteredItem(this);"
						  	aria-expanded="false"
							aria-controls="trade-list<%= i %>">
							<div class="market-page my-registered-item-inner info-container my-registered">
								<span class="market-page my-registered-item img-container">
									<img class="market-page my-registered-item img" src="${ pageContext.request.contextPath }<%= registedProductList.get(i).getProductImg() %>" alt="PRODUCT.IMG">
								</span>
								<span class="market-page my-registered-item info-container" >
									<input type="hidden" name="registProductId" value="<%= registedProductList.get(i).getProductId() %>"/>
									<div class="market-page my-registered-item prod-name"><%= registedProductList.get(i).getProductName() %></div>
									<div class="market-page my-registered-item prod-price"><%= registedProductList.get(i).getProductPrice() %>원</div>
									<div class="market-page my-registered-item prod-comment" ><%= registedProductList.get(i).getRegistComment() %></div>
									<div class="market-page my-registered-item prod-created-date" ><%= registedProductList.get(i).getGetDate() %></div>
								</span>
							</div>
						</div>
						<div id="trade-list<%= i %>" class="market-page my-registered trade-item-list-container" >
							<!-- TODO: 비동기 통신으로 거래 요청 목록 조회해야 함 -->
									
							<div class="market-page my-registered trade-item-list-inner" >
									
								<div class="market-page my-registered trade-item-container box-shadow" >
									<%
									for(int t = 0; t < appliedProductList.size(); t++) {
										if(registedProductList.get(i).getProductId().equals(appliedProductList.get(t).getOtherProductId())){
									%>
									<div class="market-page my-registered trade-item-inner my-registered">
										<span class="market-page my-registered trade-item img-container">
											<img class="market-page my-registered trade-item img" src="${ pageContext.request.contextPath }<%= appliedProductList.get(t).getProductImg() %>" alt="PRODUCT.IMG">
										</span>
										<span class="market-page my-registered trade-item info-container" >
											<input type="hidden" name="applyProductId" value="<%= appliedProductList.get(t).getProductId() %>"/>
											<div class="market-page my-registered trade-item prod-name"><%= appliedProductList.get(t).getProductName() %></div>
											<div class="market-page my-registered trade-item prod-price"><%= appliedProductList.get(t).getProductPrice() %>원</div>
											<div class="market-page my-registered trade-item prod-comment" ><%= appliedProductList.get(t).getRegistComment() %></div>
											<div class="market-page my-registered trade-item prod-created-date" ><%= appliedProductList.get(t).getGetDate() %></div>
										</span>
										<!-- TODO: 비동기 요청 기능 들어가야 함 -->
										<span class="market-page my-registered trade-item btn-container">
											<button class="market-page my-registered trade-item btn btn-small btn-secondary btn-hover" name="apply" value="accept">수락</button>
											<button class="market-page my-registered trade-item btn btn-small btn-secondary btn-hover" name="apply" value="reject">거절</button>				
										</span> 
									</div>
							<% }} %>
								</div>
							</div>
							
						</div>
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