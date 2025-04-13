<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html5>
<html>
<head>
<meta charset="UTF-8">
<link href="resources/css/mainPage/main.css" rel="stylesheet" />
</head>
<body>
	<jsp:include page="/views/common/style.jsp" />
	<jsp:include page="/views/common/header.jsp" />.
	
	<a href="deliveryRequest">배송지 신청</a>
	<a href="views/delivery/deliveryCompleted.jsp">배송신청 완료</a>
	
	<!-- NOTI: branch - impl#01_mainUI -->
	<div class="main-page top-banner-container" >
		<!-- TODO: 메인 배너  -->
		<a class="main-page top-banner-link" href="" >
			<!-- TODO: 이미지 수정 예정 -->
			<img class="main-page top-banner-image" src="resources/images/main_banner.jpg" alt="main_banner.img" />
		</a>
	</div>
	<div class="main-page contents-container page-layout footer-fixed-bottom" >
		<section class="main-page section box-list-container" >
			<h1 class="main-page section-title box-title">인기 상품</h1>
			<!-- TODO: 인기 상품 (박스 목록) -->
			<!-- 반복문으로 목록 출력, 가로 길이 1440 기준 한 줄에 4개씩 -->
			<!-- box-item-container class에 출력되는 페이지 이름 추가 -->
			<div class="main-page box-item-list">
				<span class="box-item-container card box-shadow" >
					<a class="box-item-link" href="#" >
						<span class="box-item card img-container" >
							<span class="box-item card img"></span>
							<!-- 이미지 영역 --> 
							<!-- NOTI: 영역 확인용 레이아웃, 이미지 생성 후 교체 예정 -->
							<!-- <img src="" alt="" /> -->
						</span>
						<span class="box-item card info-container" >
							<div class="box-item card title">
								SEMI-BOX
							</div>
							<div class="box-item card des">
								THE GREATEST BOX
							</div>
							<div class="box-item card price">
								100,000원
								
								
								<!-- !!!!!!!!!!!!!!!!!!!!!!! -->
								<!--  테스트용 입니다!!!!  -->
										<script>
										    function openBox() {
										        location.href = "<%= request.getContextPath() %>/views/boxOpen/boxEffect.jsp";
										    }
										</script>
										<button onclick="openBox()">박스 오픈 버튼</button>
								<!--  테스트용 입니다!!!!  -->	
								<!-- !!!!!!!!!!!!!!!!!!!!!!! -->
								
								
								
							</div>				
						</span>
					</a>
				</span>		
			</div>
		</section>
		<section class="main-page section prod-list-container">
			<h1 class="main-page section-title box-title">교환 신청중인 상품</h1>
			<!-- TODO: 교환 신청 중 상품 목록 -->
			<!-- 반복문으로 목록 출력, 가로 길이 1440 기준 한 줄에 6개씩 -->
			<div class="main-page prod-item-list">
				<!-- 아래부터 아이템 영역 -->
				<span class="prod-item-container card box-shadow" >
					<span class="prod-item card img-container" >
						<span class="prod-item card img" >
							<!-- TODO: 임시 이미지 레이아웃, 이미지 생성 후 교체 예정 -->
						</span> 
					</span>
					<span class="prod-item card info-container" >
						<div class="prod-item card title" >
							츄파츕스
						</div>
						<div class="prod-item card des" >
							에어팟과 교환하고 싶습니다.
						</div>
					</span>
				</span>			
			</div>
		</section>	
	</div>
	<jsp:include page="/views/common/footer.jsp" />
</body>
</html>
