<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="<c:url value=""/>" />
<title>Insert title here</title>
<link rel="shortcut icon" href="/favicon.ico" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<script	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script type="text/javascript">

$(document).ready(function() {
    $(".clickable-row").click(function() {
        window.location = $(this).data("href");
    });
    

	$('#keyword').keypress(function(e){ 
		if (e.which === 13){
			if ($('#keyword').val()=='') {
					alert('please enter your keyword(s)');
			}
			else 
				$(location).attr('href','searchdata?keyword=' + $('#keyword').val());
		}
		
	});
    
    $("#search").click(function() {
		$(location).attr('href','searchData?keyword=' + $('#keyword').val());		 
    });
    
    
    $("#multidetail").click(function() {
    	let param="";
    	var i=0;
		$(".chkclass :checked").each(function(){
			param+=$(this).val() + ',';
			i++;
		});
		if (i<2) { 
			alert('Needs at least 2 emails for merging');
		}	else {
				$(location).attr('href','multidetail?param=' + param);
	    	}
    });
    
   /*  $("#multidetail").click(function() {
		let param="";
		$(".chkclass :checked").each(function(){
			param+=$(this).val() + ',';
		});
		console.log(param);
    	
    	$.ajax({
			url : "multidetail",
			type : "POST",
			data : 'param=' + param,
			success : function (data){
				console.log("parameter : " + param);
				console.log("data : " + data);
			}
    	});    			
    }); */
});


</script>
</head>

<body>
<div class="container">
	<div class="row">
	 	<div class="col-sm-2">
	 		<a href="./">
	 		<img src="./resources/img/title.png" class="img-rounded" style="width:100%">
	 		</a>
	 	</div>
	 	<div class="col-sm-10">
	 		<h2> A Bot Reading Emails </h2>
			<h4> Reading emails, analyzing personalities, retreiving insights for you. </h4>
	 	</div>
	</div>
		
	<table class="table table-hover">
	    <thead>	    		
		 <tr>
	    	<th></th>
	    	<th></th>
	    	<th>
		    	<select>		    	
		    	<c:forEach items="${sender}" var="sn">
						<option value="${sn}"> ${sn} </option>
				</c:forEach>
				</select>
			</th>			
			<th>
				<select>
				<c:forEach items="${emaildate}" var="date">
						<option value="${date}"> ${date} </option>
				</c:forEach>
				</select>
			</th>			
			<th></th>			
			<th></th>
			<th></th>
		</tr>
		<tr>
	    	<th></th>
	    	<th>NO</th>
			<th>SENDER</th>
			<th>DATE</th>
			<th>SUBJECT</th>
			<!-- <th>TEXT</th> -->
			<th>WORDS</th>
			<th>REMARK</th>
		</tr>
		</thead>		
		<tbody>
		
		 <c:forEach items="${list}" var="list">
		 <tr class="chkclass">
		 <%-- <tr class='clickable-row' data-href='detail?no=${list.no}'> --%>
			<td><input type="checkbox" id="chk" value="${list.no}"></td>
			<td>${list.no}</td>
			<td>${list.sender}</td>
			<td>${list.date}</td>
			<td>${list.subject}</td>
			<%-- <td><a href="detail?no=${vo.no}">${vo.text}</a></td> --%> 
			<td>${list.wordcount}</td>
			<td>${list.remark}</td>
		</tr>
		</c:forEach>
		</tbody>
	</table>
	<div class="row">
		<div class="col-sm-2"></div>
		<div class="col-sm-2">Sender, Subject, or Text for Search</div>
		<div class="col-sm-4"><input class="form-control" id="keyword" name="keyword" type="text" /></div>			
		<div class="col-sm-1"><button id="search" class="btn btn-default">SEARCH </button></div>
	</div>
	<br/><br/><br/>
	<div class="row">
		<div class="col-sm-9"></div>	
		<div class="col-sm-3">
			<button id="submit" type="button" class="btn btn-default" onclick="javascript:history.back()"/>BACK</button>
			<a href="./"><button type="button" id="home" class="btn btn-default"/>HOME</button></a>
			<button type="button" id="multidetail" class="btn btn-default"/>MERGE</button></a>
		</div>
	</div>
<div id="result"></div>

</body>
</html>