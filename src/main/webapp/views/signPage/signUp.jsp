<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<link href="${ pageContext.request.contextPath }/resources/css/signPage/signUpPage.css" rel="stylesheet" />
<link href="${ pageContext.request.contextPath}/resources/css/signPage/common.css" rel="stylesheet" />
</head>
<body>
	<!-- HEADER -->
	<jsp:include page="/views/common/header.jsp" />
	<jsp:include page="/views/common/style.jsp" />
	<!-- SIGN UP PAGE -->
	<div class="sign-page container page-layout footer-fixed-bottom" >
		<span class="sign-page inner box-shadow" >
			<div class="sign-page title" >
				회원가입
			</div>
			<!-- TODO: 유저 관련 테이블 생성 후 컬럼명 변경 -->
			<form class="sign-page form" action="enroll" method="post" >
				<!-- id input -->
				<span class="sign-up-page input-container userId" >
					<label class="input-label" for="sign-up-userId" >아이디</label>
					<input id="sign-up-userId" class="sign-up-page input input-primary" type="text" name="userId" />
				</span>
				<!-- password input -->
				<span class="sign-up-page input-container userPwd" >
					<label class="input-label" for="sign-up-userPwd"  >비밀번호</label>
					<input id="sign-up-userPwd" type="password" class="sign-up-page input input-primary" name="userPwd" />
				</span>
				<!-- password check input -->
				<span class="sign-up-page input-container pwdCheck" >
					<label class="input-label" for="sign-up-pwdCheck"  >비밀번호 확인</label>
					<input id="sign-up-pwdCheck" type="password" class="sign-up-page input input-primary" />
				</span>
				<!-- nickname -->
				<span class="sign-up-page input-container nickname" >
					<label class="input-label" for="sign-up-nickname"  >닉네임</label>
					<input id="sign-up-nickname" type="password" class="sign-up-page input input-primary" name="nickname" />
				</span>
				<!-- TODO: 배송지 입력 -->
				<div class="sign-up-page btn-container" >
					<button class="sign-up-page sign-up-btn btn btn-medium btn-secondary btn-hover submit" type="submit" >회원가입</button>
					<button class="sign-up-page sign-up-btn btn btn-medium btn-secondary btn-hover" type="reset" >돌아가기</button>
				</div>
			</form>
		</span>	
	</div>
	
	<!-- FOOTER -->
	<jsp:include page="/views/common/footer.jsp" />
</body>
</html>