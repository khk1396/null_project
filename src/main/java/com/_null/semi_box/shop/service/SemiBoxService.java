package com._null.semi_box.shop.service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com._null.semi_box.common.SqlSessionTemplate;
import com._null.semi_box.shop.model.dao.SemiBoxDao;
import com._null.semi_box.shop.model.vo.SemiBoxVo;
  
public class SemiBoxService {

    public SemiBoxVo getBoxByType(String boxType) {
        SqlSession sqlSession = SqlSessionTemplate.getSqlSession();
        SemiBoxDao semiBoxDao = new SemiBoxDao();
        
        List<SemiBoxVo> semiBoxList = semiBoxDao.getBoxByType(boxType, sqlSession);
        
        sqlSession.close();
        return semiBoxList !=null && !semiBoxList.isEmpty() ? semiBoxList.get(0):null;   
    }
}

