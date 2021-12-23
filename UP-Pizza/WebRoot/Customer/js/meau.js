$(function(){
	$("#btn1").mouseover(function(){
		$("#btn1").css({"background":"white","color":"black"});
		
	}).mouseout(function(){
		$("#btn1").css({"background":"#cc3333","color":"white"});
	});
	
	
	/* $("#nav li span").mouseover(function() {
		$(this).css("background-color", "red");
		var index = $("#nav li span").index(this);
		$("#nav li:eq(" + index + ") span~p").show();
	}).mouseout(function() {
		$(this).css("background-color", "#7a6e6e");
		var index = $("#nav li span").index(this);
		$("#nav li:eq(" + index + ") span~p").hide();
	}) */
})