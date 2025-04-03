<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html5>
<html>
<head>
<meta charset="UTF-8">
<link href="resources/css/common/header.css" rel="stylesheet" />
</head>
<body>
	<div class="main-header-container page-layout" >
		<div class="main-header container-inner" >
			<a class="main-header logo-link" href="/semi_box">
				<img class="main-header logo" src="resources/svg/logo.svg" alt="project_logo.img" />
			</a>
			
			<!-- 헤더 링크 -->
			<!-- TODO : Controller로 GET 요청 후 페이지 forwarding -->
			<div class="main-header nav-link-container" >
				<!-- 상품 판매 페이지 이동 -->
				<a class="main-header nav-link link link-medium link-hover" href="">SHOP</a>
				<!-- 마이페이지 이동 -->
				<a class="main-header nav-link link link-medium link-hover" href="">MYPAGE</a>
				<!-- 유저 간 거래 페이지 이동 -->
				<a class="main-header nav-link link link-medium link-hover" href="">MARKET</a>
				<!-- 로그인 회원 가입 팝업 오픈 -->
				<button class="main-header btn btn-small btn-primary btn-hover" >SIGNIN</button>	
			</div>
		</div>
	</div>
</body>
</html>