package com._null.semi_box.sign.model.dao;

import org.apache.ibatis.session.SqlSession;

import com._null.semi_box.sign.model.vo.Member;

public class MemberDao {
	public Member selectMember(SqlSession sqlSession, Member m) {
		return sqlSession.selectOne("memberMapper.selectMember", m);
	}

	public int insertMember(SqlSession sqlSession, Member m) {
		return sqlSession.insert("memberMapper.insertMember", m);
	}

}
