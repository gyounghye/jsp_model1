<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 

<%
	String userid = request.getParameter("userid");
	String password = request.getParameter("password");
	
	Map<String, String> loginInfo = new HashMap<String, String>();
	loginInfo.put("userid", userid);
	loginInfo.put("password", password);
	
	UserService userSrv = Facto
%>