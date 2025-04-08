<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html5>
<html>
<head>
<meta charset="UTF-8">
<title>배송 내역</title>

<link href="${ pageContext.request.contextPath }/resources/css/history/common.css" rel="stylesheet" />
    <style>




        

    </style>
</head>
<body >
    	<!-- HEADER -->
	<jsp:include page="/views/common/header.jsp" />
	
	<!-- STYLE -->
	<jsp:include page="/views/common/style.jsp" />
	
    <!-- main 틀-->
    <div class="shopMainFrame">
       

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
            <div class="completdown">abc123456</div>   
            <div class="completdown"></div>  
        </div>

        <!-- 접수 일시 부분-->
        <div class="Complet completDate">    
            <div class="completdown"></div>
            <div class="completdown">접수 일시</div>
            <div class="completdown">2025-03-29</div>   
            <div class="completdown"></div>   
        </div>

        <!-- 홈 또는 상세내역 버튼 부분-->
        <div class="Complet completBtn">     
            <div class="completdown"></div>
            <div class="completdown">
                <button class="btn btn-medium btn-secondary btn-hover">홈으로 이동</button>  </div>
            <div class="completdown">
                <button class="btn btn-medium btn-primary btn-hover">상세 내역 보기</button>  </div>   
            <div class="completdown"></div>  
        </div>

    </div>



	<!-- FOOTER -->
	<jsp:include page="/views/common/footer.jsp" />
</body>
</html>