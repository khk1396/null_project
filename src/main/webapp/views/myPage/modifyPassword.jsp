<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html5>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<link href="${ pageContext.request.contextPath }/resources/css/myPage/modifyAccount.css" rel="stylesheet" />
<link href="${ pageContext.request.contextPath }/resources/css/signPage/common.css" rel="stylesheet" />
<script src="${ pageContext.request.contextPath }/resources/js/common/utils.js" type="text/javascript" ></script>
<script src="${ pageContext.request.contextPath }/resources/js/myPage/myPageUtils.js" type="text/javascript" ></script>

<script type="text/javascript">
	const contextPath = "${pageContext.request.contextPath}";
</script>

</head>
<body>
	<!-- HEADER -->
	<jsp:include page="/views/common/header.jsp" />
	<jsp:include page="/views/common/style.jsp" />

	<div id="toast" ></div>
	<div class="my-page container modify-account page-layout footer-fixed-bottom" >
		<jsp:include page="/views/myPage/asideNavBar.jsp" />
		<div class="my-page contents-container modify-account" >
			<div class="my-page title-container" >
				<h1>비밀번호 변경</h1>
			</div>
			<div class="my-page info-container modify-account">
				<form class="my-page container-inner modify-account" action="" method="" >
					<!-- , readonly -->
					<input type="hidden" name="userId" id="userId" value="${ loginUser.userId }" />
					<!-- 현재 비밀번호, readonly -->
					<span class="my-page input-container primary current-pwd" >
						<label class="my-page input-label" for="current-pwd" >현재 비밀번호</label>
						<input id="current-pwd" type="password" class="my-page input input-primary" name="currentPwd" />
					</span>
					<!-- 변경할 비밀번호 -->
					<span class="my-page input-container primary change-pwd" >
						<label class="my-page input-label" for="change-pwd" >변경할 비밀번호</label>
						<input id="change-pwd" type="password" class="my-page input input-primary" name="password" />
					</span>
					<!-- 비밀번호 확인 -->
					<span class="my-page input-container primary change-pwd-check" >
						<label class="my-page input-label" for="change-pwd-check" >비밀번호 확인</label>
						<input id="change-pwd-check" type="password" class="my-page input input-primary" />
					</span>
					<span class="my-page btn-container" >
					<button class="my-page btn btn-secondary btn-small btn-hover" type="button" id="change-password-btn" onclick="
						const checkPwdPassed = changePassword();					
						if (!checkPwdPassed) {return false;}
						return true;
					   ">변경하기</button>
					</span>
				</form>
			</div>
		</div>
	</div>
	<!-- FOOTER -->
	<jsp:include page="/views/common/footer.jsp" />
</body>
</html>