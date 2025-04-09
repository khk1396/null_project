package com._null.semi_box.mypage.controller;

import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

import com._null.semi_box.mypage.model.vo.DiaryEntry;
import com._null.semi_box.mypage.service.DiaryService;
import com._null.semi_box.mypage.service.DiaryServiceImpl;

@WebServlet("/mypage/diary")
public class DiaryController extends HttpServlet {

    private DiaryService diaryService = new DiaryServiceImpl();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        // 로그인 세션 없이 'temp-user'로 강제 조회
        String userPk = "temp-user";

        List<DiaryEntry> diaryList = diaryService.getDiaryList(userPk);
        request.setAttribute("diaryList", diaryList);
        request.getRequestDispatcher("/views/myPage/diary.jsp").forward(request, response);
    }
}
