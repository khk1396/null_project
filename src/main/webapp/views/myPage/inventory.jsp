<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com._null.semi_box.payBox.model.vo.PayBox, java.util.ArrayList" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>나의 박스</title>
    <link href="${ pageContext.request.contextPath }/resources/css/myPage/inventory.css" rel="stylesheet" />
</head>
<body>
    <jsp:include page="/views/common/header.jsp" />
    
    <!-- MY INVENTORY PAGE -->
    <div class="my-page container page-layout footer-fixed-bottom">
    
        <!-- ASIDE NAV BAR -->
        <jsp:include page="/views/myPage/asideNavBar.jsp" />
        
        <div class="my-page contents-container inventory">
        
            <!-- SUB HEADER -->
            <div class="my-page sub-header inventory"> 
                <a class="my-page sub-header btn btn-small btn-secondary btn-hover">나의 박스</a>
                <a class="my-page sub-header btn btn-small btn-secondary btn-hover" 
                   href="${ pageContext.request.contextPath }/mypage/myProduct">나의 획득 상품</a>
            </div>
            
            <div class="my-page title-container">
                <h1 class="my-page title inventory">나의 박스</h1>			
            </div>
            
            <%
                ArrayList<PayBox> list = (ArrayList<PayBox>) request.getAttribute("payBoxList");
            %>
            
            <div class="my-page item-list-container inventory">
                <% for (int i = 0; i < list.size(); i++) { %>
                    <span class="my-page box-item-container card box-shadow">
                        <a class="my-page box-item-link" 
                           href="${ pageContext.request.contextPath }/views/boxOpen/boxEffect.jsp?boxCode=<%= list.get(i).getBoxCode() %>">
                           <%
                           	request.getSession().setAttribute("payId",list.get(i).getPayId());
                           %>
                            <span class="my-page box-item card img-container">
                                <img class="my-page box-item card img" src="<%= list.get(i).getBoxImg() %>" />
                            </span>
                            
                            <span class="my-page box-item card info-container">
                                <div class="my-page box-item card title"></div>
                                <div class="my-page box-item card price">
                                    <%= list.get(i).getPrice() %> 원
                                </div>		
                                <div class="my-page box-item card des">
                                    <%= list.get(i).getPayMethod() %>
                                </div>
                            </span>
                        </a>
                    </span>
                <% } %>
            </div>
        </div>
    </div>
    
    <jsp:include page="/views/common/footer.jsp" />
</body>
</html>
