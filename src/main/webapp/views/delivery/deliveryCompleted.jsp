<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import="com._null.semi_box.mypage.model.vo.OrderHistory" %>    

<% OrderHistory delivery = (OrderHistory)request.getAttribute("delivery"); %>

<!DOCTYPE html5>
<html>
<head>
<meta charset="UTF-8">
<title>배송 내역</title>

<!-- <link href="${ pageContext.request.contextPath }/resources/css/history/deliveryCO.css" rel="stylesheet" /> -->
<link href="${ pageContext.request.contextPath }/resources/css/history/deliverCompleted.css" rel="stylesheet" />

</head>
<body >
    	<!-- HEADER -->
	<jsp:include page="/views/common/header.jsp" />
	
	<!-- STYLE -->
	<jsp:include page="/views/common/style.jsp" />
	
    <!-- main 틀-->
    <div class="deliveryMainFrame">
       

        <!-- 신청완료 타이틀 부분-->
        <div class="Complet title">    신청 완료  </div>

        <!-- 완료 및 상세보기 메시지 부분 -->
        <div class="Complet coment">      
                배송 신청이 완료되었습니다. <br>
                신청 내역은 상세보기를 통해 확인하실수 있습니다.    
        </div>

        <!-- 접수번호 부분 -->
        <div class="Complet completNo">      
            <div class="completdown"></div>
            <div class="completdown">접수 번호</div>
            <div class="completdown"><%= delivery.getOrderId() %></div>   
            <div class="completdown"></div>  
        </div>

        <!-- 접수 일시 부분-->
        <div class="Complet completDate">    
            <div class="completdown"></div>
            <div class="completdown">접수 일시</div>
            <div class="completdown"><%= delivery.getStartDeliveryDate() %></div>   
            <div class="completdown"></div>   
        </div>

        <!-- 홈 또는 상세내역 버튼 부분-->
        <div class="Complet completBtn">     
            <div class="completdown"></div>
            <div class="completdown">
                <button class="btn btn-medium btn-secondary btn-hover" ><a href="${ pageContext.request.contextPath }">홈으로 이동</a></button></div>
            <div class="completdown">
                <button class="btn btn-medium btn-primary btn-hover"><a href="../mypage/delivery-history" class="orderDeliveryRefundBtn-a">상세 내역 보기</a></button></div>   
            <div class="completdown"></div>  
        </div>

    </div>



	<!-- FOOTER -->
	<jsp:include page="/views/common/footer.jsp" />
</body>
</html>