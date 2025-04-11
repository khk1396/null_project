<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList
				, com._null.semi_box.mypage.model.vo.OrderHistory 
                , com._null.semi_box.mypage.common.PageInfo"%>    

<!DOCTYPE html5>
<html>
<head>
<meta charset="UTF-8">
<title>주문내역</title>

<link href="${ pageContext.request.contextPath }/resources/css/history/common.css" rel="stylesheet" /> 
<link href="${ pageContext.request.contextPath }/resources/css/history/purchase.css" rel="stylesheet" /> 

    <style>
        

    </style>
</head>
<body >


	<% ArrayList<OrderHistory> orderHistory = (ArrayList<OrderHistory>)request.getAttribute("list"); %>


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
                <button class="my-page upMenu-item orderbtn btn btn-small btn-secondary btn-hover"><a href="purchase-history"> 주문 조회 </a></button> 
                <button class="my-page upMenu-item refundbtn btn btn-small btn-secondary btn-hover"><a href="refund-hostroy">환불 조회</a></button> 
            </div>

            <!-- 중단 타이틀 -->
            <div class="my-page order-frame midMenu" >
                <!-- <div class="my-page midMenu-item title">주문 내역</div> -->
                 <h1 class="my-page title">주문 내역</h1>                 
            </div>



            <!-- 하단 조회 목록-->
            <div class="my-page order-frame downMenu">


                <!-- 조회되는 컬럼명 -->
                <div class="my-page order-frame downMenuUp">

                    <div class="my-page downMenuUp-item orderNo">주문 번호</div>
                    <div class="my-page downMenuUp-item orderInfo">상품 정보</div>
                    <div class="my-page downMenuUp-item orderPrice">결재 금액</div>
                    <div class="my-page downMenuUp-item orderOpen">개봉 여부</div>
                    <div class="my-page downMenuUp-item orderNull"> </div>


                </div>



                <!-- 조회되는 컬럼값 -->
                <div class="my-page order-frame downMenuDown">


                        <% for (int i=0 ; i<orderHistory.size(); i++) { %>
                        <% OrderHistory ohistory = orderHistory.get(i); %>


                        <div class="my-page downMenuDown-frame output  ">
                            <div class="my-page downMenuDown-item orderUniquekey" ><%= ohistory.getUserPk() %></div> 

	                            <div class="my-page downMenuDown-item orderImageDateName" >
	                                  <div class="my-page downMenuDown-item-image ">
	                                <img class="my-page downMenuDown-orderImageDateName orderImage" src="${pageContext.request.contextPath}/resources/images/black.jpg" alt="box이미지">
	
	                                </div>
                                        <div class="my-page downMenuDown-item-info">
                                            <div class="my-page downMenuDown-orderImageDateName orderPurchaseDate">
                                                <h5>구매날짜</h5>
                                                <%= ohistory.getPayDate() %>
                                            </div>
                                            <div class="my-page downMenuDown-orderImageDateName orderBoxName">
                                                <h5>박스명</h5>
                                                <%= ohistory.getBoxName() %>
                                            </div>
	                                    </div>
	                            </div> 

	                            <div class="my-page downMenuDown-item orderBoxPrice" ><%= ohistory.getPrice() %></div> 
	                            <div class="my-page downMenuDown-item orderBoxOpen" ><%= ohistory.getStatus() %></div> 
	                            <div class="my-page downMenuDown-item orderDeliveryRefundBtn" >
	                                <button class="my-page downMenuDown-orderDeliveryRefundBtn btn btn-small btn-primary btn-hover">  <a class="orderDeliveryRefundBtn-a" href="delivery-history">배송 조회</a></button>
	                                <button class="my-page downMenuDown-orderDeliveryRefundBtn btn btn-small btn-secondary btn-hover"><a class="orderDeliveryRefundBtn-a"  href="refund-hostroy">환불 신청</a></button>
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
                            <li class="page-item"><a href="purchase-history?cpage=<%= currPage - 1%>" class="page-link">Prev</a></li>
                        <% } %>

                        <%-- 반복문을 사용하여 페이징 바 개수만큼 시작번호, 끝번호 활용하여 표시 --%>
                        <% for (int p = startPage; p <= endPage; p++ ) { %>
                        <li class="page-item"><a  href="purchase-history?cpage=<%= p %>" class="page-link" ><%= p%></a></li>
                        <% } %>
                        <% if (currPage == maxPage)  {%>
                        <li class="page-item"><a  class="page-link">Next</a></li>
                        <%} else { %>
                        <li class="page-item"><a href="purchase-history?cpage=<%= currPage + 1%>" class="page-link">Next</a></li>
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