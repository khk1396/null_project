package com._null.semi_box.shop.model.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com._null.semi_box.shop.model.vo.SemiBoxVo;

public class SemiBoxDao {
    public List<SemiBoxVo> getBoxByType(SqlSession sqlSession, String boxType) {
    	
    	return sqlSession.selectList("SemiBoxMapper.selectBoxByType", boxType);
    }
}

