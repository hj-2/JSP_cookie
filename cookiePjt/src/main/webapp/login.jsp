<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@page import="java.io.PrintStream"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

	<%
		Cookie[] cookies = request.getCookies();
		
		if(cookies != null) {
			for(Cookie c : cookies){
				if(c.getName().equals("memberId")) {
					response.sendRedirect("loginOK.jsp");
				}
			}
		}
	%>
	
	<form action = "loginCon" method = "post">
		ID : <input type="text" name ="mID"><br>
		PW : <input type="password" name ="mPW"><br>
		<input type= "submit" value="login">
	</form>
</body>
</html>