$(document).ready(function() {
	$("#fasfa-angle-down li>a").css("color", "#ffffff")
	$("#fasfa-angle-down li>a").css("font-weight", "bold")
	
	$(".fasfa-angle-down").hover(function() {
		var index=$(".fasfa-angle-down").index(this);
		$(".fasfa-angle-down:eq("+index+") a").css("color","#CC3333");
	}, 
		function() {
			var index=$(".fasfa-angle-down").index(this);
			$(".fasfa-angle-down:eq("+index+") a").css("color","#ffffff")
		}
	);
	
	
	
	
	$("#boke-a span").hover(function() {
			$(this).css("color", "#CC3333");
		},
		function() {
	
			$(this).css("color", "#ffffff");
		}
	);
	
	$(".subment2").hover(function() {
		
		$(this).css("color","#CC3333");
	}, 
		function() {
		
		$(this).css("color","#ffffff");
		}
	);
	
	$(".subment1").hover(function() {
		
		$(this).css("color","#CC3333");
	}, 
		function() {
		
		$(this).css("color","#ffffff");
		}
	);
	
	
	
	$(".subment").hover(function() {
		
		$(this).css("color","#CC3333");
	}, 
		function() {
		
		$(this).css("color","#ffffff");
		}
	);
	
	$("#bg-ulli ul>li").hover(function(){
		$(this).css("background","orange");
		$(this).first().css("color","#ffffff");
	},function(){
		$(this).css("background","");
		$(this).first().css("color","#cc3333");
	})
		
		
	
	
	
	
	
	$("#btn1").hover(function(){
		$(this).css({"background":"#131313","color":"#cc3333"});
		$(this).css("boder","1px solid red")
	
	},function(){
		$(this).css("background","");
		$(this).css("color","#ffffff")
	});
	
	$("#img-1").hover(function(){
		$(this).css({"overflow":"hidden"});
		$("#img-1 img").css({"display":"block","transition":"all 1s","transform":"scale(1.4)"});
		
	},function(){
		$("#img-1 img").removeAttr("style");
	});
	
	$("#img-2-a1 span").mouseover(function(){
		$(this).css("color","#cc3333");
	});
	$("#img-2-a1 span").mouseout(function(){
		$(this).css("color","");
	});
	
	$(".spandars").hover(function(){
		$(this).css("color","#cc3333");
	},function(){
		$(this).css("color","");
	});
	
	$("#a #img-btn").hover(function(){
		$(this).css("background","#ffffff")
		$(this).css("color","#2A435D")
	},function(){
		$(this).css("background","");
		$(this).css("color","#ffffff")
	});
	var time;
	$("#blog-ig2").hover(function(){
		$("#rglt").fadeIn(300);
		clearInterval(time)
	},function(){
		$("#rglt").fadeOut(300);
		
		 var i=0;
		  time=setInterval(function(){
		 	var img=["blog1.jpg","blog2.jpg","blog3.jpg"];
		 	$("#leftrgt").attr("src","imagess/blog/"+img[i]+"");
		 	i++;
		 	if(i>2){
		 		i=0;
		 	}
		 	if(i<0){
		 		i=2;
		 	}
		 
		 	
		 	
		 	
		 
		 },3000)
	});
	
	$("#leftrgt").attr("src","imagess/blog/blog2.jpg")
	var index=0;
	$("#ig1-left").click(function(){
		
		index--;
		
		if(index<0){
			index=0;
			
		}
		var img=["blog1.jpg","blog2.jpg","blog3.jpg"];
		$("#leftrgt").attr("src","imagess/blog/"+img[index]+"");
		
		
		
		
	});
	$("#ig1-right").click(function(){
		index++;
		if(index>2){
			index=2;
			
		}
		var img=["blog1.jpg","blog2.jpg","blog3.jpg"];
		$("#leftrgt").attr("src","imagess/blog/"+img[index]+"");

	});
	
	
	var i=0;
	 time=setInterval(function(){
		var img=["blog1.jpg","blog2.jpg","blog3.jpg"];
		$("#leftrgt").attr("src","imagess/blog/"+img[i]+"");
		i++;
		if(i>2){
			i=0;
		}
		if(i<0){
			i=2;
		}

	},3000)
	
	
	$("#btnsub").hover(function(){
		$(this).css("background","#cc3333");
		$(this).css("color","#ffffff")
	},function(){
		$(this).css("background","")
		$(this).css("color","#cc3333")
	})
	
	
	
	
	
	
	
});
