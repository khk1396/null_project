/*package com._null.semi_box.mypage.controller;

import java.io.IOException;
import java.util.List;
import javax.servlet.*;
import javax.servlet.http.*;
import com._null.semi_box.product.model.vo.Product;
import com._null.semi_box.product.service.ProductService;
import com._null.semi_box.product.service.ProductServiceImpl;

@WebServlet("/diary.my")
public class ProductDiaryListController extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {
        
        String userPk = ((User)request.getSession().getAttribute("loginUser")).getUserId();

        ProductService service = new ProductServiceImpl();
        List<Product> productList = service.selectProductListByUser(userPk);

        request.setAttribute("productList", productList);
        request.getRequestDispatcher("/views/myPage/diary.jsp").forward(request, response);
    }
}
*/