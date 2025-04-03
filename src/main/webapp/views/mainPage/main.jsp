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
	<jsp:include page="/views/common/header.jsp" />
	<!-- NOTI: branch - impl#01_mainUI -->
	<div class="main-page top-banner-container" >
		<!-- TODO: 메인 배너  -->
		<a class="main-page top-banner-link" href="" >
			<!-- TODO: 이미지 수정 예정 -->
			<img class="main-page top-banner-image" src="resources/images/main_banner.jpg" alt="main_banner.img" />
		</a>
	</div>
	<div class="main-page contents-container" >
		<section class="main-page section box-list-container" >
			<h1 class="main-page section-title box-title">인기 상품</h1>
			<!-- TODO: 인기 상품 (박스 목록) -->
			<!-- 반복문으로 목록 출력, 가로 길이 1440 기준 한 줄에 4개씩 -->
			<!-- box-item-container class에 출력되는 페이지 이름 추가 -->
			<div class="main-page box-item-list">
				<span class="box-item-container card box-shadow" >
					<a href="#" >
						<span class="box-item card img-container" >
							<span class="box-item card img"></span>
							<!-- 이미지 영역 --> 
							<!-- NOTI: 영역 확인용 레이아웃, 이미지 생성 후 교체 예정 -->
							<!-- <img src="" alt="" /> -->
						</span>
						<span class="box-item card info-container" >
							<span class="box-item card title">
								SEMI-BOX
							</span>
							<span class="box-item card des">
								THE GREATEST BOX
							</span>
							<span class="box-item card price">
								100,000원
							</span>				
						</span>
					</a>
				</span>
				<div class="box-item-container card box-shadow" > 
					<div class="box-item card img-container" >
						<div class="box-item card img"></div>
						<!-- 이미지 영역 --> 
						<!-- NOTI: 영역 확인용 레이아웃, 이미지 생성 후 교체 예정 -->
						<!-- <img src="" alt="" /> -->
					</div>
					<div class="box-item card info-container" >
						<div class="box-item card title">
							SEMI-BOX
						</div>
						<div class="box-item card des">
							THE GREATEST BOX
						</div>
						<div class="box-item card price">
							100,000원
						</div>				
					</div>
				</div>
				<div class="box-item-container card box-shadow" > 
					<div class="box-item card img-container" >
						<div class="box-item card img"></div>
						<!-- 이미지 영역 --> 
						<!-- NOTI: 영역 확인용 레이아웃, 이미지 생성 후 교체 예정 -->
						<!-- <img src="" alt="" /> -->
					</div>
					<div class="box-item card info-container" >
						<div class="box-item card title">
							SEMI-BOX
						</div>
						<div class="box-item card des">
							THE GREATEST BOX
						</div>
						<div class="box-item card price">
							100,000원
						</div>				
					</div>
				</div>
				<div class="box-item-container card box-shadow" > 
					<div class="box-item card img-container" >
						<div class="box-item card img"></div>
						<!-- 이미지 영역 --> 
						<!-- NOTI: 영역 확인용 레이아웃, 이미지 생성 후 교체 예정 -->
						<!-- <img src="" alt="" /> -->
					</div>
					<div class="box-item card info-container" >
						<div class="box-item card title">
							SEMI-BOX
						</div>
						<div class="box-item card des">
							THE GREATEST BOX
						</div>
						<div class="box-item card price">
							100,000원
						</div>				
					</div>
				</div>
								<div class="box-item-container card box-shadow" > 
					<div class="box-item card img-container" >
						<div class="box-item card img"></div>
						<!-- 이미지 영역 --> 
						<!-- NOTI: 영역 확인용 레이아웃, 이미지 생성 후 교체 예정 -->
						<!-- <img src="" alt="" /> -->
					</div>
					<div class="box-item card info-container" >
						<div class="box-item card title">
							SEMI-BOX
						</div>
						<div class="box-item card des">
							THE GREATEST BOX
						</div>
						<div class="box-item card price">
							100,000원
						</div>				
					</div>
				</div>
								<div class="box-item-container card box-shadow" > 
					<div class="box-item card img-container" >
						<div class="box-item card img"></div>
						<!-- 이미지 영역 --> 
						<!-- NOTI: 영역 확인용 레이아웃, 이미지 생성 후 교체 예정 -->
						<!-- <img src="" alt="" /> -->
					</div>
					<div class="box-item card info-container" >
						<div class="box-item card title">
							SEMI-BOX
						</div>
						<div class="box-item card des">
							THE GREATEST BOX
						</div>
						<div class="box-item card price">
							100,000원
						</div>				
					</div>
				</div>
								<div class="box-item-container card box-shadow" > 
					<div class="box-item card img-container" >
						<div class="box-item card img"></div>
						<!-- 이미지 영역 --> 
						<!-- NOTI: 영역 확인용 레이아웃, 이미지 생성 후 교체 예정 -->
						<!-- <img src="" alt="" /> -->
					</div>
					<div class="box-item card info-container" >
						<div class="box-item card title">
							SEMI-BOX
						</div>
						<div class="box-item card des">
							THE GREATEST BOX
						</div>
						<div class="box-item card price">
							100,000원
						</div>				
					</div>
				</div>
								<div class="box-item-container card box-shadow" > 
					<div class="box-item card img-container" >
						<div class="box-item card img"></div>
						<!-- 이미지 영역 --> 
						<!-- NOTI: 영역 확인용 레이아웃, 이미지 생성 후 교체 예정 -->
						<!-- <img src="" alt="" /> -->
					</div>
					<div class="box-item card info-container" >
						<div class="box-item card title">
							SEMI-BOX
						</div>
						<div class="box-item card des">
							THE GREATEST BOX
						</div>
						<div class="box-item card price">
							100,000원
						</div>				
					</div>
				</div>			
			</div>
		</section>
		<section class="main-page section prod-list-container">
			<h1 class="main-page section-title box-title">교환 신청중인 상품</h1>
			<!-- TODO: 교환 신청 중 상품 목록 -->
			<!-- 반복문으로 목록 출력, 가로 길이 1440 기준 한 줄에 6개씩 -->
			<div class="main-page prod-item-list">
				<!-- 아래부터 아이템 영역 -->
				<div class="prod-item-container card box-shadow" >
					<div class="prod-item card img-container" >
						<div class="prod-item card img" >
							<!-- TODO: 임시 이미지 레이아웃, 이미지 생성 후 교체 예정 -->
						</div> 
					</div>
					<div class="prod-item card info-container" >
						<div class="prod-item card title" >
							츄파츕스
						</div>
						<div class="prod-item card des" >
							에어팟과 교환하고 싶습니다.
						</div>
					</div>
				</div>			
			</div>
		</section>	
	</div>
	<jsp:include page="/views/common/footer.jsp" />
</body>
</html>