<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com._null.semi_box.mypage.model.vo.MyProduct, java.util.ArrayList" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<link href="${ pageContext.request.contextPath }/resources/css/myPage/inventory.css" rel="stylesheet" />
</head>
<body>
	<jsp:include page="/views/common/header.jsp" />
	
	<!-- MY INVENTORY PAGE -->
	<div class="my-page container page-layout footer-fixed-bottom" >
	
		<!-- ASIDE NAV BAR -->
		<jsp:include page="/views/myPage/asideNavBar.jsp" />
		<div class="my-page contents-container inventory" >
		
			<!-- SUB HEADER -->
			<div class="my-page sub-header inventory" > 
				<a class="my-page sub-header btn btn-small btn-secondary btn-hover" href="${ pageContext.request.contextPath }/mypage/inventory">나의 박스</a>
				<a class="my-page sub-header btn btn-small btn-secondary btn-hover">나의 획득 상품</a>
			</div>
			
			<div class="my-page title-container" >
				<h1 class="my-page title inventory" >
					나의 획득 상품
				</h1>
				<a class="my-page inventory btn btn-medium btn-primary btn-hover" href="${ pageContext.request.contextPath }/tradeRegist" >교환 등록</a>			
			</div>
			<% 
				ArrayList<MyProduct> list = (ArrayList<MyProduct>)request.getAttribute("myProductList");
			%>
			<div class="my-page item-list-container inventory" >						
				<% for(int i = 0; i < list.size(); i++) { %>
				
					<span class="my-page box-item-container card box-shadow" >
						<a class="my-page box-item-link" href="" >
							<span class="my-page box-item card img-container" >
								<img class="my-page box-item card img" src="<%= list.get(i).getProductImg() %>" />
							</span>
							<span class="my-page box-item card info-container" >
								<div class="my-page box-item card title">
								</div>
								<div class="my-page box-item card price">
									<%= list.get(i).getProductPrice() %> 원
								</div>				
								<div class="my-page box-item card des">
									<%= list.get(i).getProductDescription() %>
								</div>
							</span>
						</a>
					</span>
					
				<% } %>
			</div>
		</div>
	</div>
	<jsp:include page="/views/common/footer.jsp" />
</body>
</html>