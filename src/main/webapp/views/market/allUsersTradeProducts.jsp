<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>모든 유저 교환 상품</title>
<link href="/semi_box/resources/css/common/reset.css" rel="stylesheet" />
<link href="/semi_box/resources/css/common/stylesheet.css" rel="stylesheet" />
<!-- <link href="allUsersTradeProducts.css" rel="stylesheet"/> -->


<style>

    main {
        height: 950px;
        box-sizing: border-box;
    }

    .pageDescription{
        margin: 20px;
        font-size: 60px; 
        font-weight: 900;
        text-align: center;
    }

    .content{
        display: flex;
        height: 90.1%;
        box-sizing: border-box;
    }

    .emptySection{
            border-top:1px solid #9ea0a8;
            border-bottom : 1px solid #9ea0a8;
            width: 280px;
    }
    
    main div.content div.listDescription{
        margin-top: 40px;
        color: #042EFF;
        font-size: 36px;
        font-weight: 600;
    }

    main div.registedProductsList {
        overflow-y: scroll;
        width: 96%;
        height: 72%;
        margin: auto;
        flex-wrap: wrap;
        display: flex;
        justify-content: space-around;
        box-sizing:border-box;
    }

    div.registedProductsList div.productCard {
        margin-top: 20px;
        margin-bottom:20px;
        width: 330px;
        height: 400px;
        text-align: center;
        justify-items: center;
        box-shadow: 0px 0px 10px black;
        border-radius: 5%;
    }

    .marketPageListBtn td{
        border: 1px solid;

    }

    div.mainContent>div.pageBtnList a {
        font-size: 40px;
         padding:20px;
    }


</style>

<script src="https://code.jquery.com/jquery-3.7.1.min.js" integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo=" crossorigin="anonymous"></script>
</head>
<body>
	<header>
		<jsp:include page="../common/header.jsp" />
	</header>
	<main>
        <div class="pageDescription" >
            교환 중인 전체 상품
        </div>
        <div class="content">
            <div class="emptySection">
                     <!--   <button class="btn btn-large btn-primary" style="margin-top:150px;">상품 리스트</button>
                        <button class="btn btn-large btn-secondary">마이페이지</button>
                        <button class="btn btn-large btn-secondary">상품 등록</button>-->
            </div>


            <div class="mainContent" style="width: 1300px;">
                
                    <div class="pageBtnList" style="text-align: center;" width="100%" height="100px" >
                        <a href="#" onclick="location.reload();" class="link link-medium link-hover" style="padding-left:35px; padding-right:35px;">다른 상품</a>
                        <a class="link link-medium link-hover">등록한 상품</a>
                        <a class="link link-medium link-hover">거래 신청 상품</a>
                        <a href="tradeRegist" class="link link-medium link-hover" style="padding-left:35px; padding-right:35px;">상품 등록</a>
                        <a class="link link-medium link-hover" style="padding-left:35px; padding-right:35px;">거래 내역</a>
                    </div>
                    <hr>
                <div class="listDescription">
                    &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;<span style="text-decoration:underline; text-decoration-thickness: 2px;">전체 상품 목록</span>
                </div>

                <div class="registedProductsList">
                    <div class="productCard">
                        <img src="puppy.jpg" width="250px" height="200px"/>
                        <div class="productName">상품명</div>
                        <div class="productPrice">39,800원</div><br>
                        <div class="productDescription" style="font-size: 12px;">이게얼마나맛있고멋있고귀여운제품인지너는알고있느냐정말맛있게먹을수도있다</div><br>
                        <div class="productComment">나는 이걸 세상에서 제일비싼 물건과 교환을 원한다. 연락은 내가 먼저할테니 너는 받기만 하거라. 연락 느리다 재촉하지 마라. 불만있으면 abcd@naver.com 메일보내라</div>
                    </div>

                    <div class="productCard">
                        <img src="puppy.jpg" width="250px" height="200px"/>
                        <div class="productName">상품명</div>
                        <div class="productPrice">39,800원</div><br>
                        <div class="productDescription" style="font-size: 12px;">이게얼마나맛있고멋있고귀여운제품인지너는알고있느냐정말맛있게먹을수도있다</div><br>
                        <div class="productComment">나는 이걸 세상에서 제일비싼 물건과 교환을 원한다. 연락은 내가 먼저할테니 너는 받기만 하거라. 연락 느리다 재촉하지 마라. 불만있으면 abcd@naver.com 메일보내라</div>
                    </div>
                    <div class="productCard">
                        <img src="puppy.jpg" width="250px" height="200px"/>
                        <div class="productName">상품명</div>
                        <div class="productPrice">39,800원</div><br>
                        <div class="productDescription" style="font-size: 12px;">이게얼마나맛있고멋있고귀여운제품인지너는알고있느냐정말맛있게먹을수도있다</div><br>
                        <div class="productComment">나는 이걸 세상에서 제일비싼 물건과 교환을 원한다. 연락은 내가 먼저할테니 너는 받기만 하거라. 연락 느리다 재촉하지 마라. 불만있으면 abcd@naver.com 메일보내라</div>
                    </div>
                    <div class="productCard">
                        <img src="puppy.jpg" width="250px" height="200px"/>
                        <div class="productName">상품명</div>
                        <div class="productPrice">39,800원</div><br>
                        <div class="productDescription" style="font-size: 12px;">이게얼마나맛있고멋있고귀여운제품인지너는알고있느냐정말맛있게먹을수도있다</div><br>
                        <div class="productComment">나는 이걸 세상에서 제일비싼 물건과 교환을 원한다. 연락은 내가 먼저할테니 너는 받기만 하거라. 연락 느리다 재촉하지 마라. 불만있으면 abcd@naver.com 메일보내라</div>
                    </div>
                    <div class="productCard">
                        <img src="puppy.jpg" width="250px" height="200px"/>
                        <div class="productName">상품명</div>
                        <div class="productPrice">39,800원</div><br>
                        <div class="productDescription" style="font-size: 12px;">이게얼마나맛있고멋있고귀여운제품인지너는알고있느냐정말맛있게먹을수도있다</div><br>
                        <div class="productComment">나는 이걸 세상에서 제일비싼 물건과 교환을 원한다. 연락은 내가 먼저할테니 너는 받기만 하거라. 연락 느리다 재촉하지 마라. 불만있으면 abcd@naver.com 메일보내라</div>
                    </div>
                    <div class="productCard">
                        <img src="puppy.jpg" width="250px" height="200px"/>
                        <div class="productName">상품명</div>
                        <div class="productPrice">39,800원</div><br>
                        <div class="productDescription" style="font-size: 12px;">이게얼마나맛있고멋있고귀여운제품인지너는알고있느냐정말맛있게먹을수도있다</div><br>
                        <div class="productComment">나는 이걸 세상에서 제일비싼 물건과 교환을 원한다. 연락은 내가 먼저할테니 너는 받기만 하거라. 연락 느리다 재촉하지 마라. 불만있으면 abcd@naver.com 메일보내라</div>
                    </div>
                    <div class="productCard">
                        <img src="puppy.jpg" width="250px" height="200px"/>
                        <div class="productName">상품명</div>
                        <div class="productPrice">39,800원</div><br>
                        <div class="productDescription" style="font-size: 12px;">이게얼마나맛있고멋있고귀여운제품인지너는알고있느냐정말맛있게먹을수도있다</div><br>
                        <div class="productComment">나는 이걸 세상에서 제일비싼 물건과 교환을 원한다. 연락은 내가 먼저할테니 너는 받기만 하거라. 연락 느리다 재촉하지 마라. 불만있으면 abcd@naver.com 메일보내라</div>
                    </div>
                    <div class="productCard">
                        <img src="puppy.jpg" width="250px" height="200px"/>
                        <div class="productName">상품명</div>
                        <div class="productPrice">39,800원</div><br>
                        <div class="productDescription" style="font-size: 12px;">이게얼마나맛있고멋있고귀여운제품인지너는알고있느냐정말맛있게먹을수도있다</div><br>
                        <div class="productComment">나는 이걸 세상에서 제일비싼 물건과 교환을 원한다. 연락은 내가 먼저할테니 너는 받기만 하거라. 연락 느리다 재촉하지 마라. 불만있으면 abcd@naver.com 메일보내라</div>
                    </div>
                    <div class="productCard">
                        <img src="puppy.jpg" width="250px" height="200px"/>
                        <div class="productName">상품명</div>
                        <div class="productPrice">39,800원</div><br>
                        <div class="productDescription" style="font-size: 12px;">이게얼마나맛있고멋있고귀여운제품인지너는알고있느냐정말맛있게먹을수도있다</div><br>
                        <div class="productComment">나는 이걸 세상에서 제일비싼 물건과 교환을 원한다. 연락은 내가 먼저할테니 너는 받기만 하거라. 연락 느리다 재촉하지 마라. 불만있으면 abcd@naver.com 메일보내라</div>
                    </div>
                    <div class="productCard">
                        <img src="puppy.jpg" width="250px" height="200px"/>
                        <div class="productName">상품명</div>
                        <div class="productPrice">39,800원</div><br>
                        <div class="productDescription" style="font-size: 12px;">이게얼마나맛있고멋있고귀여운제품인지너는알고있느냐정말맛있게먹을수도있다</div><br>
                        <div class="productComment">나는 이걸 세상에서 제일비싼 물건과 교환을 원한다. 연락은 내가 먼저할테니 너는 받기만 하거라. 연락 느리다 재촉하지 마라. 불만있으면 abcd@naver.com 메일보내라</div>
                    </div>
                    <div class="productCard">
                        <img src="puppy.jpg" width="250px" height="200px"/>
                        <div class="productName">상품명</div>
                        <div class="productPrice">39,800원</div><br>
                        <div class="productDescription" style="font-size: 12px;">이게얼마나맛있고멋있고귀여운제품인지너는알고있느냐정말맛있게먹을수도있다</div><br>
                        <div class="productComment">나는 이걸 세상에서 제일비싼 물건과 교환을 원한다. 연락은 내가 먼저할테니 너는 받기만 하거라. 연락 느리다 재촉하지 마라. 불만있으면 abcd@naver.com 메일보내라</div>
                    </div>
                    
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