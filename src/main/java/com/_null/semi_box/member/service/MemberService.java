package com._null.semi_box.member.service;

import com._null.semi_box.member.model.vo.Member;

public interface MemberService {
	
	Member selectMember(Member m);    // 로그인 -- 데이터 조회(select)
	
	int insertMember(Member m);    // 회원가입 -- 데이터 추가(insert)
	
}
