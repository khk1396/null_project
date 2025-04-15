package com._null.semi_box.mypage.controller;

import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

import com._null.semi_box.member.model.vo.Member;
import com._null.semi_box.mypage.model.vo.DiaryEntry;
import com._null.semi_box.mypage.service.DiaryService;
import com._null.semi_box.mypage.service.DiaryServiceImpl;

@WebServlet("/mypage/diary")
public class DiaryController extends HttpServlet {

    private DiaryService diaryService = new DiaryServiceImpl();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        // 1. 로그인된 사용자 정보 가져오기
        HttpSession session = request.getSession();
        Object loginUserObj = session.getAttribute("loginUser");

        // 로그인된 사용자 확인
        if (loginUserObj == null) {
            // 로그인되지 않은 경우, 로그인 페이지로 리다이렉트
            response.sendRedirect(request.getContextPath() + "/views/member/loginForm.jsp");
            return;
        }

        // 2. 로그인된 사용자의 userPk 가져오기
        Member loginUser = (Member) loginUserObj;
        int userPk = loginUser.getUserPk();  // 실제 userPk 값을 가져옵니다.

        // 3. diaryService에서 실제 userPk로 일기 목록 조회
        List<DiaryEntry> diaryList = diaryService.getDiaryList(userPk);
        request.setAttribute("diaryList", diaryList);

        // 4. diary.jsp로 결과 전달
        request.getRequestDispatcher("/views/myPage/diary.jsp").forward(request, response);
    }
}
