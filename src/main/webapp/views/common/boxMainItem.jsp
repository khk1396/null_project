<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html5>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<link href="${ pageContext.request.contextPath }/resources/css/boxMainItem.css" rel="stylesheet" />
</head>
<body>
	<!--
		NOTI:
		  
		박스아이템 레이아웃 스타일입니다. 
		사용 방법은 아래 코드 복사해서 사용하는 곳에 붙여넣기 하시면 보이실거고 
		위 head에 link 태그도 복사해서 스타일 적용하시면 됩니다. 
		
		스타일 수정 필요하시면 사용하는곳의 식별자를 id, 또는 class로 잡아서 사용하는 곳에서 수정해 주세요.
		현재 식별자 클래스 : box-item
		
		아래는 박스 이미지 이름입니다.
		black.jpg, platinum.jpg, gold.jpg, silver.jpg, bronze.jpg
		
		스타일 수정 예시는 productSale.css, productSale.jsp 확인해 주세요.
		
		현재 boxMainItem.jsp는 include 하시면 안됩니다.
	 -->
	<div class="box-item item-container box-shadow" >
		<div class="box-item item-img-container" >
			<img class="box-item item-img" src="${pageContext.request.contextPath}/resources/images/gold.jpg"/>    			
		</div>
		<div class="box-item item-info-container" >
			<div class="box-item item-info description" >
				최소 5만원 보장, 꽝 없는 박스
			</div>
			<div class="box-item item-info price" >
				49,000원
			</div>
		</div>
	</div>
</body>
</html>