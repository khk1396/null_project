<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.kh.semibox.boxopen.model.Fortune" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Item-Info-Popup</title>
<style>
body { font-family: Arial, sans-serif; text-align: center; background-color: #f0f8ff; }
.popup { width: 300px; background: white; padding: 20px; border-radius: 10px; box-shadow: 0 0 10px rgba(0, 0, 0, 0.2); position: absolute; top: 50%; left: 50%; transform: translate(-50%, -50%); }
.popup img { width: 100%; height: auto; border-radius: 10px; }
.price { color: #ff4500; font-size: 18px; }
.fortune { margin-top: 10px; font-size: 14px; }
.buttons { margin-top: 15px; }
.buttons button { padding: 10px; border: none; border-radius: 5px; cursor: pointer; margin: 5px; }
.yes { background-color: #4caf50; color: white; }
.no { background-color: #f44336; color: white; }
.diary-popup { display: none; position: absolute; top: 50%; left: 50%; transform: translate(-50%, -50%); background: white; padding: 20px; border-radius: 10px; box-shadow: 0 0 10px rgba(0, 0, 0, 0.2); }
</style>
<script>
function closePopup() { document.getElementById('popup').style.display = 'none'; }
function openDiary() { document.getElementById('diary-popup').style.display = 'block'; }
function closeDiary() { document.getElementById('diary-popup').style.display = 'none'; }
</script>
</head>
<body>
	<!-- 상품 팝업 -->
	<div class="popup" id="popup">
		<img src="/mnt/data/image.png" alt="상품 이미지" id="product-image">
		<h3 id="product-name">상 품 명</h3>
		<p class="price" id="product-price">가격</p>
		<h4>오늘의 <span style="color: red;">운세</span></h4>
		<p class="fortune" id="fortune-text"><%= Fortune.getFortune() %></p>
		<p>다이어리를 입력하시겠습니까?</p>
		<div class="buttons">
			<button class="yes" onclick="openDiary()">예</button>
			<button class="no" onclick="closePopup()">아니오</button>
		</div>
	</div>

	<!-- 다이어리 입력창 -->
	<div class="diary-popup" id="diary-popup">
		<h3>다이어리 입력</h3>
		<textarea rows="5" cols="30"></textarea>
		<br>
		<button onclick="closeDiary()">닫기</button>
	</div>
</body>
</html>
