<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Box-Effect</title>

    <%-- 외부 CSS 파일 연결 --%>
    <link rel="stylesheet" href="<%= request.getContextPath() %>/resources/css/boxopen/boxEffect.css">

    <%-- 자동 팝업 실행 여부 설정 --%>
    <% boolean enableAutoPopup = true; %>

    <script>
	  // 3초 후 팝업을 열도록 설정
	  setTimeout(function() {
	  	window.open("<%= request.getContextPath() %>/boxOpenResult", "_blank", "width=800, height=600");
	  }, 3000);
	</script>
</head>
<body>
    <div class="loader">
        <div class="box box0"><div></div></div>
        <div class="box box1"><div></div></div>
        <div class="box box2"><div></div></div>
        <div class="box box3"><div></div></div>
        <div class="box box4"><div></div></div>
        <div class="box box5"><div></div></div>
        <div class="box box6"><div></div></div>
        <div class="box box7"><div></div></div>
        <div class="ground"><div></div></div>
    </div>
</body>
</html>
