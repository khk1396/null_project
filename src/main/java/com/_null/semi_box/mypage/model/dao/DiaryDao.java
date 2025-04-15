package com._null.semi_box.mypage.model.dao;

import java.util.List;
import org.apache.ibatis.session.SqlSession;
import com._null.semi_box.mypage.model.vo.DiaryEntry;

public class DiaryDao {
    public List<DiaryEntry> selectDiaryList(SqlSession sqlSession, int userPk) {  
        return sqlSession.selectList("diaryMapper.selectDiaryList", userPk);
    }
}