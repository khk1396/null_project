<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html5>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<link href="${ pageContext.request.contextPath }/resources/css/myPage/modifyAccount.css" rel="stylesheet" />
</head>
<body>
	<!-- HEADER -->
	<jsp:include page="/views/common/header.jsp" />
	<div class="my-page container modify-account page-layout footer-fixed-bottom" >
		<jsp:include page="/views/myPage/asideNavBar.jsp" />
		<div class="my-page contents-container modify-account" >
			<div class="my-page title-container" >
				<h1>회원 정보 수정</h1>
			</div>
			<div class="my-page info-container modify-account">
				<form class="my-page container-inner modify-account" action="" method="POST" >				
					<!-- 아이디, readonly -->
					<span class="my-page input-container primary userId" >
						<label class="my-page input-label" for="sign-up-userId"  >아이디</label>
						<input id="sign-up-userId" type="text" class="my-page input input-primary" name="userId" readonly />
					</span>
					<!-- 닉네임 -->
					<span class="my-page input-container primary nickname" >
						<label class="my-page input-label" for="sign-up-nickname"  >닉네임</label>
						<input id="sign-up-nickname" type="text" class="my-page input input-primary" name="nickname" />
					</span>
					<!-- 전화번호 -->
					<span class="my-page input-container primary phone" >
						<label class="my-page input-label" for="sign-up-phone"  >연락처</label>
						<input id="sign-up-phone" type="text" class="my-page input input-primary" name="userId" />
					</span>
					<!-- TODO: 배송지 정보 -->
					<span class="my-page input-container primary address" >
						<label class="my-page input-label" for="sign-up-address"  >배송지</label>
						<input id="sign-up-address" type="text" class="my-page input input-primary" name="address" />
					</span>
					<span class="my-page btn-container" >
						<a class="my-page btn btn-secondary btn-small btn-hover" href="" >수정하기</a>
					</span>
				</form>
			</div>
		</div>
	</div>
	<!-- FOOTER -->
	<jsp:include page="/views/common/footer.jsp" />
</body>
</html>