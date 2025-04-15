package com._null.semi_box.common;

import java.io.IOException;

import java.io.InputStream;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class SqlSessionTemplate {
    private static SqlSessionFactory sqlSessionFactory;

    static {
        try {
            String resource = "mybatis-config.xml";	// 설정파일 위치
            InputStream inputStream = Resources.getResourceAsStream(resource);
            
            // sqlSessionFactory 초기화
            sqlSessionFactory = new SqlSessionFactoryBuilder().build(inputStream);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    // SqlSession 반환 메서드
    public static SqlSession getSqlSession() {
        return sqlSessionFactory.openSession(false); // 수동 커밋
    }
}



