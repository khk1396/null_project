package com._null.semi_box.sign.service;

import org.apache.ibatis.session.SqlSession;

import com._null.semi_box.member.model.dao.MemberDao;
import com._null.semi_box.member.model.vo.Member;
import com._null.semi_box.sign.template.Template;

public class MemberServiceImpl implements MemberService {
	private MemberDao mDao = new MemberDao();
	
	@Override
	public Member selectMember(Member m) {
		SqlSession sqlSession = Template.getSqlSession();
		Member loginUser = mDao.selectMember(sqlSession, m);
		sqlSession.close();
		return loginUser;
	}

	@Override
	public int insertMember(Member m) {
		SqlSession sqlSession = Template.getSqlSession();
		
		int result = mDao.insertMember(sqlSession, m);		
		if (result > 0) {
			sqlSession.commit();
		}
		sqlSession.close();
		
		return result;
	}

}
