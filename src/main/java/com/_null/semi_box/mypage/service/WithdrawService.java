package com._null.semi_box.mypage.service;

import org.apache.ibatis.session.SqlSession;

public interface WithdrawService {
    boolean checkPassword(SqlSession sqlSession, int userPk, String currentPwd);  // 비밀번호 확인
    boolean deleteMember(SqlSession sqlSession, int userPk);  // 회원 삭제
}
