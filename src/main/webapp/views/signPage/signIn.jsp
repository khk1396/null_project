<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="resources/css/signPage/signInPage.css" rel="stylesheet" />
<link href="resources/css/signPage/common.css" rel="stylesheet" />
<script src="resources/js/common/input.js" ></script>
<script src="resources/js/signPage/funcBtn.js"></script>
<title></title>
</head>
<body>
	<!-- HEADER -->
	<jsp:include page="/views/common/header.jsp" />
	<jsp:include page="/views/common/style.jsp" />
	<!-- SIGN IN PAGE -->
	<div class="sign-page container page-layout footer-fixed-bottom" >
		<span class="sign-page inner box-shadow" >
			<div class="sign-page title">
				로그인
			</div>
			<!-- id input -->
			<!-- TODO: 유저 관련 테이블 생성 후 컬럼명 변경 -->
			<form class="sign-page form" action="signIn" method="post" >
				<span class="sign-in-page input-container shrink userId" >
					<input id="sign-in-userId" class="sign-in-page input shrink" type="text" name="userId" onfocus="return onFocusShrinkInput('.sign-in-page.userId')" />
					<label class="input-label shrink" for="sign-in-userId" >ID</label>
				</span>
				<!-- pwd input -->
				<span class="sign-in-page input-container shrink userPwd" >
					<input id="sign-in-userPwd" type="password" class="sign-in-page input shrink" name="userPwd" onfocus="return onFocusShrinkInput('.sign-in-page.userPwd')" />
					<label class="input-label shrink" for="sign-in-userPwd"  >PASSWORD</label>
				</span>
				<!-- 비밀번호 찾기 버튼 -->
				<div class="sign-in-page find-pwd-container" >
					<span class="sign-in-page find-pwd-inner" >
						<a class="sign-in-page link link-small link-text-hover">
							비밀번호 찾기
						</a>
					</span>
				</div>
				<div class="sign-in-page btn-container" >
					<button class="sign-in-page sign-in-btn btn btn-medium btn-primary btn-hover" type="submit" >로그인</button>
					<button class="sign-in-page sign-up-btn btn btn-medium btn-secondary btn-hover" type="button" onclick="" >회원가입</button>
				</div>			
			</form>
		</span>	
	</div>
	
	<!-- FOOTER -->
	<jsp:include page="/views/common/footer.jsp" />
</body>
</html>