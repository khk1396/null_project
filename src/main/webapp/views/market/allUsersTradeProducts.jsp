<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
                <% for(int i = 0; i<15; i++) { %>
                    <div class="productCard">
                        <img src="/semi_box/views/market/puppy.jpg" width="250px" height="200px"/>
                        <div class="productName">상품명</div>
                        <div class="productPrice">39,800원</div><br>
                        <div class="productDescription" style="font-size: 12px;">이게얼마나맛있고멋있고귀여운제품인지너는알고있느냐정말맛있게먹을수도있다</div><br>
                        <div class="productComment">나는 이걸 세상에서 제일비싼 물건과 교환을 원한다. 연락은 내가 먼저할테니 너는 받기만 하거라. 연락 느리다 재촉하지 마라. 불만있으면 abcd@naver.com 메일보내라</div>
                    </div>
                 <%} %>
                </div>
                
            </div>
            
            <div class="emptySection"></div>
        </div>
	</main>
	
	<footer>
		<jsp:include page="../common/footer.jsp" />
	</footer>
</body>
</html>