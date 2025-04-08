<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList, com._null.semi_box.model.vo.Product" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>모든 유저 교환 상품</title>
<link href="/semi_box/resources/css/common/reset.css" rel="stylesheet" />
<link href="/semi_box/resources/css/common/stylesheet.css" rel="stylesheet" />
<link href="/semi_box/resources/css/market/common.css" rel="stylesheet"/>



<script src="https://code.jquery.com/jquery-3.7.1.min.js" integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo=" crossorigin="anonymous"></script>
</head>
<body>
	<header>
		<jsp:include page="../common/header.jsp" />
	</header>
	<main>
        <div class="content">
            <div class="emptySection"></div>

            <div class="mainContent" style="width: 1300px;">
                
                    <div class="pageBtnList" style="text-align: center;" width="100%" height="100px" >
                        <a href="#" onclick="location.reload();" class="link link-medium link-hover" style="padding-left:35px; padding-right:35px;">다른 상품</a>
                        <a href="myRegistedProducts" class="link link-medium link-hover">등록한 상품</a>
                        <a href="myAppliedProducts" class="link link-medium link-hover">거래 요청 상품</a>
                        <a href="tradeRegist" class="link link-medium link-hover" style="padding-left:35px; padding-right:35px;">상품 등록</a>
                        <a href="tradeHistory" class="link link-medium link-hover" style="padding-left:35px; padding-right:35px;">거래 내역</a>
                    </div>
                    <hr>
                <div class="listDescription">
                    &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;<span style="text-decoration:underline; text-decoration-thickness: 2px;">전체 상품 목록</span>
                </div>

                <div class="registedProductsList">
                <% 
                ArrayList<Product> productList = (ArrayList<Product>)request.getAttribute("productList");
                for(int i = 0; i<productList.size(); i++) { 
                %>
                    <form action="clickWantProduct" method="post" class="productCard" onclick="wantTradeProduct(this);">
                    	<input type="hidden" name="productId" value="<%= productList.get(i).getProductId() %>"/>
                        <img src="<%= productList.get(i).getProductImg() %>" width="250px" height="200px"/>
                        <div class="productName" name="productName"><%= productList.get(i).getProductName() %></div>
                        <div class="productPrice"><%= productList.get(i).getProductPrice() %></div><br>
                        <div class="productDescription" style="font-size: 12px;"><%= productList.get(i).getProductDescription() %></div><br>
                        <div class="productComment"><%= productList.get(i).getRegistComment() %></div>
                    </form>
                 <%} %>
                </div>
                
            </div>
            
            <div class="emptySection"></div>
        </div>
	</main>
	
	<script>
		wantTradeProduct = function(e) {
			e.submit();
		}
	</script>
	
	<footer>
		<jsp:include page="../common/footer.jsp" />
	</footer>
</body>
</html>