<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- header 영역 -->
<%!
    //%! - 변수나 메서드 선언 
	int pageCount = 0; //변수 선언

	//메서드 정의
	void addCount(){
		pageCount++;
	}
%>

<%
	addCount(); //메서드 호출
%>
<p>이 사이트 방문은 <%= pageCount %>번째 입니다.</p>
