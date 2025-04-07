package com._null.semi_box.sign.service;

import com._null.semi_box.sign.model.vo.Member;

public interface MemberService {
	
	Member selectMember(Member m);    // 로그인 -- 데이터 조회(select) 

	
	public int insertMember(Member m); // 회원가입 --> 데이터 추가(insert) */
	
	
	/* 회원 정보 수정 --> 데이터 수정(update) */
	int updateMember(Member m);
	
	/* 회원 탈퇴 --> 데이터 삭제(delete/update) */
	int deleteMember(String userId, String userPwd);
	
	/* 비밀번호 변경 */
	int updatePassword(String userId, String userPwd, String newPwd);
	
	/* 아이디 중복체크 */
	int countMemberByUserId(String userId);	
}
