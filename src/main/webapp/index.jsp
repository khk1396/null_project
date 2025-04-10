<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html5>
<html>
<head>
<meta charset="UTF-8">
<title>NULL - SEMI-PROJECT</title>
</head>
<body>
	<!-- 
		NOTI: 
			UI 구현할 시 
			아직 포워딩 작업 안되어 있어 임시로 
			여기에 include해서 작업해주시면 됩니다. 
			다른 방법이 있으면 공유해주세요! 
	 -->
	<!-- HEADER -->
	<%-- <jsp:include page="views/common/header.jsp" />	 --%>
	
	<!-- STYLE -->
	<%-- <jsp:include page="views/common/style.jsp" /> --%>
	
	<!-- FOOTER -->
	<%-- <jsp:include page="views/common/footer.jsp" /> --%>

	<a href="${ pageContext.request.contextPath }//views/delivery/deliveryResult.jsp">배송 신청</a>
	<a href="${ pageContext.request.contextPath }//views/delivery/deliveryCompleted.jsp">배송 신청 완료</a>


	<jsp:include page="views/mainPage/main.jsp" />
</body>
</html>