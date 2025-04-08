<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList, com._null.semi_box.model.vo.Product" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>교환 상품 등록</title>
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
                    <a href="/semi_box/market" class="link link-medium link-hover" style="padding-left:35px; padding-right:35px;">다른 상품</a>
                    <a href="myRegistedProducts" class="link link-medium link-hover">등록한 상품</a>
                    <a href="myAppliedProducts" class="link link-medium link-hover">거래 요청 상품</a>
                    <a href="#" onclick="location.reload();" class="link link-medium link-hover" style="padding-left:35px; padding-right:35px;">상품 등록</a>
                    <a href="tradeHistory" class="link link-medium link-hover" style="padding-left:35px; padding-right:35px;">거래 내역</a>
                </div>
                <hr>
                <div class="listDescription">
                    &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;<span style="text-decoration:underline; text-decoration-thickness: 2px;">상품 등록</span>
                </div>
                <form action="selectRegist" method="post">
                    <div class="productList" style="overflow-y:scroll;">
                    
                    <% 
               		 	ArrayList<Product> productList = (ArrayList<Product>)request.getAttribute("productList");
                		for(int i = 0; i<productList.size(); i++) { 
                	%>	
                            <div class="DIVproduct">
                                <!-- id에는 상품명 -->
                                <input type="checkbox" id="<%= i %>" name="productId" value="<%= productList.get(i).getProductId() %>" style="zoom: 3.0;"/>
                                <label for="<%= i %>">
                                    <!-- src에는 상품이미지주소 productList.get(i).getProductImg()-->
                                    <img src="<%= productList.get(i).getProductImg() %>" alt="상품이미지" width="100%" height="100%"/>
                                </label>&nbsp;
                                <div style="box-sizing: border-box; width: 25%;">
                                    <div class="productName">  <br> 
                                        <!-- 여기는 상품명 -->   <%= productList.get(i).getProductName() %>            
                                    </div>
                                    <div class="productDescription">
                                        <!-- 여기는 상품내용 -->   <%= productList.get(i).getProductDescription() %>
                                    </div>
                                </div>
                                <div class="commentPlace">
                                    <div class="commentText">코멘트</div>
                                    <textarea class="commentBox" name="<%= productList.get(i).getProductId() %>" placeholder="희망하는 상품 혹은 유저들에게 미리 전달할 내용을 입력하세요."></textarea>
                                </div>
                                <div class="registOne">
                                    <button class="btn btn-medium btn-secondary btn-hover" onclick="registOne();">등록</button>
                                </div>
                            </div>
                            <%}%>
                    </div>
                    <div class="selectRegist">
                        <button class="selectRegistBtn btn btn-medium btn-secondary btn-hover" type="submit">선택 등록</button>
                    </div>
                </form>
            </div>
            
            <div class="emptySection"></div>
        </div>
	</main>
	
	<footer>
		<jsp:include page="../common/footer.jsp" />
	</footer>
</body>
</html>