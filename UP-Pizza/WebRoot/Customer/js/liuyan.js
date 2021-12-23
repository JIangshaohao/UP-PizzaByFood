$(function(){
	$("#btn1").mouseover(function(){
		$("#btn1").css({"background":"white","color":"black"});
		
	}).mouseout(function(){
		$("#btn1").css({"background":"#cc3333","color":"white"});
	});
	
$('.slide').hiSlide();
})