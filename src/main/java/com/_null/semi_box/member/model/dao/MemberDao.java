package com._null.semi_box.member.model.dao;

import org.apache.ibatis.session.SqlSession;

import com._null.semi_box.member.model.vo.Member;

import java.util.HashMap;

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

	public int withdrawMember(SqlSession sqlSession, Member m) {
		return sqlSession.insert("memberMapper.withdrawMember", m);
	}
	
	public int updatePassword(SqlSession sqlSession, HashMap data) {
		return sqlSession.insert("memberMapper.updatePassword", data);
	}
	
	public int updateMember(SqlSession sqlSession, HashMap data) {
		return sqlSession.update("memberMapper.updateMember", data);
	}	
}
