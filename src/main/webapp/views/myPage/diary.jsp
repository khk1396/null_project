<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html5>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<link href="${ pageContext.request.contextPath }/resources/css/myPage/diary.css" rel="stylesheet" />
</head>
<body>
	<!-- HEADER -->
	<jsp:include page="/views/common/header.jsp" />
	<div class="my-page container diary page-layout footer-fixed-bottom" >
		<!-- ASIDE BAR -->
		<jsp:include page="/views/myPage/asideNavBar.jsp" />
		<div class="my-page contents-container diary" >
			<div class="my-page title-container" >
				<h1 >다이어리</h1>
			</div>
			<div class="my-page item-list-container diary" >
				<div class="my-page diary-item-container" >
					<!-- 상품 이미지 -->
					<span class="my-page diary-item img" >
						<!-- TODO: img 태그로 이미지 추가 -->
					</span>
					<!-- 상품 정보 -->
					<span class="my-page diary-item info-container" >
						<!-- 상품 명 -->
						<div class="my-page diary-item info name" >
							<div class="my-page diary-item info-title name" >
								상품명
							</div>
							<div class="my-page diary-item info-contents name" >
								모니터 암
							</div>
						</div>
						<!-- 가격 -->
						<div class="my-page diary-item info price" >
							<div class="my-page diary-item info-title name" >
						    	가격
							</div>
							<div class="my-page diary-item info-contents name" >
								100,000원
							</div>
						</div>
						<!-- 운세 -->
						<div class="my-page diary-item info fortune" >
							<div class="my-page diary-item info-title fortune" >
								운세
							</div>
							<div class="my-page diary-item info-contents fortune" >
								당신을 방해하던 이가 오늘은 도움을 주게 됩니다. 적이 동지가 되는 날이니 기분이 좋습니다. 당신과 경쟁관계라고 생각하던 사람에게서 좋은 소식을 듣게 되는 일이 생길 수 있습니다. 그만큼 마음을 풀 수 있는 기회도 되며 사람을 믿는데 큰 역할을 할 수 있습니다. 걸림돌이라고 생각했던 일들이 좋은 결과를 내기 때문에 그동안의 스트레스가 말끔히 해소되는 기쁨을 맛 보실 수 있습니다. 마음이 한결 가벼워지고 오해는 풀어지게 됩니다. 좋은 소식을 들을 운도 있습니다. 가족의 위안을 얻는 날이기도 합니다.							
							</div>
						</div>
						<!-- 기록 -->
						<div class="my-page diary-item info diary" >
							<div class="my-page diary-item info-title diary" >
								기록
							</div>
							<div class="my-page diary-item info-contents diary" >
								10,000원 박스를 구매했는데 100,000원 상품이라니 로또 구매라도 해야 하나..
							</div>
						</div>
					</span>
				</div>
				<div class="my-page diary-item-container" >
					<!-- 상품 이미지 -->
					<span class="my-page diary-item img" >
						<!-- TODO: img 태그로 이미지 추가 -->
					</span>
					<!-- 상품 정보 -->
					<span class="my-page diary-item info-container" >
						<!-- 상품 명 -->
						<div class="my-page diary-item info name" >
							<div class="my-page diary-item info-title name" >
								상품명
							</div>
							<div class="my-page diary-item info-contents name" >
								모니터 암
							</div>
						</div>
						<!-- 가격 -->
						<div class="my-page diary-item info price" >
							<div class="my-page diary-item info-title name" >
						    	가격
							</div>
							<div class="my-page diary-item info-contents name" >
								100,000원
							</div>
						</div>
						<!-- 운세 -->
						<div class="my-page diary-item info fortune" >
							<div class="my-page diary-item info-title fortune" >
								운세
							</div>
							<div class="my-page diary-item info-contents fortune" >
								당신을 방해하던 이가 오늘은 도움을 주게 됩니다. 적이 동지가 되는 날이니 기분이 좋습니다. 당신과 경쟁관계라고 생각하던 사람에게서 좋은 소식을 듣게 되는 일이 생길 수 있습니다. 그만큼 마음을 풀 수 있는 기회도 되며 사람을 믿는데 큰 역할을 할 수 있습니다. 걸림돌이라고 생각했던 일들이 좋은 결과를 내기 때문에 그동안의 스트레스가 말끔히 해소되는 기쁨을 맛 보실 수 있습니다. 마음이 한결 가벼워지고 오해는 풀어지게 됩니다. 좋은 소식을 들을 운도 있습니다. 가족의 위안을 얻는 날이기도 합니다.							
							</div>
						</div>
						<!-- 기록 -->
						<div class="my-page diary-item info diary" >
							<div class="my-page diary-item info-title diary" >
								기록
							</div>
							<div class="my-page diary-item info-contents diary" >
								10,000원 박스를 구매했는데 100,000원 상품이라니 로또 구매라도 해야 하나..
							</div>
						</div>
					</span>
				</div>
			</div>
		</div>
	</div>
	
	<!-- FOOTER -->
	<jsp:include page="/views/common/footer.jsp" />
</body>
</html>