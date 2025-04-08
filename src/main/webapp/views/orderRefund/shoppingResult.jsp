<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html5>
<html>
<head>
<meta charset="UTF-8">
<title>배송지신청</title>


<link href="${ pageContext.request.contextPath }/resources/css/history/common.css" rel="stylesheet" />

</head>
<body >
    	<!-- HEADER -->
	<jsp:include page="/views/common/header.jsp" />
	
	<!-- STYLE -->
	<jsp:include page="/views/common/style.jsp" />
	

    <!-- main 틀-->
    <div class="mainFrame">
  
        <!-- 배송지 제목 부분 -->
        <div class="shop Application Application1">배송지 정보</div>

        <!-- 배송지 선택 부분 -->
        <div class="shop Application Application2">
            <div class="Application-left left1">배송지 선택*</div>
            <div class="Application-right">
                
                <div class="delivery-flex">
                    &nbsp;&nbsp;  
                    <div>     
                    <input type="radio" name="delivery" id="address1" class="delivery"> 
                    <label for="address1">&nbsp;주문자 정보와 동일</label>
                    </div>
                    
                    <div>                  
                    <input type="radio" name="delivery" id="address2" class="delivery"> 
                    <label for="address2">&nbsp;새로운 배송지</label>
                    </div>
                </div>
            </div>
        </div>

        <!-- 받는 사람 부분-->
        <div class="shop Application Application3">
            <div class="Application-left left2">받으실 분*</div>
            <div class="Application-right" style="display: flex;">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <div class="orderNamediv"><input type="text" name="orderName" class="orderName" ></div>
                &nbsp;&nbsp;&nbsp;
                <div class="orderName-btn"> <button class="btn btn-small btn-primary btn-hover">주문자 정보</button> </div>
            </div>
        </div>

        <!-- 연락처 부분-->
        <div class="shop Application Application4">
            <div class="Application-left left3">연락처*</div>
            <div class="Application-right">
                <input type="tel" name="orderTel" class="orderTel">

            </div>
         </div>

         <!-- 주소 부분-->
        <div class="shop Application Application5">
            <div class="Application-left left4">주소*</div>
            <div class="Application-right" >
                <div class="addressBtn">
                <div class="orderMainArddress"><input type="text" name="orderArddress"  class="addressBoxSize" ></div>
                <div class="orderOrderArddress"><input type="text" name="orderArddress" class="addressBoxSize" ></div>
                </div>
            </div>            
        </div>

        <!-- 배송 메시지 부분 -->
        <div class="shop Application Application6">
            <div class="Application-left left5">배송메시지</div>
            <div class="Application-right">
                <input type="text" name="DeliveryMsg" class="DeliveryMsg">
            </div>            
        </div>

        <!-- 배송취소 부분 -->
        <div class="shop Application Application7">
                <div class="deliverySubmit">
                    <button class="btn btn-small btn-primary btn-hover">배송</button>  
                    <button class="btn btn-small btn-primary btn-hover">취소</button>  
                </div>
        </div>


    </div>



	<!-- FOOTER -->
	<jsp:include page="/views/common/footer.jsp" />
</body>
</html>