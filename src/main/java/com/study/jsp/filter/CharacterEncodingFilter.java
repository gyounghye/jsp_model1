package com.study.jsp.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;

@WebFilter("/*") 
public class CharacterEncodingFilter implements Filter{ 

  private String encoding = null;
  
  @Override 
  public void init(FilterConfig filterConfig) throws ServletException {
    encoding = "utf-8";    
  }

  @Override  
  public void doFilter(ServletRequest req, ServletResponse res, FilterChain chain) 
      throws IOException, ServletException {    
    
    req.setCharacterEncoding(encoding);     
    
    chain.doFilter(req, res);    
   
  }
}
