<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP</title>
</head>
<body>
	<div id="wrap">
		<h1>model1 로그인</h1>
		<form action="./loginCtrl.jsp" method="post">
			<fieldset>
				<legend>test 게시판</legend>
				<ul>
					<li>
						<label for="userid">ID</label>
						<input type="text" id="userid" name="userid"/>
					</li>
					<li>
						<label for="password">PASSWORD</label>
						<input type="password" id="password" name="password"/>
					</li>
				</ul>
			</fieldset>
			<p><button>확인</button></p>
		</form>
	</div>
</body>
</html>