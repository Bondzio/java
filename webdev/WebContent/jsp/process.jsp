<%@page import="java.io.IOException"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
 <%
 	String name = request.getParameter("name");
 	int age = Integer.parseInt(request.getParameter("age"));
 %>
 <%--// 웹에서 전달되는 방식은 무조건 문자열이다. 숫자타입으로 넘어오지 않는다. --%> 
 <%!
 	public String commentAge(int age) throws IOException { 		
	 	switch (age/10) {
			case 0:
			case 1: return ("묘령");
			case 2: return ("약관");
			case 3: return ("이립");
			case 4: return ("불혹");
			case 5: return ("지천명"); 
			case 6: return ("이순");
			case 7: return ("종심");
			default : return("장수하십시오");
 		}	 	
 	}
 %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>그래, 난 <%=age %> 세 <%=name %> 포기를 모르는 남자지. <br/><br/>
<br/><br/>
당신의 나이는 <%=age %> (<%=commentAge(age)%>) 
<%-- <%
	switch ((int)(age/10)) {
		case 0:
		case 1: 
		case 2: out.print("묘령"); break;
		case 3: out.print("이립"); break;
		case 4: out.print("불혹"); break;
		case 5: out.print("지천명"); break;
		case 6: out.print("이순"); break;
		case 7: out.print("종심"); break;
		default : out.print("장수하십시오");
	}
%> --%>

	
<%-- <!--  out.println(name); 로 자바 코드를 짤 수 있지만, 간단하게 =만 적어도 된다. (expression) 
// out.print를 사용하면.  tag 가 굉장히 많아서 불편할 수 있다.
// 에러라고 나올 수 있으나,실제론 에러가 아닐 경우도 많다. 여러단계에 걸쳐서 진행되기 때문에 저장해서 다시 부르면 에러가 아닐 수도 있다.   
	 --%>
</body>
</html>