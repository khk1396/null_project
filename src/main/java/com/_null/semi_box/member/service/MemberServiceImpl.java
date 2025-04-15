package com._null.semi_box.member.service;

import org.apache.ibatis.session.SqlSession;

import com._null.semi_box.member.model.dao.MemberDao;
import com._null.semi_box.member.model.vo.Member;
import com._null.semi_box.member.template.Template;

import java.util.HashMap;

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

	public int selectMemberById(String userId) {
		SqlSession sqlSession = Template.getSqlSession();
		
		int result = mDao.selectMemberById(sqlSession, userId);
		
		sqlSession.close();
		
		return result;
	}

	public int selectMemberByNickName(String userNickName) {
		SqlSession sqlSession = Template.getSqlSession();
		
		int result = mDao.selectMemberByNickName(sqlSession, userNickName);
		
		sqlSession.close();
		
		return result;
	}

	@Override
	public int withdrawMember(String userId, String userPassword) {
		SqlSession sqlSession = Template.getSqlSession();
		
		Member m = new Member();
		
		m.setUserId(userId);
		m.setUserPassword(userPassword);		
		
		int result = mDao.withdrawMember(sqlSession, m);
		
		if (result > 0) {
			sqlSession.commit();
		}		
		sqlSession.close();
		
		return result;		
	}

	@Override
	public int updatePassword(String userId, String currentPwd, String password) {
		SqlSession sqlSession = Template.getSqlSession();
		
		HashMap data = new HashMap();
		
		data.put("userId", userId);
		data.put("currentPwd", currentPwd);
		data.put("password", password);
		
		int result = mDao.updatePassword(sqlSession, data);
		if (result > 0) {
			sqlSession.commit();
		}		
		sqlSession.close();
		
		return result;
	}
	
	@Override
	public int updateMember(String userId, String userNickName, String address) {    // 회원정보수정 -- 데이터 갱신(update)		
		SqlSession sqlSession = Template.getSqlSession();
		
		HashMap data = new HashMap();
		data.put("userId", userId);
		data.put("userNickName", userNickName);
		data.put("address", address);
		
		int result = mDao.updateMember(sqlSession, data);
		if (result > 0) {
			sqlSession.commit();
		}		
		sqlSession.close();
		return result;
	}

	
	
	
}