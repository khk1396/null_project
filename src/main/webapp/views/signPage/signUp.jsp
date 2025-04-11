<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<link href="${ pageContext.request.contextPath }/resources/css/signPage/signUpPage.css" rel="stylesheet" />
<link href="${ pageContext.request.contextPath }/resources/css/signPage/common.css" rel="stylesheet" />
<script src="${ pageContext.request.contextPath }/resources/js/sign/signUtils.js" type="text/javascript" ></script>
<script src="${ pageContext.request.contextPath }/resources/js/common/utils.js" type="text/javascript" ></script>
</head>
<body>
	<!-- HEADER -->
	<jsp:include page="/views/common/header.jsp" />
	<jsp:include page="/views/common/style.jsp" />
	<!-- TOAST -->
	<div id="toast" ></div>
	
	<!-- SIGN UP PAGE -->
	<div class="sign-page container page-layout footer-fixed-bottom" >
		<span class="sign-page inner box-shadow" >
			<div class="sign-page title">
				회원가입
			</div>
			<form class="sign-page form" action="signup" method="post" >
				<!-- id input -->
				<span class="sign-up-page input-container primary userId" >
					<label class="input-label" for="sign-up-userId" >아이디</label>
					<div class="sign-up-page input-container-inner user-id" >
						<input id="sign-up-userId" class="sign-up-page input input-primary" type="text" name="userId" />
						<button id="check-id-btn" class="sign-up-page btn btn-primary btn-small check-btn" type="button" onclick="return checkId();" >중복 검사</button>					
					</div>
					<!-- TODO: 
						유효성 검사
						최소 길이(영문 3자) ~ 최대 길이(영문 30자)
						한글 입력 안됨, 특수문자는 '_'만 가능  						 
					-->
				</span>
				<!-- name input -->
				<span class="sign-up-page input-container primary userName" >
					<label class="input-label" for="sign-up-userName"  >이름</label>
					<input id="sign-up-userName" type="text" class="sign-up-page input input-primary" name="userName" />
				</span>
				<!-- password input -->
				<span class="sign-up-page input-container primary userPwd" >
					<!-- 
						TODO: 
						비밀번호 최소 8자 ~ 최대 30
						특수문자, 숫자 포함 가능 (공백 x)  
					-->
					<label class="input-label" for="sign-up-userPwd"  >비밀번호</label>
					<input id="sign-up-userPwd" type="password" class="sign-up-page input input-primary" name="userPassword" />
				</span>
				<!-- password check input -->
				<span class="sign-up-page input-container primary pwdCheck" >
					<label class="input-label" for="sign-up-pwdCheck"  >비밀번호 확인</label>
					<input id="sign-up-pwdCheck" type="password" class="sign-up-page input input-primary" name="userPwdCheck"/>
				</span>
				<!-- nickname -->
				<span class="sign-up-page input-container primary nickname" >
					<!-- 
						TODO:
						특수문자 제외 한글/영문
						중복 검사 
					 -->
					<label class="input-label" for="sign-up-nickname"  >닉네임</label>
					 <div class="sign-up-page input-container-inner nickname" >
						<input id="sign-up-nickname" type="text" class="sign-up-page input input-primary" name="userNickName" onchange="checkNickNameExist();" />
						<button id="check-nickName-btn" class="sign-up-page btn btn-primary btn-small check-btn" type="button" onclick="return checkNickName();">중복 검사</button>
					 </div>
				</span>
				<!-- 
					TODO: 배송지 입력
					https://postcode.map.daum.net/guide api 활용 
					사용 input zip-code, 주소 정보, 상세 정보
				-->
				<span class="sign-up-page input-container primary address" >
					<label class="input-label" for="sign-up-address" >배송지</label>
					<input id="sign-up-address" type="text" class="sign-up-page input input-primary" name="address" />
				</span>
				<div class="sign-up-page btn-container" >
					<button id="sign-up-submit-btn" class="sign-up-page sign-up-btn btn btn-medium btn-secondary btn-hover submit" type="submit" onclick="return submitSignUp();" >회원가입</button>
					<button class="sign-up-page sign-up-btn btn btn-medium btn-secondary btn-hover" type="reset" onclick="return history.back();" >돌아가기</button>
				</div>
			</form>
		</span>	
	</div>
	
	<!-- FOOTER -->
	<jsp:include page="/views/common/footer.jsp" />
</body>
</html>