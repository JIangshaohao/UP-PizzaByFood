$(document).ready(function() {
	//初始化
	var docUrl = unescape(window.location.search);
	if (docUrl.indexOf("-") != -1) {
		var nodes = docUrl.substring(1).split("-");
		var img = nodes[0];
		var name = nodes[1];
		var price = nodes[2];
		var count = nodes[3];
		var $newtr = $("tbody tr").last().clone();
		// $newtr.empty();
		$newtr.find(".table-img").children("img").attr("src", img);
		$newtr.find(".col-sm-12 h5 font font").text(name);
		$newtr.find(".price").text(price);
		$newtr.find(".form-control").val(count);
		$newtr.appendTo($("tbody"));
	}


	// var $newtr=$("tbody tr").last().clone(true);
	// $newtr.find(".table-img").first("img").attr("src","imagess/icons/2.png");




	// if(window.opener!=null){
	// var name=window.opener.document.getElementById("uname").innerHTML;
	// var img=window.opener.document.getElementById("pridouc_img3").firstElementChild.src;
	// var price=window.opener.document.getElementById("font1").firstElementChild.firstElementChild.innerHTML;



	// $newtr.find(".price").text(price)
	// $newtr.appendTo($("tbody"));
	// }

	// }


	/* 购物车清空 */
	/*var nods = $("#det_showp .reg:last-child").clone(true);
	var fs=false;
	$(".btn1").click(function() {
		var flag = confirm("确认清空购物车吗?");
		if (flag) {
			
			var $tr=$("tbody tr");
			$tr.each(function(){
				var img=$(this).find(".table-img img").attr("src");
				var uname=$(this).find(".col-sm-12").find("font>font").first().text();
				var count=$(this).find(".form-control").val();
				var price=$(this).find(".xj").first().text();
				var $dtj=$("#det_showp .reg:last-child").clone(true);	
				if($dtj.length==0){
					$dtj=nods;
					fs=true;
				}
				
				$dtj.find(".imgf img").attr("src",img);
				$dtj.find(".imgf").next().first().text(uname);	
				$dtj.find(".imgf").next().next().next().find("span").text(count);	
				$dtj.find(".imgf").next().next().next().next().find("span").text(price);
				$dtj.insertAfter(".reg:last-child");
				if(fs){
					$dtj.insertAfter("#det_showp h2");
				}
			})
			$("tbody tr").remove();
		}
		$("#chex").prop("checked", false)
		
		if($("tbody tr").length<3){
			$("#from-gwc").css("overflow-y", "none");	
		}
		
		super_Aount();
	})*/




	/* 删除操作 */


	/*var det = $(".table_delete");
	var nod = $("#det_showp .reg:last-child").clone(true);
	var fg = false;
	det.live('click',function(){
		var f = confirm("是否删除!");
		if (f) {
			
			var $showp = $("#det_showp .reg:last").clone(true);
			
			if ($showp.length == 0) {
				$showp = nod;
				fg = true;
			}
			var index = $(this).parents("tr").index("tbody tr");
			$("tbody tr:eq(" + index + ")").remove();
			if($("tbody tr").length==0){
				$("#chex").prop("checked", false)
			}
		
			var $lodg = $(this).parents("tr");
			var img = $lodg.find(".table-img img").attr("src");
			var uame = $lodg.find(".clo-rex font>font").text();
			var count = $lodg.find(".text-center").val();
			var sumt = $lodg.find(".xj").text();
		
			$showp.find(".imgf img").attr("src", img);
			$showp.find(".imgf").next().first().text(uame);
		
			$showp.find(".imgf").next().next().next().find("span").text(count);
		
			$showp.find(".imgf").next().next().next().next().find("span").text(sumt);
			$showp.find(".imgf").next().first().css("color", "red");
			$showp.css("border-bottom", "3px solid #2A435D");
			$showp.insertAfter(".reg:last-child");
			if (fg = true) {
				$showp.insertAfter("#det_showp h2");
				fg = false;
			}
			if($("tbody tr").length<=3){
				$("#from-gwc").css("overflow-y", "none");	
			}
			super_Aount();
		} else {
		
			return;
		}
	})*/
	// det.each(function() {
	// 	$(this).click(function() {
			
	// 	})
	// })

	$(".reg").live('click',function(){
		$(".reg").toggle(function() {
			$(this).css("border", "0px orange solid")
			$(this).find(".chekds").prop("checked", true);
		}, function() {
			$(this).css("border", "1px #ffffff solid")
			$(this).find(".chekds").prop("checked", false);
		})
	})
	

	$(".contextmenu li:eq(0)").click(function() {
		var $info = $("#det_showp .reg");
		var $ck = $("#det_showp .chekds");

		if (!$ck.is(":checked")) {
			alert("请选择先选择一个物品")
		}


		$info.each(function() {
			if ($(this).find(".chekds").is(":checked")) {
				$(this).remove();
			}

		})
	})
	
	//撤回按钮
	var $tobr = $("tbody tr:eq(0)").clone(true);
	$(".contextmenu li:eq(2)").click(function() {
		var $ck = $("#det_showp .reg .chekds:checked");
		$ck.each(function() {
			if ($(this).is(":checked")) {
				var $trd = $("tbody tr:last-child").clone(true);
				if ($trd.length == 0) {
					$trd = $tobr;
				}
				var img = $(this).parents(".reg").find(".imgf img").attr("src");
				var uname = $(this).parents(".reg").find("a").text();
				var count = $(this).parents(".reg").find(".imgf").next().next().next().find("span").text();
				var xj =parseFloat( $(this).parents(".reg").find(".imgf").next().next().next().next().find("span").text());
				
				if(count>1){
					$trd.find(".butnj").attr("disabled",false).css({
						"background": "#2F435E",
						"color": "#ffffff"
					});
					
				}
				else if(count==1){
					$trd.find(".butnj").attr("disabled",true).css({
						"background": "rgb(240, 240, 240)",
						"color": "rgb(0, 0, 0)"
					});
					
					    
				}
				$trd.find(".price").text(xj/count)
				$trd.find(".table-img img").attr("src", img);
				$trd.find(".col-sm-12 font>font").text(uname);
				$trd.find(".form-control").val(count);
				$trd.find(".xj font>font").text(xj);
				$trd.appendTo("tbody");
				$(this).parents(".reg").remove();
				
				if($("tbody tr").length>3){
					$("#from-gwc").css("overflow-y", "auto");	
				}
			}
		})
		
	})
	
	//全选
	
	
	$(".contextmenu li:eq(1)").toggle(function(){
		$(".chekds").parents(".reg").css("border","0px orange solid").find(".chekds").prop("checked",true);
	},function(){
		$(".chekds").parents(".reg").css("border","0px #ffffff solid").find(".chekds").prop("checked",false);
	})
	


	/* 鼠标悬停颜色 */
	$(".btnj").hover(function() {
		$(this).css("background", "#FFFCF1")
		$(this).find(".jss").css("color", "#000000")
	}, function() {
		$(this).css("background", "")
		$(this).css("color", "red")
	});








	$(".form-control").click(function() {



	})



	$("#boke-a span").hover(function() {
			$(this).css("color", "#CC3333");
		},
		function() {

			$(this).css("color", "#ffffff");
		}
	);

	$(".btn-t-right a").hover(function() {
		$(this).css("background", "#cc3333");
		$(this).css("color", "#ffffff");
	}, function() {
		$(this).css("background", "#fffcf1");
		$(this).css("color", "");
	});

	$("#btn1").hover(function() {
		$(this).css("background", "#000000");
		$(this).css("color", "#ffffff");
	}, function() {
		$(this).css("background", "#cc3333");
		$(this).css("color", "");
	});



	$(".btn0").hover(function() {

		$(this).css("background", "#fffcf1");
		$(this).css("color", "#cc3333");
	}, function() {
		$(this).css("background", "");
		$(this).css("color", "");
	})


	$("#fasfa-angle-down li>a").css("color", "#ffffff")
	$("#fasfa-angle-down li>a").css("font-weight", "bold")

	$(".fasfa-angle-down").hover(function() {
			var index = $(".fasfa-angle-down").index(this);
			$(".fasfa-angle-down:eq(" + index + ") a").css("color", "#CC3333");
		},
		function() {
			var index = $(".fasfa-angle-down").index(this);
			$(".fasfa-angle-down:eq(" + index + ") a").css("color", "#ffffff")
		}
	);

	$(".subment2").hover(function() {

			$(this).css("color", "#CC3333");
		},
		function() {

			$(this).css("color", "#ffffff");
		}
	);

	$(".subment1").hover(function() {

			$(this).css("color", "#CC3333");
		},
		function() {

			$(this).css("color", "#ffffff");
		}
	);


	$(".subment").hover(function() {

			$(this).css("color", "#CC3333");
		},
		function() {

			$(this).css("color", "#ffffff");
		}
	);

	/*
	加
	*/
   $(".butny").live('click',function(){
	   	var index = $(this).parents("tr").index("tbody tr");
	   	var input = parseInt($("tbody tr:eq(" + index + ") .form-control").val()) + 1;
	   	var price = parseFloat($("tbody tr:eq(" + index + ") .price").text());
	   	var xj = parseFloat($("tbody tr:eq(" + index + ") .xj").first().text());
	   	$("tbody tr:eq(" + index + ") .form-control").val(input);
	   	$("tbody tr:eq(" + index + ") .xj").first().text((input * price).toFixed(2));
	   	var btn = $(".butnj");
	   
	   	btn.each(function() {
	   		var index = $(this).parents("tr").index("tbody tr");
	   		var input = parseInt($("tbody tr:eq(" + index + ") .form-control").val());
	   		if (input != 1) {
	   			$(this).attr("disabled", false).css({
	   				"background": "#2F435E",
	   				"color": "#ffffff"
	   			});
	   		}
	   
	   	})
	   	super_Aount();
   })
	

	/* 减 */
	$(".butnj").live('click',function(){
		var index = $(this).parents("tr").index("tbody tr");
		var price = parseFloat($("tbody tr:eq(" + index + ") .price").text());
		var input = parseInt($("tbody tr:eq(" + index + ") .form-control").val());
		var count = input - 1;
		var xj = parseFloat($("tbody tr:eq(" + index + ") .xj").first().text());
		if (input > 1) {
			$("tbody tr:eq(" + index + ") .form-control").val(count);
			$("tbody tr:eq(" + index + ") .xj").first().text((count * price).toFixed(2));
		}
		var btn = $(".butnj");
	
		btn.each(function() {
			var index = $(this).parents("tr").index("tbody tr");
			var input = parseInt($("tbody tr:eq(" + index + ") .form-control").val());
			if (input == 1) {
				$(this).attr("disabled", true).css({
					"background": "#f0f0f0",
					"color": "#000000"
				});
			}
	
		})
	
	
		super_Aount();
	})
	

	/* 计算总价的方法 */
	function super_Aount() {
		var sum = 0;
		var $chk = $("tbody tr .chebox:checked");
		var $chks = $("tbody tr .chebox");
		$chks.each(function() {
			if ($(this).is(":checked")) {
				sum += parseFloat($(this).parents("tr").find(".xj").first().text());
				$(".akak").first().find("span").text(sum.toFixed(2));
				$(".akak1").first().find("span").text(sum.toFixed(2));
			} else {

			}

		});

		if ($chk.length <= 0) {
			$(".akak").first().find("span").text("0");
			$(".akak1").first().find("span").text("0");
		}

	}

	function change() {
		var $chks = $("tbody tr .chebox:checked");
		$chks.each(function() {
			var index = $(this).parents("tr").index("tbody tr");
			var price = parseFloat($("tbody tr:eq(" + index + ") .price").text());
			var input = parseInt($("tbody tr:eq(" + index + ") .form-control").val());
			var xj = parseFloat($("tbody tr:eq(" + index + ") .xj").first().text());
			var sump = price * count;
			$("tbody tr:eq(" + index + ") .xj").first().text(sump.toFixed(2));
		})

	}


	/* 全选 */
	$("#chex").click(function() {
		if ($(this).is(":checked")) {
			$("input[class='chebox']").prop("checked", this.checked);

		} else {
			$("input[class='chebox']").prop("checked", false);
			$(".akak").first().find("span").text(0);
			$(".akak1").first().find("span").text(0);
		}
		super_Aount();

	});
	/* 单选 */
	$("input[class='chebox']").click(function() {
		var sum = 0;
		var arr = $(".chebox").length;
		var arr1 = $(".chebox:checked").length;
		if (arr == arr1) {
			$("#chex").prop("checked", true);
		} else {
			$("#chex").prop("checked", false);
		}

		super_Aount();
	});
	var f = false;
	var money;
	/* 结算动画等效果 */
	$(".btnj").click(function() {
		var fids = new Array();
		money=$("#aaaaa").text();
		//alert("小计："+money);
/*		var mo=$("#aaaaa").text();
		alert(mo);*/
		$(".chebox:checked").each(function() {
			fids.push($(this).parents(".d-none.d-md-block.col-md-4").siblings(".yibg").val());
		});
		if (fids.length>0) {
			$(".loader-container").css("display", "block");
			setTimeout(function() {
				$(".loader-container").css("display", "none")
				/*window.open("/UP-Pizza/CustomerCartByMeauServlet?fids=" + fids+"&money="+money);*/
				location.replace("/UP-Pizza/CustomerCartByMeauServlet?fids=" + fids+"&money="+money);
			}, 1000);			
			//window.location.href("Customer/Meau.jsp?" + fids);			
		} else {
			//alert("请选择！");
			swal("亲！请选择商品再进行结算吧！", "", "error");
			
		}
		
		
		/*var sum = 0;
		var flag = false;
		var $chk = $("tbody tr .chebox:checked");
		money = $("#aaaaa").text();
		$chk.each(function() {
			if ($(this).is(":checked")) {
				$(".loader-container").css("display", "block");
				setTimeout(function() {
					$(".loader-container").css("display", "none")

				}, 1000);
				
				flag = true;
			} else {
				alert("!23")
			}
			if (flag) {
				$(this).parents("tbody>tr").remove();
				$(".akak").first().find("span").text(0);
				$(".akak1").first().find("span").text(0);
				$("#chex").prop("checked", false);
			}

		});*/
		/*if (f) {
			sty(money);
		}*/
	});

	/*function sty(s) {
		alert(123);
		var arr = money + "-" + money;
		setTimeout(function() {
			window.open("Customer/Meau.jsp?" + escape(arr));
		}, 1050);
	}*/
	
	function ak(){
		var xj = $(".text-center.xj");
		var index = 0;
		
		xj.each(function() {
			var count = $(".form-control:eq(" + index + ")").val();
			var price = $(".price:eq(" + index + ")").text();
			var zongjia = count * price;
			$(".text-center.xj:eq(" + index + ")>font>font").text(zongjia);
			//alert(zongjia);
			index = index + 1;
		});
		
		var tr = $("tbody tr");
		
		if (tr.length > 3) {
			$("#from-gwc").css("overflow-y", "auto");
		}
		
		
		
		
		super_Aount();
		
	}

	/* 页面加载的时候计算每个商品价格等 */
	$(function() {
		var xj = $(".text-center.xj");
		var index = 0;
		xj.each(function() {
			var count = $(".form-control:eq(" + index + ")").val();
			var price = $(".price:eq(" + index + ")").text();
			var zongjia = count * price;
			$(".text-center.xj:eq(" + index + ")>font>font").text(zongjia);
			index = index + 1;
		});

		var tr = $("tbody tr");

		if (tr.length > 3) {
			$("#from-gwc").css("overflow-y", "auto");
		}
		var btn = $(".butnj");

		btn.each(function() {
			var index = $(this).parents("tr").index("tbody tr");
			var input = parseInt($("tbody tr:eq(" + index + ") .form-control").val());
			if (input == 1) {
				$(this).attr("disabled", true).css({
					"background": "#f0f0f0",
					"color": "#000000"
				});
			}

		})

		super_Aount();

	});

	$(".form-control.text-center").change(function() {
		// change();

	})
	$(".btn2").toggle(function(){
		$("#det_showp").slideDown("normal",function(){
			$("#det_showp").css("overflow-y","auto");
		});
	},function(){
		$("#det_showp").slideUp();
	})
});
