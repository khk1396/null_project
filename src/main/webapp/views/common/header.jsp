<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html5>
<html>
<head>
<meta charset="UTF-8">
<link href="${ pageContext.request.contextPath }/resources/css/common/header.css" rel="stylesheet" />
</head>
<body>
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

				<a class="main-header nav-link link link-medium link-hover" href="/semi_box/market">MARKET</a>

				<a class="main-header nav-link link link-medium link-hover" href="${ pageContext.request.contextPath }/market">MARKET</a>

				<!-- 로그인 회원 가입 팝업 오픈 -->
				<a class="main-header nav-link link link-medium link-hover" href="${ pageContext.request.contextPath }/signin" >SIGNIN</a>	
			</div>
		</div>
	</div>
</body>
</html>