package com._null.semi_box.member.service;

import com._null.semi_box.member.model.vo.Member;

public interface MemberService {
	
	Member selectMember(Member m);    // 로그인 -- 데이터 조회(select)
	
	int insertMember(Member m);       // 회원가입 -- 데이터 추가(insert)

	int withdrawMember(String userId, String userPassword);       		// 회원탈퇴 -- 데이터 갱신(update)

	int updatePassword(String userId, String currentPwd, String password);  // 회원비밀번호변경 -- 데이터 갱신(update)
	
	int updateMember(String userId, String userNickName, String address);   // 회원정보수정 -- 데이터 갱신(update)

}
