<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html5>
<html>
<head>
<meta charset="UTF-8">
<title>상품판매페이지</title>
<style>
    button + button { 
    	margin-left: 20px; }
 
    .btn-selected {
    	color: #f4f4f4;
  		background: #1f53f0;
  		border: 2px solid #1f53f0;
  	  		
    }
    .btn-unselected {
        background-color: #f4f4f4; 
        color: #1f53f0;
        border-color: #1f53f0;
    }
    
    .btn-primary
   
</style>
<script>

    function selectCategory(button) {
        let buttons = document.querySelectorAll('.category-btn');
        buttons.forEach(btn => {
            btn.classList.remove('btn-selected', 'btn-unselected');
            btn.classList.add('btn-unselected');
        });
        button.classList.remove('btn-unselected');
        button.classList.add('btn-selected');
    }
</script>
</head>
<body>      
    <!-- HEADER -->
    <jsp:include page="../common/header.jsp" />
    
    <!-- STYLE -->
    <jsp:include page="../common/style.jsp" />
    
    <div class="page-layout">  
    	<h2 style="padding-left: 15%;">획득상품 선택</h2>
    		<button style="margin-left: 15%;" class="btn btn-medium category-btn btn-unselected" onclick="selectCategory(this)">가전제품</button>
    		<button class="btn btn-medium category-btn btn-unselected" onclick="selectCategory(this)">의류패션</button>
    		<button class="btn btn-medium category-btn btn-unselected" onclick="selectCategory(this)">생활용품</button>
    		<button class="btn btn-medium category-btn btn-unselected" onclick="selectCategory(this)">건강기능</button>
    	<h1 style="padding-left: 15%;">세미박스 선택</h1>
    		<button style="margin-left: 10%;" type="button" onclick="openBox()"><img src="${pageContext.request.contextPath}/resources/images/ag.jpg"/></button> <%-- 회색박스 --%>
    		<button type="button" onclick="openBox()"><img src="${pageContext.request.contextPath}/resources/images/bp.jpg"/></button> <%-- 검정박스 --%>
    		<button type="button" onclick="openBox()"><img src="${pageContext.request.contextPath}/resources/images/cd.jpg"/></button> <%-- 연보라박스 --%>
   			<button type="button" onclick="openBox()"><img src="${pageContext.request.contextPath}/resources/images/dh.jpg"/></button> <%-- 갈색박스 --%>
	 </div>
	 
    <!-- FOOTER -->
    <jsp:include page="../common/footer.jsp" />
    
 
</body>
</html>

