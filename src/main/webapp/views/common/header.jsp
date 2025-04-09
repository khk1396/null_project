<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html5>
<html>
<head>
<meta charset="UTF-8">
<link href="${ pageContext.request.contextPath }/resources/css/common/header.css" rel="stylesheet" />
</head>
<body>
	<c:if test="${ not empty alertMsg }" >
		<script >
			alert("${ alertMsg }");
		</script>
		<c:remove var="alertMsg" scope="session" />
	</c:if>
	<div class="main-header-container" >
		<div class="main-header container-inner" >
			<a class="main-header logo-link" href="/semi_box">
				<img class="main-header logo" src="${ pageContext.request.contextPath }/resources/svg/logo.svg" alt="project_logo.img" />
			</a>
			
			<!-- 헤더 링크 -->
			<!-- TODO : Controller로 GET 요청 후 페이지 forwarding -->
			<div class="main-header nav-link-container" >
				<!-- 상품 판매 페이지 이동 -->
				<a class="main-header nav-link link link-medium link-hover" href="${ pageContext.request.contextPath }/shop" >SHOP</a>
				<!-- 마이페이지 이동 -->
				<a class="main-header nav-link link link-medium link-hover" href="${ pageContext.request.contextPath }/mypage/inventory">MYPAGE</a>
				<!-- 유저 간 거래 페이지 이동 -->
				<a class="main-header nav-link link link-medium link-hover" href="${ pageContext.request.contextPath }/market">MARKET</a>
				<!-- 로그인 회원 가입 팝업 오픈 -->
				<c:choose >
					<c:when test="${ not empty loginUser }">
						<a class="main-header nav-link link link-medium link-hover" href="${ pageContext.request.contextPath }/signout" >SIGNOUT</a>						 			
					</c:when>
					<c:otherwise>
						<a class="main-header nav-link link link-medium link-hover" href="${ pageContext.request.contextPath }/signin" >SIGNIN</a>
					</c:otherwise>				
				</c:choose>
			</div>
		</div>
	</div>
</body>
</html>