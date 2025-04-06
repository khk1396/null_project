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
				<h1>회원 탈퇴</h1>
			</div>
			<div class="my-page info-container modify-account">
				<form class="my-page container-inner modify-account" action="" method="POST" >				
					<!-- 비밀번호 입력 -->
					<span class="my-page input-container primary current-pwd" >
						<label class="my-page input-label" for="current-pwd"  >현재 비밀번호</label>
						<input id="current-pwd" type="password" class="my-page input input-primary" name="currentPwd" />
					</span>
					<span class="my-page btn-container" >
						<a class="my-page btn btn-secondary btn-small btn-hover" href="" >탈퇴하기</a>
					</span>
				</form>
			</div>
		</div>
	</div>
	<!-- FOOTER -->
	<jsp:include page="/views/common/footer.jsp" />
</body>
</html>