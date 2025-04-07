<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html5>
<html>
<head>
<meta charset="UTF-8">
<title>배송 내역</title>

<link href="${ pageContext.request.contextPath }/resources/css/history/common.css" rel="stylesheet" />
    <style>



        #orderContentUp, #orderContentDown{
            border: px pink solid;
            width: 100%;
            margin: 0;
        }

        #orderContentUp {  height: 20%; 
            box-sizing: border-box;
        }
        #orderContentDown { height: 80%;
            box-sizing: border-box;

        }


        #orderContentUpTitle, #orderContentUpCategory{
            border: px red solid;
            width: 100%;
            margin: 0;
        }
        #orderContentUpTitle {
            font-size: 60px;
            height: 50%;
        }
        #orderContentUpCategory {
            height: 45%;
            display: flex;
            box-sizing: border-box;
            border-top: 0.6mm black solid;
        }        

        #orderContentUpTitle {
            border: px brown solid;
            height: 55%;
            font-size: 40px;
            font-family: sans-serif;
            padding-left: 2%;
            padding-top: 1%;
            
        }

        .Category {
            border:  px brown solid;                        
            height: 100%;
            font-size  : 16px;
            font-family: sans-serif;
            text-align: center;
            line-height: 60px;
        }
        #CategoryNo            {width: 10%; border: px red solid} 
        #CategoryInfo          {width: 45%; 
            height: 100%;
            font-size  : 16px;
            font-family: sans-serif;          
            padding-left: 4%;  
            line-height: 60px;
            border: px red solid}  
        #CategoryQuantity      {width: 30%; border: px red solid} 
        #CategoryPrice         {width: 15%; border: px red solid}              
        

        .orderinquiry {
            border:  px brown solid;
            border-top: 1px black solid;
            border-bottom: 1px black solid;
            width: 100%;
            height: 25%;
            display: flex;
            
        }

        .orderinquirydetail{ height: 100%; border: px brown solid;
            text-align: center;
            padding-top: 5%;
        }

        #orderinquiryNo         {width: 10%; }
        #orderinquiryInfo       {width: 45%;
            display: flex;        
        }
        #orderinquiryQuantity   {width: 30%; 
        
        }
        #orderinquiryPrice      {width: 15%; }

        
        #orderinquiryNull {
            width: 20%;
            height: 100%;
            border: px brown solid;
            text-align: center;
        }

        .orderinquirydetail-left , .orderinquirydetail-right {
             height: 100%;
             width: 100%;
        }
        .orderinquirydetail-left { width: 40%;}
        .orderinquirydetail-right { width: 60%;}

        .boxinfo{
            border: px green solid;
            height: 20%;
            padding-top: 6%;
        }

        .boximage {
            width: 100%;
            height: 100%;
            object-fit: cover;
        }

        .parcel, .refund {
            width: 100%;
            height: 50%;
            border: px pink solid;
        }
        .parcel{
            padding-top: 8%;
        }


        .memberInfo {
            border: px pink solid;
            height: 20%;
            padding-top: 6%;
        }
        

    </style>
</head>
<body >
    	<!-- HEADER -->
	<jsp:include page="/views/common/header.jsp" />
	
	<!-- STYLE -->
	<jsp:include page="/views/common/style.jsp" />
	
    <div class="mainFrame">
        <div id="orderMenu">

            <div class="menubtn"></div>
            <div class="menubtn"></div>
            <div class="menubtn">
                <div class="menubtn-shopping">배송내역</div>

            </div>
            <div class="menubtn">
                <div class="menubtn-order">주문 내역</div> 
                <div class="menubtn-refund">환불 내역</div> 
            </div>
            <div class="menubtn"></div>


        </div>


        <di id="orderContent">
            <div id="orderContentUp">
                <div id="orderContentUpTitle"> 배송 내역 </div>
                <div id="orderContentUpCategory"> 
                    <div class="Category" id="CategoryNo">접수 번호</div>
                    <div id="CategoryInfo">상품정보</div>
                    <div class="Category" id="CategoryQuantity">배송 정보</div>
                    <div class="Category" id="CategoryPrice">배송 상태</div>

                    
                </div>
            </div>


            <div id="orderContentDown">
                <div class="orderinquiry">
                    <div class="orderinquirydetail" id="orderinquiryNo">접수번호</div>
                    <div id="orderinquiryInfo">
                        <div class="orderinquirydetail-left">
                            <div class="image">
                                <img class="boximage" src="${pageContext.request.contextPath}/resources/svg/box.JPG" alt="box이미지">
                            </div>
                        </div>
                        <div class="orderinquirydetail-right">
                            <div class="boxinfo Date">배송 신청 날짜</div>
                            <div class="boxinfo name">박스명</div>
                            <div class="boxinfo bcategory">카테고리</div>
                            <div class="boxinfo productprice">실금액</div>
                        </div>                        
                    </div>
                    <div id="orderinquiryQuantity">
                        <div class="memberInfo">받는사람이름</div>
                        <div class="memberInfo">연락처</div>
                        <div class="memberInfo">주소</div>                            
                        <div class="memberInfo">배송메시지</div>                            
                    </div>
                    <div class="orderinquirydetail" id="orderinquiryPrice">배송 완료</div>
                </div>
                <div class="orderinquiry">
                    <div class="orderinquirydetail" id="orderinquiryNo">접수번호</div>
                    <div id="orderinquiryInfo">
                        <div class="orderinquirydetail-left">
                            <div class="image">
                                <img class="boximage" src="${pageContext.request.contextPath}/resources/svg/box.JPG" alt="box이미지">
                            </div>
                        </div>
                        <div class="orderinquirydetail-right">
                            <div class="boxinfo Date">배송 신청 날짜</div>
                            <div class="boxinfo name">박스명</div>
                            <div class="boxinfo bcategory">카테고리</div>
                            <div class="boxinfo productprice">실금액</div>
                        </div>                        
                    </div>
                    <div id="orderinquiryQuantity">
                        <div class="memberInfo">받는사람이름</div>
                        <div class="memberInfo">연락처</div>
                        <div class="memberInfo">주소</div>                            
                        <div class="memberInfo">배송메시지</div>                            
                    </div>
                    <div class="orderinquirydetail" id="orderinquiryPrice">배송 완료</div>
                </div>
                <div class="orderinquiry">
                    <div class="orderinquirydetail" id="orderinquiryNo">접수번호</div>
                    <div id="orderinquiryInfo">
                        <div class="orderinquirydetail-left">
                            <div class="image">
                                <img class="boximage" src="${pageContext.request.contextPath}/resources/svg/box.JPG" alt="box이미지">
                            </div>
                        </div>
                        <div class="orderinquirydetail-right">
                            <div class="boxinfo Date">배송 신청 날짜</div>
                            <div class="boxinfo name">박스명</div>
                            <div class="boxinfo bcategory">카테고리</div>
                            <div class="boxinfo productprice">실금액</div>
                        </div>                        
                    </div>
                    <div id="orderinquiryQuantity">
                        <div class="memberInfo">받는사람이름</div>
                        <div class="memberInfo">연락처</div>
                        <div class="memberInfo">주소</div>                            
                        <div class="memberInfo">배송메시지</div>                            
                    </div>
                    <div class="orderinquirydetail" id="orderinquiryPrice">배송 완료</div>
                </div>
                <div class="orderinquiry">
                    <div class="orderinquirydetail" id="orderinquiryNo">접수번호</div>
                    <div id="orderinquiryInfo">
                        <div class="orderinquirydetail-left">
                            <div class="image">
                                <img class="boximage" src="${pageContext.request.contextPath}/resources/svg/box.JPG" alt="box이미지">
                            </div>
                        </div>
                        <div class="orderinquirydetail-right">
                            <div class="boxinfo Date">배송 신청 날짜</div>
                            <div class="boxinfo name">박스명</div>
                            <div class="boxinfo bcategory">카테고리</div>
                            <div class="boxinfo productprice">실금액</div>
                        </div>                        
                    </div>
                    <div id="orderinquiryQuantity">
                        <div class="memberInfo">받는사람이름</div>
                        <div class="memberInfo">연락처</div>
                        <div class="memberInfo">주소</div>                            
                        <div class="memberInfo">배송메시지</div>                            
                    </div>
                    <div class="orderinquirydetail" id="orderinquiryPrice">배송 완료</div>
                </div>


                
                


                

            </div>









        </div>
    </div>



	<!-- FOOTER -->
	<jsp:include page="/views/common/footer.jsp" />
</body>
</html>