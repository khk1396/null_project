<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com._null.semi_box.main.model.vo.MainBox, com._null.semi_box.main.model.vo.MainProduct, java.util.ArrayList" %>    
<!DOCTYPE html5>
<html>
<head>
<meta charset="UTF-8">
<link href="${ pageContext.request.contextPath }/resources/css/mainPage/main.css" rel="stylesheet" />
<script src="${ pageContext.request.contextPath }/resources/js/main/mainUtils.js" type="text/javascript" ></script>
</head>
<body>
	<jsp:include page="/views/common/style.jsp" />
	<jsp:include page="/views/common/header.jsp" />
	<div class="main-page top-banner-container" >
		<!-- TODO: 메인 배너  -->
		<a class="main-page top-banner-link" href="" >
			<img class="main-page top-banner-image" src="resources/images/main_banner.jpg" alt="main_banner.img" />
		</a>
	</div>
	<div class="main-page contents-container page-layout footer-fixed-bottom" >
		<section id="main-box-item-section" class="main-page section box-list-container" >
			<h1 class="main-page section-title box-title">인기 상품</h1>
		</section>
		<section id="main-product-item-list" class="main-page section prod-list-container">
			<h1 class="main-page section-title box-title">교환 신청중인 상품</h1>
		</section>	
	</div>
	<jsp:include page="/views/common/footer.jsp" />
</body>
</html>
