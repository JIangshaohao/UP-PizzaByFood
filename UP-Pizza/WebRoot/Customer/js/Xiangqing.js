$(document).ready(function() {


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
	
	$("#boke-a span").hover(function() {
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
	$(".single-dishes").hover(function() {
		$(this).css("border-left", "3px solid orange")
		$(this).css("border-top", "3px solid orange")

	}, function() {
		$(this).css("border", "1px solid #e6e6e6")
	})

	$("#nuber").change(function() {
		if ($(this).val() < 1) {
			$(this).val(1);

		};
	});

	$(".pridoucimg").hover(function() {
		$(this).parent().css("background", "#cc3333");


	}, function() {
		// $(this).parent().css("background","");
		$(".pridoucimg").not(this).parent().css("background", "#ffffff");

	});

	$(".pridoucimg img").hover(function() {
		var arr = ["gallery/1.png", "bg/delivery-img.png", "img/br1.png"];
		var index = $(".pridoucimg img").index(this);
		$("#pridouc_img img").attr("src", "imagess/" + arr[index]);
	}, function() {

	});


	setInterval(function() {
		var arr = [1, 3, 5, 7];
		var rd = Math.floor(Math.random() * arr.length);
		var a = parseInt($("#xh span").text());
		$("#xh span").text(a + arr[rd])

	}, 3000);

	$("#size").change(function() {
		var index = $(this).find("option").index($(this).find("option:checked"));
		if (index == 0) {
			$("#font1 span").text("10");
			$("#p_i1").html("较小的补充晚上称为空海祝福肉第四称为移动位置四分之一排骨<br>配上您选择的侧拉猪肉，啤酒炖胸肉。");
			$("#font2 span").text("100");
		} else if (index == 1) {
			$("#font1 span").text("50");
			$("#p_i1").html("适中的补充称为晚上熬夜的必备食物配上香烟和82年的拉菲<br>配上您选择的侧拉猪肉，啤酒炖胸肉。");
			$("#xh span").text(8000);
			$("#font2 span").text("500");
			$("#uname").text("炸鸡");
		} else {
			$("#font1 span").text("90");
			$("#p_i1").html("极大的补充能量 <br>。");
			$("#xh span").text(1200);
			$("#font2 span").text("800");
			$("#uname").text("汉堡");
		}


	})

	$("#nuber").change(function() {
		$(this).blur(checksub)

	});



	function checksub() {
		$("#spen").text("");
		if ($("#nuber").val() > 100) {
			$("#spen").text("最大购买量100");
			$("#nuber").val(100);
			return false;
		}
		if (isNaN($("#nuber").val()) == true) {
			$("#spen").text("输入的不是数字");
			return false;
			$("#nuber").val(1);
		}

		if ($("#nuber").val() == "") {
			$("#spen").text("不能输入空值");

			$("#nuber").val(1);
			return false;
		};


		return true;
	}

	function getImg() {

		var imgSrc = '';
		$("#pridouc_row1  .bk").each(function() {
			if ($(this).attr("style") == "background: rgb(204, 51, 51);") {
				imgSrc = $(this).find("img").attr("src");
			};
		});
		return imgSrc;
	}
	$("#submit").hover(function() {
		$(this).css("background", "orange");
		$(this).css("color", "#ffffff");
	}, function() {

		$(this).css("color", "#ffffff");
		$(this).css("background", "#cc3333");
	});

	var code; //商品信息
	var offset = $('#xfuig').offset();
	$("#submit").click(function(event) {
		if (checksub()) {
			var imgSrc = getImg();
			var uname = $("#uname").text();
			var price = $("#font1 span").text();
			var count = $("#nuber").val();
			if (imgSrc == "") {
				imgSrc = "imagess/img/br3.png";
			}
			code = imgSrc + "-" + uname + "-" + price + "-" + count;
			var imgbk = '';
			$("#pridouc_row1 .bk").each(function() {
				if ($(this).attr("style") == "background: rgb(204, 51, 51);") {
					imgbk = $(this).find(".pridoucimg").find("img").attr("src");
				}
			})
			if (imgbk == "") {
				imgbk = "imagess/img/br3.png";
			}
			flyer = $('<img class="u-flyer" width="100px" height="100px" src="' + imgbk + '" >'); //抛物体

			flyer.fly({
				start: {
					left:400, //开始位置（必填）#fly元素会被设置成position: fixed
					top: 250 //开始位置（必填）
				},
				end: {
					left: offset.left, //结束位置（必填）
					top: offset.top, //结束位置（必填）
					width: 0,
					height: 0
				},


			});

			/*alert("加入购物车成功!");*/
		};
	})


	$("#xfuig").click(function() {

		window.open("/UP-Pizza/CustomerCartServlet?fid"+$(".fidval").val());
	});


	$("#btn1").hover(function() {
		$(this).css("background", "#000000");
		$(this).css("color", "#ffffff");
	}, function() {
		$(this).css("background", "#cc3333");
		$(this).css("color", "");
	});

});
