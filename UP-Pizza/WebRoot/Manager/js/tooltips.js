var msgdsq;
// 错误时：提示调用方法
function show_err_msg(msg) {
	$('.msg_bg').html('');
	clearTimeout(msgdsq);
	$('body')
			.append(
					'<div class="sub_err" style="position:absolute;top:60px;left:0;width:500px;z-index:999999;"></div>');
	var errhtml = '<div style="padding:8px 0px;border:1px solid #11A274;width:50%;margin:0 auto;background-color:#fff;color:#000;border:2px #000 solid;text-align:center;font-size:16px;font-family:微软雅黑;"><img style="margin-right:10px;" src="Login_images/error.png">';
	var errhtmlfoot = '</div>';
	$('.msg_bg').height($(document).height());
	$('.sub_err').html(errhtml + msg + errhtmlfoot);
	var left = ($(document).width() - 500) / 2;
	$('.sub_err').css({
		'left' : left + 'px'
	});
	var scroll_height = $(document).scrollTop();
	$('.sub_err').animate({
		'top' : scroll_height + 120
	}, 300);
	msgdsq = setTimeout(function() {
		$('.sub_err').animate({
			'top' : scroll_height + 80
		}, 300);
		setTimeout(function() {
			$('.msg_bg').remove();
			$('.sub_err').remove();
		}, 300);
	}, "1000");
}

function callback(result) {

	if (result == "true") {
		window.location.href = "../Manager/UP-Index/index.jsp";
	} else {
		// window.location.href = "Login.jsp";
		/*
		 * $("#user_Span").html("X"); $("#user_Span").html("X");
		 */
		// var json=JSON.parse(result);
		show_err_msg("用户名或密码错误！");

	}

}
// 正确时：提示调用方法
function show_msg(msg, url) {
	$('.msg_bg').html('');
	clearTimeout(msgdsq);
	$('body')
			.append(
					'<div class="sub_err" style="position:absolute;top:60px;left:0;width:500px;z-index:999999;"></div>');
	var htmltop = '<div style="padding:8px 0px;border:1px solid #090;width:100%;margin:0 auto;background-color:#FFF2F8;color:#090;border:3px #090 solid;;text-align:center;font-size:16px;"><img style="margin-right:10px;" src="Login_images/loading.gif">';
	var htmlfoot = '</div>';
	$('.msg_bg').height($(document).height());
	var left = ($(document).width() - 500) / 2;
	$('.sub_err').css({
		'left' : left + 'px'
	});
	$('.sub_err').html(htmltop + msg + htmlfoot);
	var scroll_height = $(document).scrollTop();
	$('.sub_err').animate({
		'top' : scroll_height + 120
	}, 500);
	msgdsq = setTimeout(function() {
		$('.sub_err').animate({
			'top' : scroll_height + 80
		}, 500);
		setTimeout(function() {
			$('.msg_bg').remove();
			$('.sub_err').remove();
			if (url != '') {
				var name = $("#login_txtbx").val();
				var pwd = $("#pwd_icon").val();
				$.ajax({
					url : url, // 路径
					type : "post", // 请求方式
					data : {
						"login_txtbx" : name,
						"pwd_icon" : pwd
					},
					dataType : "text",// 响应数据类型
					success : callback
				// 回调函数

				})

			}
		}, 800);

	}, "1200");
}

// 显示加载动画
function show_loading() {
	var str = '<div class="msg_bg" style="background:#000;opacity:0.5;filter:alpha(opacity=50);z-index:99998;width:100%;position:absolute;left:0;top:0"></div>';
	str += '<div class="msg_bg" style="z-index:99999;width:100%;position:absolute;left:0;top:0;text-align:center;"><img src="Login_images/loading.gif" alt="" class="loading"></div>'
	$('body').append(str);
	var scroll_height = $(document).scrollTop();
	$('.msg_bg').height($(document).height());
	$('.loading').css('margin-top', scroll_height + 240);
}
