<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList
                , com._null.semi_box.member.model.vo.Member
				, com._null.semi_box.mypage.model.vo.OrderHistory 
                , com._null.semi_box.mypage.common.PageInfo"%>    

<!DOCTYPE html5>
<html>
<head>
<meta charset="UTF-8">
<title>배송내역</title>

<link href="${ pageContext.request.contextPath }/resources/css/history/common.css" rel="stylesheet" /> 
<link href="${ pageContext.request.contextPath }/resources/css/history/delivery.css" rel="stylesheet" /> 

    <style>
        

    </style>
</head>
<body >


	<% 
        ArrayList<OrderHistory> orderHistory = (ArrayList<OrderHistory>)request.getAttribute("list"); 
        Member loginUser = (Member)session.getAttribute("loginUser");
    %>


    <% if ( loginUser == null) { %>
         response.sendRedirect("${ pageContext.request.contextPath }");
    <%   }   %>

    	<!-- HEADER -->
	<jsp:include page="/views/common/header.jsp" />
	
	<!-- STYLE -->
	<jsp:include page="/views/common/style.jsp" />
	

    <div class="my-page container purchase-history page-layout footer-fixed-bottom">
		<!-- ASIDE BAR -->
		<jsp:include page="/views/myPage/asideNavBar.jsp" />
		
		<div class="my-page contents-container purchase-history">
			
            <!-- 상단 버튼 -->
            <div class="my-page order-frame upMenu " >
            </div>

            <!-- 중단 타이틀 -->
            <div class="my-page order-frame midMenu" >
                <!-- <div class="my-page midMenu-item title">주문 내역</div> -->
                 <h1 class="my-page title">배송 내역</h1>                 
            </div>

            <!-- 하단 조회 목록-->
            <div class="my-page order-frame downMenu">

                <!-- 조회되는 컬럼명 -->
                <div class="my-page order-frame downMenuUp">

                    <div class="my-page downMenuUp-item deliveryNo">접수 번호</div>
                    <div class="my-page downMenuUp-item deliveryInfo">상품 정보</div>
                    <div class="my-page downMenuUp-item deliveryPrice">배송 정보</div>
                    <div class="my-page downMenuUp-item deliveryOpen"></div>
                    <div class="my-page downMenuUp-item deliveryNull">배송 상태 </div>


                </div>



                <!-- 조회되는 컬럼값 -->
                <div class="my-page order-frame downMenuDown">


                        <% for (int i=0 ; i<orderHistory.size(); i++) { %>
                        <% OrderHistory ohistory = orderHistory.get(i); %>


                        <div class="my-page downMenuDown-frame output  ">
                            <div class="my-page downMenuDown-item deliveryUniquekey" ><%= ohistory.getOrderId() %></div> 

	                            <div class="my-page downMenuDown-item deliveryImageDateName" >
	                                  <div class="my-page downMenuDown-item-image ">
	                                <img class="my-page downMenuDown-orderImageDateName deliveryImage" src="${ pageContext.request.contextPath }/<%= ohistory.getProductImg() %>" alt="box이미지">
	
	                                </div>
                                        <div class="my-page downMenuDown-item-info">
                                            <div class="my-page downMenuDown-orderImageDateName deliveryPurchaseDate">
                                                <h5>배송 신청 날짜</h5>
                                                <%= ohistory.getStartDeliveryDate() %>
                                            </div>
                                            <div class="my-page downMenuDown-orderImageDateName deliveryBoxName">
                                                <h5>실상품명</h5>
                                                <%= ohistory.getProductName() %>
                                            </div>
                                            <div class="my-page downMenuDown-orderImageDateName deliveryProductPrice">
                                                <h5>실금액</h5>
                                                <%= ohistory.getProductPrice() %>
                                            </div>
	                                    </div>
	                            </div> 

	                            <div class="my-page downMenuDown-item deliveryBoxPrice" >
                                    <%= ohistory.getUserName() %> <br> <br> <br>
                                    <%= ohistory.getAddress() %> 
                                </div> 
	                            <div class="my-page downMenuDown-item deliveryBoxOpen" >
                                     
                                </div> 
	                            <div class="my-page downMenuDown-item deliveryDeliveryRefundBtn" >
                                        배송 중
	                                </div>                                 
                        </div> 
                        <% } %>
                </div>  


                <% PageInfo pi = (PageInfo)request.getAttribute("pi"); %>
                <%
				    int currPage = 0, startPage = 0, endPage =0, maxPage =0;
			
                    if ( pi != null ){
                        currPage = pi.getCurrPage();
                        startPage = pi.getStartPage();
                        endPage  = pi.getEndPage();
                        maxPage = pi.getMaxPage();
                    }
                    
                %>
                <div id="pagingArea">
                    <ul class="pagination">
                        <% if (currPage == 1)  {%>
                        <li class="page-item"><a class="page-link">Prev</a></li>
                        <% } else { %>
                            <li class="page-item"><a href="delivery-history?cpage=<%= currPage - 1%>" class="page-link">Prev</a></li>
                        <% } %>

                        <%-- 반복문을 사용하여 페이징 바 개수만큼 시작번호, 끝번호 활용하여 표시 --%>
                        <% for (int p = startPage; p <= endPage; p++ ) { %>
                        <li class="page-item"><a  href="delivery-history?cpage=<%= p %>" class="page-link" ><%= p%></a></li>
                        <% } %>
                        <% if (currPage == maxPage)  {%>
                        <li class="page-item"><a  class="page-link">Next</a></li>
                        <%} else { %>
                        <li class="page-item"><a href="delivery-history?cpage=<%= currPage + 1%>" class="page-link">Next</a></li>
                        <% } %>

                    </ul>
                </div>



			</div>
		</div>
	</div>

	<!-- FOOTER -->
	<jsp:include page="/views/common/footer.jsp" />

</body>
</html>