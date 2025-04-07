<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html5>
<html>
<head>
<meta charset="UTF-8">
<title>주문내역</title>


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
            
            border-bottom: 0.2pxblack solid;
          
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
        #CategoryNo            {width: 15%; border: px red solid} 
        #CategoryInfo          {width: 40%; 
            height: 100%;
            font-size  : 16px;
            font-family: sans-serif;          
            padding-left: 4%;  
            line-height: 60px;
            border: px red solid} 
        #CategoryQuantity      {width: 10%; border: px red solid} 
        #CategoryPrice         {width: 15%; border: px red solid} 
        #CategoryOpen          {width: 10%; border: px red solid} 
        #CategoryNull          {width: 20%; border: px red solid} 
        

        .orderinquiry {
            border:  px brown solid;
            border-top: px black solid;
            border-bottom: 1px black solid;
            width: 100%;
            height: 25%;
            display: flex;
            
        }

        .orderinquirydetail{ height: 100%; border:  px brown solid;
            text-align: center;
            padding-top: 5%;
        }

        #orderinquiryNo         {width: 15%; }
        #orderinquiryInfo       {width: 40%;
            display: flex;

        
        }
        #orderinquiryQuantity   {width: 10%; }
        #orderinquiryPrice      {width: 15%; }
        #orderinquiryOpen       {width: 10%; }
        #orderinquiryNull       {width: 20%; }
        
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
            height: 30%;
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



        

    </style>
</head>
<body >
    	<!-- HEADER -->
	<jsp:include page="/views/common/header.jsp" />
	
	<!-- STYLE -->
	<jsp:include page="/views/common/style.jsp" />

    </div>





    <div class="mainFrame">

        <div  id="orderMenu">
            <div class="menubtn"></div>
            <div class="menubtn"></div>
            <div class="menubtn"></div>
            <div class="menubtn">
                <div class="menubtn-order">주문 내역</div> 
                <div class="menubtn-refund">환불 내역</div> 
            </div>
            <div class="menubtn"></div>
        </div>
  

        
        <div  id="orderContent">
            <div id="orderContentUp">
                <div id="orderContentUpTitle"> 주문 내역 </div>
                <div id="orderContentUpCategory"> 
                    <div class="Category" id="CategoryNo">주문번호</div>
                    <div  id="CategoryInfo">상품정보</div>
                    <div class="Category" id="CategoryQuantity">개수</div>
                    <div class="Category" id="CategoryPrice">결재 금액</div>
                    <div class="Category" id="CategoryOpen">개봉 여부</div>
                    <div class="Category" id="CategoryNull"></div>
                </div>
            </div>


            <div id="orderContentDown">
                <div class="orderinquiry">
                    <div class="orderinquirydetail" id="orderinquiryNo">고유키</div>
                    <div id="orderinquiryInfo">
                        <div class="orderinquirydetail-left">
                            <div class="image">
                                <img class="boximage" src="${pageContext.request.contextPath}/resources/svg/box.JPG" alt="box이미지">
                            </div>
                        </div>
                        <div class="orderinquirydetail-right">
                            <div class="boxinfo Date">구매 날짜</div>
                            <div class="boxinfo name">박스명</div>
                            <div class="boxinfo bcategory">카테고리</div>
                        </div>                        
                    </div>
                    <div class="orderinquirydetail" id="orderinquiryQuantity">1</div>
                    <div class="orderinquirydetail" id="orderinquiryPrice">9,990</div>
                    <div class="orderinquirydetail" id="orderinquiryOpen">개봉</div>
                    <div id="orderinquiryNull">
                        <div class="parcel">
						<button class="btn btn-small btn-primary btn-hover">배송 조회</button>                                                
                        </div>                        
                        <div class="refund">
                        <button class="btn btn-small btn-secondary btn-hover">환불 신청</button>                        
                        </div>
                    </div>    
                </div>
            

                <div class="orderinquiry">
                    <div class="orderinquirydetail" id="orderinquiryNo">고유키</div>
                    <div id="orderinquiryInfo">
                        <div class="orderinquirydetail-left">
                            <div class="image">
                                <img class="boximage" src="${pageContext.request.contextPath}/resources/svg/box.JPG" alt="box이미지">
                            </div>
                        </div>
                        <div class="orderinquirydetail-right">
                            <div class="boxinfo Date">구매 날짜</div>
                            <div class="boxinfo name">박스명</div>
                            <div class="boxinfo bcategory">카테고리</div>
                        </div>                        
                    </div>
                    <div class="orderinquirydetail" id="orderinquiryQuantity">1</div>
                    <div class="orderinquirydetail" id="orderinquiryPrice">9,990</div>
                    <div class="orderinquirydetail" id="orderinquiryOpen">개봉</div>
                    <div id="orderinquiryNull">
                        <div class="parcel">
						<button class="btn btn-small btn-primary btn-hover">배송 조회</button>                                                
                        </div>                        
                        <div class="refund">
                        <button class="btn btn-small btn-secondary btn-hover">환불 신청</button>                        
                        </div>
                    </div>    
                </div>



                <div class="orderinquiry">
                    <div class="orderinquirydetail" id="orderinquiryNo">고유키</div>
                    <div id="orderinquiryInfo">
                        <div class="orderinquirydetail-left">
                            <div class="image">
                                <img class="boximage" src="${pageContext.request.contextPath}/resources/svg/box.JPG" alt="box이미지">
                            </div>
                        </div>
                        <div class="orderinquirydetail-right">
                            <div class="boxinfo Date">구매 날짜</div>
                            <div class="boxinfo name">박스명</div>
                            <div class="boxinfo bcategory">카테고리</div>
                        </div>                        
                    </div>
                    <div class="orderinquirydetail" id="orderinquiryQuantity">1</div>
                    <div class="orderinquirydetail" id="orderinquiryPrice">9,990</div>
                    <div class="orderinquirydetail" id="orderinquiryOpen">개봉</div>
                    <div id="orderinquiryNull">
                        <div class="parcel">
						<button class="btn btn-small btn-primary btn-hover">배송 조회</button>                                                
                        </div>                        
                        <div class="refund">
                        <button class="btn btn-small btn-secondary btn-hover">환불 신청</button>                        
                        </div>
                    </div>    
                </div>



                <div class="orderinquiry">
                    <div class="orderinquirydetail" id="orderinquiryNo">고유키</div>
                    <div id="orderinquiryInfo">
                        <div class="orderinquirydetail-left">
                            <div class="image">
                                <img class="boximage" src="${pageContext.request.contextPath}/resources/svg/box.JPG" alt="box이미지">
                            </div>
                        </div>
                        <div class="orderinquirydetail-right">
                            <div class="boxinfo Date">구매 날짜</div>
                            <div class="boxinfo name">박스명</div>
                            <div class="boxinfo bcategory">카테고리</div>
                        </div>                        
                    </div>
                    <div class="orderinquirydetail" id="orderinquiryQuantity">1</div>
                    <div class="orderinquirydetail" id="orderinquiryPrice">9,990</div>
                    <div class="orderinquirydetail" id="orderinquiryOpen">개봉</div>
                    <div id="orderinquiryNull">
                        <div class="parcel">
						<button class="btn btn-small btn-primary btn-hover">배송 조회</button>                                                
                        </div>                        
                        <div class="refund">
                        <button class="btn btn-small btn-secondary btn-hover">환불 신청</button>                        
                        </div>
                    </div>    
                </div>

        

                

            </div>
        </div>
    </div>




	<!-- FOOTER -->
	<jsp:include page="/views/common/footer.jsp" />
</body>
</html>