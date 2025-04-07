<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>교환 상품 등록</title>
<link href="${ pageContext.request.contextPath }/resources/css/market/tradeRegist.css" rel="stylesheet" />
<script src="https://code.jquery.com/jquery-3.7.1.min.js" integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo=" crossorigin="anonymous"></script>
</head>
<body>
	<!-- HEADER -->
	<jsp:include page="../common/header.jsp" />
	<!-- SUB HEADER -->
	<jsp:include page="subHeader.jsp" />
	
	<div class="market-page page-layout footer-fixed-bottom trade-regist">
        <div class="market-page contents-inner trade-regist">
           <div class="market-page contents-title-container trade-regist">
               <h1>상품 등록</h1>
           </div>
           <form class="market-page form trade-regist" action="" method="post">
               <!-- TODO: 기능 구현은 논의 해봐야 함 -->
               <div class="market-page item-list-container trade-regist" >               
	               <% for(int i = 0; i< 50; i++) { %>
	                  <div class="market-page trade-item-container box-shadow trade-regist">
	                  	<div class="market-page trade-item-inner trade-regist">
	                      <!-- id에는 상품명 -->
	                      <label for="trade-prod-check-<%= i %>">
		                       <!-- src에는 상품이미지주소 productList.get(i).getProductImg()-->
		                       <div class="market-page item-img-container trade-regist" >
		                       		<input class="market-page item-checkbox trade-regist" type="checkbox" id="trade-prod-check-<%= i %>" name="product" value=""/>
		                        	<img class="market-page item-img trade-regist" src="/semi_box/views/market/puppy.jpg" alt="상품이미지" />                              
		                       </div>
		                      <div class="market-page trade-regist item-info-container">
		                          <div class="market-page trade-regist item-info name">
		                              <!-- 여기는 상품명 -->   발바닥
		                          </div>
		                          <div class="market-page trade-regist item-info description">
		                              <!-- 여기는 상품내용 -->   귀여운 발바닥
		                          </div>
			                      <div class="market-page trade-regist item-info comment-container">
			                          
			                          <textarea class="market-page trade-regist comment-textarea" name="" placeholder="희망하는 상품 혹은 유저들에게 미리 전달할 내용을 입력하세요."></textarea>
			                      </div>
		                      </div>
	                      </label>
	                  	</div>
	                  </div>
	               <% } %>               
               </div>
               <div class="market-page trade-regist btn-container">
                   <button class="market-page trade-regist btn btn-medium btn-secondary btn-hover" type="submit">선택 등록</button>
               </div>
           </form>
       </div>
	</div>
	<jsp:include page="../common/footer.jsp" />
</body>
</html>