<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
	session.removeAttribute("USER_ID");
	session.removeAttribute("USER_PW");

	session.invalidate();
	
	response.sendRedirect("Login.jsp");
%>