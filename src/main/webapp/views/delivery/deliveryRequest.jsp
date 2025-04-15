<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com._null.semi_box.member.model.vo.Member
					,com._null.semi_box.mypage.model.vo.MyProduct"%>

<% 	Member loginUser = (Member)session.getAttribute("loginUser"); 
	String product = (String)request.getAttribute("productId");
%>

<!DOCTYPE html5>
<html>
<head>
<meta charset="UTF-8">
<title>배송지신청</title>


<link href="${ pageContext.request.contextPath }/resources/css/delivery/deliveryRequest.css" rel="stylesheet" />

</head>
<body >
    	<!-- HEADER -->
	<jsp:include page="/views/common/header.jsp" />
	
	<!-- STYLE -->
	<jsp:include page="/views/common/style.jsp" />
	

    
    
    <form action="DeliveryCompleted" method="get">
   
    <div class="my-page container deliveryrequest page-layout footer-fixed-bottom">
        <!-- ASIDE BAR -->
		<jsp:include page="/views/myPage/asideNavBar.jsp" />
         <!-- main 틀-->


            <div class="my-page contents-container purchase-history">
    
            <!-- 배송지 제목 부분 -->
            <div class="deliver Application Application1">배송지 정보</div>

            <!-- 배송지 선택 부분 -->
            <div class="deliver Application Application2">
                <div class="Application-left left1">배송지 선택*</div>
                <div class="Application-right">
                    
                    <div class="delivery-flex">
                        &nbsp;&nbsp;  
                        <div >     
                        <input type="radio" name="address" class="address" id="address1"  > 
                        <label for="address1">&nbsp;주문자 정보와 동일</label>

                        </div>
                        
                        <div>                  
                        <input type="radio" name="address" class="address" id="address2" > 
                        <label for="address2">&nbsp;새로운 배송지</label>
                        </div>
                    </div>
                </div>
            </div>

            <!-- 주소 부분-->
            <div class="deliver Application Application4">
                <div class="Application-left left4">주소*</div>
                <div class="Application-right" >              
                    <div class="orderMainArddress"><input type="text" name="orderArddress"  class="addressBoxSize"  required/>                    
                        <!-- js 를위한 hiddne 값-->
                        <input type="hidden" name="userAddress" value="<%= loginUser.getAddress()%>">
                        <input type="hidden" name="ProductId" value="<%= product %>">
                    </div>
                </div>            
            </div>

            <!-- 배송취소 부분 -->
            <div class="deliver Application Application5 ">
                <div class="delivery-item-btn">
                    <div class="deliverySubmit  ">
                        <!-- <button class="btn btn-medium btn-primary btn-hover deliverBtn"><a class="bgTransparent" href="DeliveryCompleted">배송</a></button>   -->
                        <button class="btn btn-medium btn-primary btn-hover deliverBtn bgTransparent" type="submit">배송</button>  
                        <button class="btn btn-medium btn-primary btn-hover CancleBtn"><a  class="bgTransparent" href="inventory">취소</a></button>  
                    </div>
                </div>
            </div>

       </div>
        
    </div>
</form>


	<!-- FOOTER -->
	<jsp:include page="/views/common/footer.jsp" />

<!-- 주소 선택 라디오 -->
<div class="delivery-flex">
    <div>
      <input type="radio" name="address" class="address" id="address1">
      <label for="address1">&nbsp;주문자 정보와 동일</label>
    </div>
    <div>
      <input type="radio" name="address" class="address" id="address2">
      <label for="address2">&nbsp;새로운 배송지</label>
    </div>
  </div>
  
  <!-- 텍스트 입력 박스 -->
  <div class="orderMainArddress">
    <input type="text" name="orderArddress" class="addressBoxSize" />
    <!-- 숨겨진 유저 주소 -->
    <input type="hidden" name="userAddress" value="<%= loginUser.getAddress() %>">
  </div>
  
  <!-- 스크립트 -->
  <script>
    document.addEventListener("DOMContentLoaded", () => {
      const addressRadios = document.querySelectorAll(".address");
      const addressInput = document.querySelector(".addressBoxSize");
      const userAddressHidden = document.querySelector("input[name='userAddress']");
  
      addressRadios.forEach((radio) => {
        radio.addEventListener("change", () => {
          if (radio.checked) {
            if (radio.id === "address1") {
              // "주문자 정보와 동일" 선택 → 주소 자동 입력
              addressInput.value = userAddressHidden.value;
            } else if (radio.id === "address2") {
              // "새로운 배송지" 선택 → 입력창 비우기
              addressInput.value = "";
            }
          }
        });
      });
    });
  </script>
  
      
      
</body>
</html>