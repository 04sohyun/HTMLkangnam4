<%@page import="java.util.Arrays"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- jsp : html영역에 자바코드를 입력하여 처리하는 프로그램 -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- 자바코드가 들어가는 부분 : scriptlet(스크립틀릿_ -->
<%
	request.setCharacterEncoding("utf-8");
	String id = request.getParameter("id");//문자열로 넘어온 파라미터를 얻기 
	String pwd = request.getParameter("pwd");//pwd라는 이름으로 전달된 문자열 파라미터 얻기
	//String hobby = request.getParameter("hobby");//hobby라는 이름으로 전달된 문자열 파라미터 얻기
	String[] hobbies = request.getParameterValues("hobby");
%>
<!-- 값 출력  -->
<%=id %><br>
<%=pwd %><br>
<%=Arrays.toString(hobbies) %><br>
</body>
</html>