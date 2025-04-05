<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>교환 상품 등록 페이지</title>
<link href="/semi_box/resources/css/common/reset.css" rel="stylesheet" />
<link href="/semi_box/resources/css/common/stylesheet.css" rel="stylesheet" />
<!--<link href="../resources/css/tradeProductRegist.css" rel="stylesheet"/>-->
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
.productList{
    height: 620px;
    width: 1300px;
}
.DIVproduct {
    display: flex;
    background-color: rgb(148, 216, 236);
    width: 90%;
    height: 250px;
    margin: auto;
    margin-top: 30px;
    border-top: 2px solid gray;
    border-bottom: 2px solid gray;
}

.DIVproduct input[type=checkbox] {
    margin-left:10px;
    margin-right:10px;
}

.productName{
    text-align: center;
    color: #1F53F0;
    height: 30%;
    height: 49%;
    font-size: 37px;
    font-weight: 900;
    background-color: rgb(148, 216, 236);
}

.productDescription{
    height: 51%;
    font-size: 20px;
    font-weight: 500;
    color: rgb(109, 96, 96);
    background-color: rgb(148, 216, 236);
}

.emptySection{
    border-top:1px solid #9ea0a8;
    border-bottom : 1px solid #9ea0a8;
    width: 280px;
}

.comment{
    width: 33%;
    height: 60%;
    background-color: white;
}

.commentBox{
    font-size: 20px;
    resize: none;
    width: 100%;
    height: 150px;
}

.registOne{
    display: flex;
    justify-content:center;
    align-items:center;
    width:17%;
    background-color: rgb(148, 216, 236);
}

main>div.content>.emptySection ul.btnList{
    list-style: none;

}

main>div.content>.emptySection ul.btnList li{
    margin: 20px;

}

form .selectRegist {
    display: flex;
    justify-content: flex-end;
}

.selectRegistBtn{
    margin-top:15px;
    margin-right:40px;
}

div.mainContent>div.pageBtnList a {
        font-size: 40px;
         padding:20px;
    }

div.DIVproduct div.commentPlace{
	margin-left: 1%; 
	width: 400px;
	 background-color: rgb(148, 216, 236);
}

div.DIVproduct div.commentText{
	margin-top: 10%;
 	font-size:20px; 
 	font-weight: 900; 
 	color: rgb(12, 6, 1);
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
            교환 상품 등록
        </div>
        <div class="content">
            <div class="emptySection"></div>
            <div class="mainContent" style="width: 1300px;"> 
                <div class="pageBtnList" style="text-align: center;" width="100%" height="100px" >
                    <a href="/semi_box/market" class="link link-medium link-hover" style="padding-left:35px; padding-right:35px;">다른 상품</a>
                    <a class="link link-medium link-hover">등록한 상품</a>
                    <a class="link link-medium link-hover">거래 신청 상품</a>
                    <a href="#" onclick="location.reload();" class="link link-medium link-hover" style="padding-left:35px; padding-right:35px;">상품 등록</a>
                    <a class="link link-medium link-hover" style="padding-left:35px; padding-right:35px;">거래 내역</a>
                </div>
                <hr>
                <form action="" method="post">
                    <div class="productList" style="overflow-y:scroll;">
                    
                    <% for(int i = 0; i< 5; i++) { %>
                            <div class="DIVproduct">
                                <!-- id에는 상품명 -->
                                <input type="checkbox" id="" name="product" value="" style="zoom: 3.0;"/>
                                <label for="">
                                    <!-- src에는 상품이미지주소 productList.get(i).getProductImg()-->
                                    <img src="puppy.jpg" alt="상품이미지" width="100%" height="100%"/>
                                </label>&nbsp;
                                <div style="box-sizing: border-box; width: 25%;">
                                    <div class="productName">  <br> 
                                        <!-- 여기는 상품명 -->   발바닥            
                                    </div>
                                    <div class="productDescription">
                                        <!-- 여기는 상품내용 -->   귀여운 발바닥
                                    </div>
                                </div>
                                <div class="commentPlace">
                                    <div class="commentText">코멘트</div>
                                    <textarea class="commentBox" name="" placeholder="희망하는 상품 혹은 유저들에게 미리 전달할 내용을 입력하세요."></textarea>
                                </div>
                                <div class="registOne">
                                    <button class="btn btn-medium btn-secondary btn-hover" onclick="registOne();">등록</button>
                                </div>
                            </div>
                            <%} %>
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