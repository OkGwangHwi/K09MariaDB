<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<%@page import="model.BbsDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
//한글깨짐처리
request.setCharacterEncoding("UTF-8");

//web.xml에 저장된 컨텍스트 초기화 파라미터를 application객체를 통해 가져옴
String driver = application.getInitParameter("JDBCDriver");
String url = application.getInitParameter("ConnectionURL");

//DAO객체 생성 및 DB커넥션
BbsDAO dao = new BbsDAO(driver,url);

/*
파라미터를 저장할 용도로 생성한 Map컬렉션. 여러개의 파라미터가 있는경우
한꺼번에 저장한 후 DAO로 전달할것임.
*/
Map<String,Object> param = new HashMap<String,Object>();

//검색어 입력시 전송된 폼값을 받아 Map에 저장
String searchColumn = request.getParameter("searchColumn");
String searchWord = request.getParameter("searchWord");
if(searchWord != null){
	//검색어를 입력한 경우 Map에 값을 입력함.
	param.put("Column",searchColumn);
	param.put("Word",searchWord);
}

//board테이블에 입력된 전체 레코드 갯수를 카운트하여 반환받음
int totalRecordCount = dao.getTotalRecordCount(param);

//조건에 맞는 레코드를 select하여 결과셋을 List컬렉션으로 반환받음
%>










<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>타이틀</title>
</head>
<body>

</body>
</html>