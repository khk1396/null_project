<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html5>
<html>
<head>
<meta charset="UTF-8">
<title>주문내역</title>

    <style>
        * { margin: auto; padding: 0;}
        body { width: 1440px; height: 1024px;
                
        }

        #mainFrame {
            width: 1240px; height: 824px;
            border: 1px black solid;
            margin-top: 180px;
            box-sizing: border-box;
            display: flex;
            flex-direction: row;
        }


        #orderMenu, #orderContent{
            border: px pink solid;
            height: 100%;
            margin: 0;
        }
        #orderMenu {  width: 15%;  border-right: 1px black solid;
         }
        #orderContent { width: 85%; 
            box-sizing: border-box;
        }


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
            border:  px brown solid;
            height: 55%;
            font-size: 60px;
            font-family: "Suit";
            padding-left: 20px;
            
        }

        .Category {
            border:  px brown solid;            
            height: 100%;
            font-size  : 20px;
            font-family: "Suit";
            text-align: center;
            line-height: 60px;
        }
        #CategoryNo            {width: 15%; border: 1px red solid} 
        #CategoryInfo          {width: 40%; border: 1px red solid} 
        #CategoryQuantity      {width: 10%; border: 1px red solid} 
        #CategoryPrice         {width: 15%; border: 1px red solid} 
        #CategoryOpen          {width: 10%; border: 1px red solid} 
        #CategoryNull          {width: 20%; border: 1px red solid} 
        

        .orderinquiry {
            border:  1px brown solid;
            width: 100%;
            height: 25%;
            display: flex;
        }

        .orderinquirydetail{ height: 100%; border:  1px brown solid;
            text-align: center;
            line-height: 18ch ;
        }

        #orderinquiryNo         {width: 15%; }
        #orderinquiryInfo       {width: 40%; }
        #orderinquiryQuantity   {width: 10%; }
        #orderinquiryPrice      {width: 15%; }
        #orderinquiryOpen       {width: 10%; }
        #orderinquiryNull       {width: 20%; }
        

    </style>
</head>
<body >
    	<!-- HEADER -->
	<jsp:include page="/views/common/header.jsp" />
	
	<!-- STYLE -->
	<jsp:include page="/views/common/style.jsp" />
	

    <div id="mainFrame">
        <div id="orderMenu"></div>


        <div id="orderContent">
            <div id="orderContentUp">
                <div id="orderContentUpTitle"> 주문 내역 </div>
                <div id="orderContentUpCategory"> 
                    <div class="Category" id="CategoryNo">주문번호</div>
                    <div class="Category" id="CategoryInfo">상품정보</div>
                    <div class="Category" id="CategoryQuantity">개수</div>
                    <div class="Category" id="CategoryPrice">결재 금액</div>
                    <div class="Category" id="CategoryOpen">개봉 여부</div>
                    <div class="Category" id="CategoryNull"></div>
                </div>
            </div>


            <div id="orderContentDown">
                <div class="orderinquiry">
                    <div class="orderinquirydetail" id="orderinquiryNo">고유키</div>
                    <div class="orderinquirydetail" id="orderinquiryInfo">

                        

                    </div>
                    <div class="orderinquirydetail" id="orderinquiryQuantity">1</div>
                    <div class="orderinquirydetail" id="orderinquiryPrice">9,990</div>
                    <div class="orderinquirydetail" id="orderinquiryOpen">개봉</div>
                    <div class="orderinquirydetail" id="orderinquiryNull">
						<button class="btn btn-medium btn-secondary btn-hover" >BUTTON</button>
                    </div>    
                </div>

            </div>
        </div>
    </div>

	<!-- FOOTER -->
	<jsp:include page="/views/common/footer.jsp" />
</body>
</html>