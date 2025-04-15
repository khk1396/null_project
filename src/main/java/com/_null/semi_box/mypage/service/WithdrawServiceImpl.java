package com._null.semi_box.mypage.service;

import org.apache.ibatis.session.SqlSession;

public class WithdrawServiceImpl implements WithdrawService {

    // 비밀번호 확인
    @Override
    public boolean checkPassword(SqlSession sqlSession, int userPk, String currentPwd) {
        String storedPassword = sqlSession.selectOne("withdrawMapper.selectPasswordByPk", userPk);
        return currentPwd.equals(storedPassword);  // 비밀번호 확인
    }

    // PRODUCT 테이블에서 해당 사용자의 레코드 삭제
    public boolean deleteUserProducts(SqlSession sqlSession, int userPk) {
        int result = sqlSession.delete("withdrawMapper.deleteUserProducts", userPk);
        return result > 0;  // 삭제 성공 여부
    }

    // 회원 탈퇴
    @Override
    public boolean deleteMember(SqlSession sqlSession, int userPk) {
        // 1. 먼저 PRODUCT 테이블에서 해당 사용자의 레코드를 삭제
        boolean productDeleted = deleteUserProducts(sqlSession, userPk);
        
        // 2. 이후 MEMBER 테이블에서 사용자를 삭제
        if (productDeleted) {
            int result = sqlSession.delete("withdrawMapper.deleteMember", userPk);
            return result > 0;  // 삭제 성공 여부
        }

        return false;  // PRODUCT 삭제 실패 시 MEMBER도 삭제하지 않음
    }
}
