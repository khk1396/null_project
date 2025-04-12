<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html5>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<script src="${ pageContext.request.contextPath }/resources/js/sign/signUtils.js" type="text/javascript" ></script>
<script src="${ pageContext.request.contextPath }/resources/js/common/utils.js" type="text/javascript" ></script>
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
				<form class="my-page container-inner modify-account" action="${ pageContext.request.contextPath }/mypage/modify-account" method="POST" >				
					<!-- 아이디, readonly -->
					<span class="my-page input-container primary userId" >
						<label class="my-page input-label" for="sign-up-userId"  >아이디</label>
						<input id="sign-up-userId" type="text" class="my-page input input-primary" name="userId" value="${ loginUser.getUserId() }" readonly />
					</span>
					<!-- 닉네임 -->
					<span class="my-page input-container primary nickname" >
						<label class="my-page input-label" for="sign-up-nickname"  >닉네임</label>
						<div class="sign-up-page input-container-inner nickname" >
							<input id="sign-up-nickname" type="text" class="sign-up-page input input-primary" name="userNickName" value="${ loginUser.getUserNickName() }" />
							<button id="check-nickName-btn" class="sign-up-page btn btn-primary btn-small check-btn" type="button" onclick="return checkNickName();">중복 검사</button>
						</div>
					</span>
					<!-- TODO: 배송지 정보 -->
					<span class="my-page input-container primary address" >
						<label class="my-page input-label" for="sign-up-address"  >배송지</label>
						<input id="sign-up-address" type="text" class="my-page input input-primary" name="address" value="${ loginUser.getAddress() }" />
					</span>
					<span class="my-page btn-container" >
						<button class="my-page btn btn-secondary btn-small btn-hover" type="submit" >수정하기</button>
						<!-- <a class="my-page btn btn-secondary btn-small btn-hover" href="" >수정하기</a>  -->
					</span>
				</form>
			</div>
		</div>
	</div>
	<!-- FOOTER -->
	<jsp:include page="/views/common/footer.jsp" />
</body>
</html>