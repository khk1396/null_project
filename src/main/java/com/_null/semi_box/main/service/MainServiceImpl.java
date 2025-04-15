package com._null.semi_box.main.service;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;

import com._null.semi_box.boxopen.common.Template;
import com._null.semi_box.main.model.dao.MainBoxDAO;
import com._null.semi_box.main.model.vo.MainBox;
import com._null.semi_box.main.model.vo.MainProduct;

public class MainServiceImpl implements MainService {
	private static MainBoxDAO mainBoxDAO = new MainBoxDAO();
	
	public ArrayList<MainBox> selectBoxList() {
		SqlSession sqlSession = Template.getSqlSession();
		return (ArrayList<MainBox>)mainBoxDAO.selectBoxList(sqlSession);
	}

	public ArrayList<MainProduct> selectProductList() {
		SqlSession sqlSession = Template.getSqlSession();
		return (ArrayList<MainProduct>)mainBoxDAO.selectProductList(sqlSession);
	}
}
