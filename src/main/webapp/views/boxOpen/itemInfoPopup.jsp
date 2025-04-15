<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Item-Info-Popup</title>
<link rel="stylesheet" type="text/css" href="<%= request.getContextPath() %>/resources/css/boxopen/itemInfoPopup.css">
</head>
<body>

    <div class="infopopup all">
        <div class="infopopup content-box">
            <img src="<%= request.getContextPath() + request.getAttribute("productImg") %>" 
     			alt="상품 이미지" class="infopopup product-image">

            <h3 class="infopopup product-name">
                <%= request.getAttribute("productName") %>
            </h3>

            <p class="infopopup price">
                <%= request.getAttribute("productPrice") %> 원
            </p>

            <h4>오늘의 <span style="color: red;">운세</span></h4>
            <p class="infopopup fortune">
                <%= request.getAttribute("fortune") %>
            </p>

            <p>다이어리를 입력하시겠습니까?</p>

            <div class="infopopup buttons">
                <button class="infopopup yes" onclick="openDiary()">예</button>
                <button class="infopopup no" onclick="closePopup()">닫기</button>
            </div>
        </div>
    </div>

    <div class="infopopup diary-popup">
        <h3 class="infopopup diary-title">다이어리 입력</h3>
        <textarea class="infopopup diary-textarea" rows="5" cols="30"></textarea><br>
        <button class="infopopup diary-close" onclick="closeDiary()">저장</button>
    </div>

    <script type="text/javascript">
    function closePopup() {
        // 현재 팝업창 닫기
        window.opener.location.href = "<%= request.getContextPath() %>/index.jsp"; 
        window.close();
    }

    function openDiary() {
        document.querySelector('.infopopup.diary-popup').style.display = 'block';
    }

    function closeDiary() {
        const diary = document.querySelector('.infopopup.diary-textarea').value;
        const productId = "<%= request.getAttribute("productId") %>";

        if (diary.trim() !== "") {
            fetch("<%= request.getContextPath() %>/updateDiary", {
                method: "POST",
                headers: { "Content-Type": "application/x-www-form-urlencoded" },
                body: "productId=" + encodeURIComponent(productId) + "&diary=" + encodeURIComponent(diary)
            })
            .then(response => response.text())
            .then(result => {
                if (result.trim() === "성공") {
                    alert("다이어리가 저장되었습니다!");
                } else {
                    alert("저장이 되지 않았습니다!");
                }
                document.querySelector('.infopopup.diary-popup').style.display = 'none';
                document.querySelector('.infopopup.diary-textarea').value = "";
            })
            .catch(error => {
                console.error("통신 오류:", error);
                alert("저장이 되지 않았습니다!");
                document.querySelector('.infopopup.diary-popup').style.display = 'none';
                document.querySelector('.infopopup.diary-textarea').value = "";
            });
        } else {
            alert("저장이 되지 않았습니다!");
            document.querySelector('.infopopup.diary-popup').style.display = 'none';
            document.querySelector('.infopopup.diary-textarea').value = "";
        }
    }
    </script>

</body>
</html>
