<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.Map" %>
<%@ page import="java.util.HashMap" %>
<%@ page import="kr.co.bit.board.BoardVO" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%	
	BoardVO b = new BoardVO();
	b.setTitle("성공");
	
	BoardVO b2 = new BoardVO();
	b2.setTitle("실패");
	
	// 1. 자바빈즈클래스 + 콜렉션
	List<BoardVO> list = new ArrayList<>();
	list.add(b);
	list.add(b2);
	pageContext.setAttribute("boardList", list);
	
	// 2. 자바빈즈클래스 + 배열
	BoardVO[] blist = {b, b2};
	pageContext.setAttribute("blist", blist);
	
	// 3. map객체 + 콜렉션
	List<Map<String,String>> list_map = new ArrayList<>();
	
	Map<String, String> map = new HashMap<String,String>();
	map.put("title","성공");
	
	Map<String, String> map2 = new HashMap<String,String>();	
	map2.put("title","실패");
	
	list_map.add(map);
	list_map.add(map2);
	
	pageContext.setAttribute("mlist",list_map);
	
	// 4. map객체 + 배열
	Map[] maps = {map, map2};
	
	pageContext.setAttribute("mArray", maps);
	
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

	List 성공/실패? ${ boardList[0].title } <br/>  <!-- 성공 출력 -->
	Array 성공/실패? ${ blist[0].title } <br/>  <!-- 성공 출력 -->
	mapList 성공/실패? ${ mlist[0].title } <br/>  <!-- 성공 출력 -->
	mapArray 성공/실패? ${ mArray[0].title } <br/><br/>  <!-- 성공 출력 -->

	List 성공/실패? ${ boardList[1].title } <br/>  <!-- 성공 출력 -->
	Array 성공/실패? ${ blist[1].title } <br/>  <!-- 성공 출력 -->
	mapList 성공/실패? ${ mlist[1].title } <br/>  <!-- 성공 출력 -->
	mapArray 성공/실패? ${ mArray[1].title } <br/>  <!-- 성공 출력 -->
	
</body>
</html>