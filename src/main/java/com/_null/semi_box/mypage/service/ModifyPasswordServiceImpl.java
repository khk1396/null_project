package com._null.semi_box.mypage.service;

import org.apache.ibatis.session.SqlSession;

import com._null.semi_box.mypage.model.dao.ModifyPasswordDao;
import com._null.semi_box.mypage.model.vo.ModifyPassword;
import com._null.semi_box.member.template.Template;

public class ModifyPasswordServiceImpl implements ModifyPasswordService {
    private ModifyPasswordDao dao = new ModifyPasswordDao();

    @Override
    public boolean checkCurrentPassword(int userPk, String currentPwd) {
        SqlSession sqlSession = Template.getSqlSession();
        String dbPassword = dao.selectCurrentPassword(sqlSession, userPk);
        sqlSession.close();
        
        return currentPwd.equals(dbPassword);
    }

    @Override
    public boolean updatePassword(ModifyPassword modifyPassword) {
        SqlSession sqlSession = Template.getSqlSession();
        int result = dao.updatePassword(sqlSession, modifyPassword);
        sqlSession.close();
        return result > 0;
    }
}
