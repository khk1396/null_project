<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<link href="${ pageContext.request.contextPath }/resources/css/myPage/inventory.css" rel="stylesheet" />
</head>
<body>
	<jsp:include page="/views/common/header.jsp" />
	<!-- MY INVENTORY PAGE -->
	<div class="my-page container page-layout footer-fixed-bottom" >
		<!-- ASIDE NAV BAR -->
		<jsp:include page="/views/myPage/asideNavBar.jsp" />
		<div class="my-page contents-container inventory" >
			<!-- SUB HEADER -->
			<div class="my-page sub-header inventory" > 
				<a class="my-page sub-header btn btn-small btn-secondary btn-hover">나의 박스</a>
				<a class="my-page sub-header btn btn-small btn-secondary btn-hover">나의 상품</a>
			</div>
			
			<div class="my-page title-container" >
				<h1 class="my-page title inventory" >
					나의 박스
				</h1>
				<a class="my-page inventory btn btn-medium btn-primary btn-hover" href="" >교환 등록</a>			
			</div>
			<!-- 
				TODO: SUB HEADER 메뉴에 따라 비동기 처리할 지 전체 페이지 리렌더할 지 결정해야 함
				전체 페이지 리렌더 시 해당 페이지와 똑같은 페이지 하나 더 만들어야 함
			-->
			<div class="my-page item-list-container inventory" >
				<span class="my-page box-item-container card box-shadow" >
					<a class="my-page box-item-link" href="#" >
						<span class="my-page box-item card img-container" >
							<span class="my-page box-item card img"></span>
							<!-- 이미지 영역 --> 
							<!-- NOTI: 영역 확인용 레이아웃, 이미지 생성 후 교체 예정 -->
							<!-- <img src="" alt="" /> -->
						</span>
						<span class="my-page box-item card info-container" >
							<div class="my-page box-item card title">
								SEMI-BOX
							</div>
							<div class="my-page box-item card des">
								THE GREATEST BOX
							</div>
							<div class="my-page box-item card price">
								100,000원
							</div>				
						</span>
					</a>
				</span>
			</div>
		</div>
	</div>
	<jsp:include page="/views/common/footer.jsp" />
</body>
</html>