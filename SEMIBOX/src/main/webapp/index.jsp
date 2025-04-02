<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Box-Open_TEST</title>
<script>
    // 박스 오픈 버튼 클릭 시, 서블릿 호출
    function openBox() {
        location.href = "<%= request.getContextPath() %>/boxEffect";
    }
</script>
</head>
<body>
    <h2>박스 오픈 테스트용!</h2>
    <button onclick="openBox()">박스 오픈 버튼</button>
</body>
</html>
