package com._null.semi_box.member.model.dao;

import org.apache.ibatis.session.SqlSession;

import com._null.semi_box.member.model.vo.Member;

public class MemberDao {
	public Member selectMember(SqlSession sqlSession, Member m) {
		return sqlSession.selectOne("memberMapper.selectMember", m);
	}

	public int insertMember(SqlSession sqlSession, Member m) {
		return sqlSession.insert("memberMapper.insertMember", m);
	}

	public int selectMemberById(SqlSession sqlSession, String userId) {
		return sqlSession.selectOne("memberMapper.selectMemberById", userId);
	}

	public int selectMemberByNickName(SqlSession sqlSession, String userNickName) {
		return sqlSession.selectOne("memberMapper.selectMemberByNickName", userNickName);
	}

}
