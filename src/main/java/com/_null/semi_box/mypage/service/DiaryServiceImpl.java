package com._null.semi_box.mypage.service;

import java.util.List;
import org.apache.ibatis.session.SqlSession;
import com._null.semi_box.mypage.model.dao.DiaryDao;
import com._null.semi_box.mypage.model.vo.DiaryEntry;
import static com._null.semi_box.boxopen.common.Template.getSqlSession;

public class DiaryServiceImpl implements DiaryService {

    private DiaryDao diaryDao = new DiaryDao();

    @Override
    public List<DiaryEntry> getDiaryList(String userPk) {
        SqlSession sqlSession = getSqlSession();
        List<DiaryEntry> list = diaryDao.selectDiaryList(sqlSession, userPk);
        sqlSession.close();
        return list;
    }
}
