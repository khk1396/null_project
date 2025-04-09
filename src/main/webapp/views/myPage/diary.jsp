<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html5>
<html>
<head>
<meta charset="UTF-8">
<title>다이어리</title>
<link href="${ pageContext.request.contextPath }/resources/css/myPage/diary.css" rel="stylesheet" />
</head>
<body>
	<!-- HEADER -->
	<jsp:include page="/views/common/header.jsp" />
	
	<div class="my-page container diary page-layout footer-fixed-bottom">
		<!-- ASIDE BAR -->
		<jsp:include page="/views/myPage/asideNavBar.jsp" />
		
		<div class="my-page contents-container diary">
			<div class="my-page title-container">
				<h1>다이어리</h1>
			</div>
			
			<div class="my-page item-list-container diary">
				
				<c:choose>
					<c:when test="${empty diaryList}">
						<div class="no-data">다이어리 내용이 없습니다.</div>
					</c:when>
					
					<c:otherwise>
						<c:forEach var="item" items="${diaryList}">
							<div class="my-page diary-item-container">
								<!-- 상품 이미지 -->
								<span class="my-page diary-item img">
									<img src="${item.productImg}" alt="${item.productName}" />
								</span>
								
								<!-- 상품 정보 -->
								<span class="my-page diary-item info-container">
									
									<!-- 상품 명 -->
									<div class="my-page diary-item info name">
										<div class="my-page diary-item info-title name">${item.productName}</div>
									</div>
									
									<!-- 가격 -->
									<div class="my-page diary-item info price">
										<div class="my-page diary-item info-title name">${item.productPrice}원</div>
									</div>
									
									<!-- 운세 -->
									<div class="my-page diary-item info fortune">
										<div class="my-page diary-item info-title fortune">운세</div>
										<div class="my-page diary-item info-contents fortune">
											${item.fortune}
										</div>
									</div>
									
									<!-- 기록 -->
									<div class="my-page diary-item info diary">
										<div class="my-page diary-item info-title diary">기록</div>
										<div class="my-page diary-item info-contents diary">
											${item.diary}
										</div>
									</div>
									
								</span>
							</div>
						</c:forEach>
					</c:otherwise>
				</c:choose>
				
			</div>
		</div>
	</div>
	
	<!-- FOOTER -->
	<jsp:include page="/views/common/footer.jsp" />
</body>
</html>
