<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="shortcut icon" href="../favicon.ico" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<script	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<script type="text/javascript">
$(document).ready(function(){
		$('#btnOk').click(function(){
			console.log('step1');
			var jqxhr = $.getJSON("nluProcess?&" + $('#myform').serialize(),  //nluProcess를 호출함. 
								function(data) {
									var emotion = data.emotion.document.emotion;
									console.log(emotion);
			  						var display='<center><table>';
			  						display+='<tr><td>분노</td><td>' + emotion.anger + '</td><td>' + barchar(emotion.anger) + '</td></tr>';
			  						display+='<tr><td>거부감</td><td>' + emotion.disgust + '</td><td>' + barchar(emotion.disgust) + '</td></tr>';
			  						display+='<tr><td>두려움</td><td>' + emotion.fear + '</td><td>' + barchar(emotion.fear) + '</td></tr>';
			  						display+='<tr><td>즐거움</td><td>' + emotion.joy + '</td><td>' + barchar(emotion.joy) + '</td></tr>';
			  						display+='<tr><td>슬픔</td><td>' + emotion.sadness + '</td><td>' + barchar(emotion.sadness) + '</td></tr>';
			  						display+='</table></center>';
			  						$('#display').html(display);
			  											  			
								})			  					
			  					.fail(function() {
			    					console.log( "error" );
			  					})
			  					.always(function() {
			    					console.log( "complete" );
			  					});
		});
});

function barchart(val){
	var w= parseInt(val * 100);
	/* return '<img src="<c:url value="/resources/img/point_red.png" />" height="7" width=" '+ w + '"/>'; */
	return '<img src="./resources/img/point_red.png" height="7" width=" '+ w + '"/>';
};
</script>
</head>
<body>
<form id="myform">
<center>
	<h1>Natural Language Understanding</h1>
	<a href="list">기존결과리스트</a><br/>
	<textarea id="statement" name="statement" rows="5" cols="40">
		It’s good to be home.Thank you.We’re on live TV here, I’ve got to move. You can tell that I’m a lame duck, because nobody is following instructions.Continue reading the main storyRELATED COVERAGE Obama, Saying Goodbye, Warns of Threats to National Unity JAN. 11, 2017 For Many on Chicago’s South Side, Obama’s Farewell Will Be Personal JAN. 9, 2017 Everybody have a seat. My fellow Americans, Michelle and I have been so touched by all the well-wishes that we’ve received over the past few weeks. But tonight it’s my turn to say thanks. Whether we have seen eye-to-eye or rarely agreed at all, my conversations with you, the American people — in living rooms and in schools; at farms and on factory floors; at diners and on distant military outposts — those conversations are what have kept me honest, and kept me inspired, and kept me going. And every day, I have learned from you. You made me a better president, and you made me a better man.
	</textarea>
	<br/>
	<button type="button" id="btnOk">클릭</button>
</center>
</form>
<div id="display"></div>
</body>
</html>