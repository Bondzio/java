<%@ page import="java.util.Calendar" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html><head><meta charset="UTF-8"><title> CALENDAR</title>
<script type="text/javascript">

function func_addmonth(mm){
	document.myform.addmonth.value=mm;	
	document.myform.submit();
}

</script>
<style type="text/css">

.week:nth-child(1) {color:red;}
.week:nth-child(7) {color:blue;}
.week:nth-child(6) {color:black;}

</style>

</head>
<body>
<form name="myform" method="get"> <!-- action="경로" 이 없으면 자기 자신이 불러오게 된다  --> 
<input type="hidden" name="addmonth" value="0"/>

<% 
	Calendar now = Calendar.getInstance(); 		
	int year 	=	now.get(Calendar.YEAR);
	int month 	=	now.get(Calendar.MONTH) +1; 
	int addmonth=0;	
					
	
	try {
		//년, 월의 파라미터가 전달될때 
		year = Integer.parseInt(request.getParameter("year"));
	 	month = Integer.parseInt(request.getParameter("month")) + Integer.parseInt(request.getParameter("addmonth"));	 	
	 	now.set(year, month-1, 1);
	 	year = now.get(Calendar.YEAR);
		month = now.get(Calendar.MONTH) +1 ; 
		
	} catch(Exception e) {
		now.set(year, month-1, 1);
		/* out.print(Calendar.YEAR +" "+ Calendar.MONTH +" " + Calendar.DATE+ " "); */
	}
		int lastDate	= now.getActualMaximum(Calendar.DATE);
		int week		= now.get(Calendar.DAY_OF_WEEK);	
		out.println(week);
%>

				
<caption>
<span onclick="func_addmonth(-12)" style="cursor:pointer;">◁</span>
<span onclick="func_addmonth(-1)" style="cursor:pointer;">◀</span>
<select name="year" onchange="document.myform.submit()"><%for (int i=year-5;i<=year+5;i++) {%> 
		<option <%=i==year ? " selected " : "" %> > <%=i%> </option><% 
	}%>
	</select> 년   

	<select name="month" onchange="document.myform.submit()"><%for (int i=1;i<=12;i++) {%> 
		<option <%=i==month ? " selected " : "" %> > <%=i%> </option><% 
	}%>
	</select>월
<span onclick="func_addmonth(1)" style="cursor:pointer;">▶</span>
<span onclick="func_addmonth(12)" style="cursor:pointer;">▷</span>
</caption>
<table style="width:200px;">
<tr>
	<td>일</td>
	<td>월</td>
	<td>화</td>
	<td>수</td>
	<td>목</td>
	<td>금</td>
	<td>토</td>
</tr>
<tr>
<%
 		for (int d=1;d<week; d++){
 			out.println("<td></td>");
 		}
		
 		for(int i=1; i<=lastDate; i++, week++)
 		{
 			out.println("<td class='week'>" + i + "</td>");
 			 			
 			/* if(week%7==1) out.println("<td style='color:rgb(255,0,0)'>" + i + "</td>");
 			else if(week%7==0) out.println("<td style='color:rgb(0,0,255)'>" + i + "</td>"); 
 			else out.println ("<td>" + i + "</td>"); */
 			 			
 			if (week%7==0) out.println("</tr><tr>");
		}	
%>
</tr>
</table>
</form>
</body>
</html>