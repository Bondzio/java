var classmate =[
	{
		"no":"1",
		"name":"박병규",
		"say" :"화이팅~!"
	},
	{
		"no":"2",
		"name":"박종봉",
		"say" :"훗~!"
	},
	{
		"no":"3",
		"name":"조주희",
		"say" :"누나라고불러라"
	}
];

var items= [];
$.each(classmate, function(key, val){ 
	items.push(
			'<li id="' + key + '">' +
			val['no'] + ':' + 
			val['name'] + ':' + 
			val['say'] + '</li>'); 
});	
$('#rcvMsg').append(items);