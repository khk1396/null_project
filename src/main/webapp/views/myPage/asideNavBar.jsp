<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html5>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<link href="${ pageContext.request.contextPath }/resources/css/myPage/asideNavBar.css" rel="stylesheet" />
<link href="${ pageContext.request.contextPath }/resources/css/myPage/common.css" rel="stylesheet" />
</head>
<body>
	<!-- COMMON STYLE -->
	<jsp:include page="/views/common/style.jsp" />
	<!-- 
		TODO: url path 확인 후 선택 상태 적용
	 -->
	<aside class="my-page nav-container" >
		<div class="my-page nav-inner" >
			<!-- 인벤토리 -->
			<a class="my-page nav has-sub link link-medium link-text-hover inventory" href="inventory" >
				인벤토리
			</a>
			<!-- 다이어리 -->
			<a class="my-page nav link link-medium link-text-hover" href="diary" >
				다이어리
			</a>
			<!-- 박스 구매/환불 내역 -->
			<a class="my-page nav link link-medium link-text-hover" href="purchase-history" >
				박스 구매/환불 내역
			</a>
			<!-- 상품 배송 내역 -->
			<a class="my-page nav link link-medium link-text-hover" href="delivery-history" >
				상품 배송 내역
			</a>
			<!-- 정보 수정 -->
			<a class="my-page nav link link-medium link-text-hover" href="modify-account" >
				회원 정보 수정
			</a>
			<!-- 비밀번호 변경 -->
			<a class="my-page nav link link-medium link-text-hover" href="modify-password" >
				비밀번호 변경 
			</a>
			<!-- 회원 탈퇴 -->
			<a class="my-page nav link link-medium link-text-hover" href="withdraw" >
				회원 탈퇴
			</a>
		</div>
	</aside>
</body>
</html>