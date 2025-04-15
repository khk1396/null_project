<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com._null.semi_box.market.model.vo.Trade, java.util.ArrayList" %>
<!DOCTYPE html5>
<html>
<head>
<meta charset="UTF-8">
<title>상품 교환 내역</title>
</head>
<body>
	<!-- HEADER -->
	<jsp:include page="/views/common/header.jsp" />

	<!-- SUB HEADER -->
	<jsp:include page="subHeader.jsp" />

	<div class="market-page page-layout footer-fixed-bottom">
		<div class="market-page contents-inner">
			<div class="market-page contents-title-container">
				<h1>상품 교환 내역</h1>
			</div>
			<div class="market-page ">
				<div class="market-page trade-history-item-list-container">
					<%
					ArrayList<Trade> allHistoryList = (ArrayList<Trade>)request.getAttribute("allHistoryList");
					
					for(int i = 0; i < allHistoryList.size(); i++) {
					%>
					<div class="market-page trade-history-item-container trade-history">
						<div class="market-page trade-history-item-section trade-history">
							<div class="market-page contents-category trade-history">내 상품</div>
							<div class="market-page contents-category-data trade-history product-info">
								<div class="market-page contents-img-container trade-history product-info">
									<img class="market-page contents-img trade-history" src="${ pageContext.request.contextPath }<%= allHistoryList.get(i).getMyProductImg() %>" alt="상품 이미지">
								</div>
								<div class="market-page contents-data trade-history product-info">
									<div class="market-page contents-data trade-history"><%= allHistoryList.get(i).getMyProductName() %></div>
									<div class="market-page contents-data trade-history"><%= allHistoryList.get(i).getMyProductPrice() %></div>
								</div>
							</div>
						</div>
						<div class="market-page trade-history-item-section trade-history" >
							<div class="market-page contents-category trade-history">상대 상품</div>
							<div class="market-page contents-category-data trade-history product-info">
								<div class="market-page contents-img-container trade-history product-info">
									<img class="market-page contents-img trade-history" src="${ pageContext.request.contextPath }<%= allHistoryList.get(i).getOtherProductImg() %>" alt="상품 이미지">
								</div>
								<div class="market-page contents-data trade-history product-info">
									<div class="market-page contents-data trade-history"><%= allHistoryList.get(i).getOtherProductName() %></div>
									<div class="market-page contents-data trade-history"><%= allHistoryList.get(i).getOtherProductPrice() %></div>
								</div>
							</div>
						</div>
						<div class="market-page trade-history-item-section trade-history comment" >
							<div class="market-page contents-category trade-history">코멘트</div>
							<div class="market-page contents-category-data trade-history comment" >
								<%= allHistoryList.get(i).getMyComment() %>							
							</div>
						</div>
						<div class="market-page trade-history-item-section trade-history applied-date" >
							<div class="market-page contents-category trade-history trade-date">교환 날짜</div>
							<div class="market-page contents-category-data trade-history trade-date" >
								<%= allHistoryList.get(i).getTradeDate() %>							
							</div>
						</div>
					</div>
					<% } %>
				</div>


			</div>
		</div>
	</div>

	<!-- FOOTER -->
	<jsp:include page="/views/common/footer.jsp" />
</body>
</html>