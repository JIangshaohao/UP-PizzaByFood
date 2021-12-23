$(function(){

	
	
	$('#header').mouseover(function(){
		$("#font1,#font2,#font3").fadeOut(1000);
	});
	$(".font1_5").mouseover(function(){
		$("#font1,#font2,#font3").fadeIn(1000);
	});
	$("#btn3").mouseover(function(){
		$("#btn3").css({"background":"#cc3333","color":"white"})
	}).mouseout(function(){
		$("#btn3").css({"background":"#F0F0F0","color":"#cc3333"})
	});
	
	$("#showfoods").mouseover(function(){
		$("#food_img #img21").hide();
		$("#food_img #img20").show();
		$("#food_img #img22").hide();
		$("#food_img #img23").hide();
		$("#showfoods").css({"background":"yellow","color":"white"})
	}).mouseout(function(){
		$("#showfoods").css({"background":"transparent","color":"black"})
		
	});
	$("#showfoods2").mouseover(function(){
		$("#food_img #img21").show();
		$("#food_img #img20").hide();
		$("#food_img #img22").hide();
		$("#food_img #img23").hide();
		$("#showfoods2").css({"background":"yellow","color":"white"})
	}).mouseout(function(){
		$("#showfoods2").css({"background":"transparent","color":"black"})
	});
	$("#showfoods3").mouseover(function(){
		$("#food_img #img21").hide();
		$("#food_img #img20").hide();
		$("#food_img #img22").show();
		$("#food_img #img23").hide();
		$("#showfoods3").css({"background":"yellow","color":"white"})
	}).mouseout(function(){
		$("#showfoods3").css({"background":"transparent","color":"black"})
	});
	$("#showfoods4").mouseover(function(){
		$("#food_img #img21").hide();
		$("#food_img #img20").hide();
		$("#food_img #img22").hide();
		$("#food_img #img23").show();
		$("#showfoods4").css({"background":"yellow","color":"white"})
	}).mouseout(function(){
		$("#showfoods4").css({"background":"transparent","color":"black"})
	});
	
	/* $("#one").mouseover(function(){
		$("#show1").css("display","block");
		
	}).mouseout(function(){
		$("#show1").css("display","none");
		$("#show2").css("display","none");
		$("#show3").css("display","none");
	});
	
	$("#two").mouseover(function(){
		$("#show2").css("display","block");
		
	}).mouseout(function(){
		$("#show1").css("display","none");
		$("#show2").css("display","none");
		$("#show3").css("display","none");
	});
	
	$("#three").mouseover(function(){
		$("#show3").css("display","block");
		
	}).mouseout(function(){
		$("#show1").css("display","none");
		$("#show2").css("display","none");
		$("#show3").css("display","none");
	}) */
	

})