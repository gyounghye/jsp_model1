package com.study.jsp.ioc;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import com.study.jsp.dao.UserMapper;
import com.study.jsp.dao.UserMapperDAO;
import com.study.jsp.srv.UserService;
import com.study.jsp.srv.UserServiceImpl;

import myBatis.MyBatisFactory;

public enum Factory {

  INSTANCE;
  
  private SqlSessionFactory sqlSessionFactory = MyBatisFactory.getsSqlSessionFactory();
  private SqlSession sqlSession = sqlSessionFactory.openSession(true);
  
  private UserMapper userDao = new UserMapperDAO(sqlSession);
  
  private UserService userSrv = new UserServiceImpl(userDao);
    public UserService getUserSrv() {
      return userSrv;
    }
  
}
