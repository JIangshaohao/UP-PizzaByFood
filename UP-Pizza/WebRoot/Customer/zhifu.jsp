<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<title>支付输入密码</title>
<meta charset="utf-8" />
<meta name="viewport"
	content="initial-scale=1.0, width=device-width, user-scalable=no" />

<link rel="stylesheet" type="text/css" href="Customer/css/zhifu.css" />

<script src="Customer/js/jquery.min.js" type="text/javascript"
	charset="utf-8"></script>
<link rel="stylesheet" type="text/css"
	href="Customer/CSS_alert_JS/sweet-alert.css">
<script src="Customer/CSS_alert_JS/sweet-alert.min.js"></script>

</head>
<body style="background-color: #FFFAE8;">
	<div id="allinfo">


		<div class="header">
			<div class="all_w ">
				<div class="gofh">
					<a href="Customer/Meau.jsp"> <img
						src="Customer/meau_img/jt_03.jpg"></a>
				</div>
			</div>
		</div>
		<div class="wenx_xx">
			<div class="mz">请支付</div>
			<div class="zhifu_price" id="money">${qian}￥</div>
		</div>
	</div>
	<a href="javascript:void(0);" class="ljzf_but all_w" id="zhifu">立即支付</a>
	<!--浮动层-->
	<div class="ftc_wzsf" id="show_zhifu">
		<div class="srzfmm_box">
			<div class="qsrzfmm_bt clear_wl">
				<img src="Customer/meau_img/xx_03.jpg" class="tx close fl"> <img
					src="Customer/meau_img/jftc_03.png" class="tx fl"> <span
					class="fl">请输入支付密码</span>
			</div>
			<div class="zfmmxx_shop">
				<div class="mz">支付</div>
				<div class="zhifu_price" id="moneys">${qian}￥</div>
			</div>
			<ul class="mm_box">
				<li></li>
				<li></li>
				<li></li>
				<li></li>
				<li></li>
				<li></li>
			</ul>
		</div>
		<div class="numb_box">
			<div class="xiaq_tb">
				<img src="Customer/meau_img/jftc_14.jpg" height="10">
			</div>
			<ul class="nub_ggg">
				<li><a href="javascript:void(0);" class="zf_num">1</a></li>
				<li><a href="javascript:void(0);" class="zj_x zf_num">2</a></li>
				<li><a href="javascript:void(0);" class="zf_num">3</a></li>
				<li><a href="javascript:void(0);" class="zf_num">4</a></li>
				<li><a href="javascript:void(0);" class="zj_x zf_num">5</a></li>
				<li><a href="javascript:void(0);" class="zf_num">6</a></li>
				<li><a href="javascript:void(0);" class="zf_num">7</a></li>
				<li><a href="javascript:void(0);" class="zj_x zf_num">8</a></li>
				<li><a href="javascript:void(0);" class="zf_num">9</a></li>
				<li><a href="javascript:void(0);" class="zf_empty">清空</a></li>
				<li><a href="javascript:void(0);" class="zj_x zf_num">0</a></li>
				<li><a href="javascript:void(0);" class="zf_del">删除</a></li>
			</ul>
		</div>
		<div class="hbbj"></div>
	</div>
	</div>
	<img src="Customer/meau_img/zhifu.jpg" id="img_show"
		style="width: 500px;height: 700px;margin-left: 490px;position: relative;top: -180px;display: none;">
	<script type="text/javascript">
		//初始化
		var docUrl = unescape(window.location.search);
		if (docUrl.indexOf("-") != -1) {
			var nodes = docUrl.substring(1).split("-");
			var img = nodes[0];
			document.getElementById("money").innerHTML = img;
			document.getElementById("moneys").innerHTML = img;

		}
	</script>
	<script type="text/javascript">
		//获取载入本页面的url
		var urlp = document.referrer;
		if (urlp == "") {
			alert("当前页面不可直接访问！3秒后将跳转至结账界面！")
			setTimeout("location.href='Customer/Meau.jsp'", 3000);

		}
	</script>
	<script type="text/javascript">
		$(function() {
			//出现浮动层
			$(".ljzf_but").click(function() {
				$(".ftc_wzsf").show();
			});
			//关闭浮动
			$(".close").click(function() {
				$(".ftc_wzsf").hide();
				$(".mm_box li").removeClass("mmdd");
				$(".mm_box li").attr("data", "");
				i = 0;
			});
			//数字显示隐藏
			$(".xiaq_tb").click(function() {
				$(".numb_box").slideUp(500);
			});
			$(".mm_box").click(function() {
				$(".numb_box").slideDown(500);
			});
			//----
			var i = 0;
			$(".nub_ggg li .zf_num")
					.click(
							function() {

								if (i < 6) {
									$(".mm_box li").eq(i).addClass("mmdd");
									$(".mm_box li").eq(i).attr("data",
											$(this).text());
									i++
									if (i == 6) {
										setTimeout(
												function() {
													var data = "";
													$(".mm_box li")
															.each(
																	function() {
																		data += $(
																				this)
																				.attr(
																						"data");
																	});
													var adsd = 418913;
													if (data == adsd) {
														//alert("支付成功！3秒后将跳转至购物车！")
														swal(
																"支付成功！3秒后将跳转至订单界面！",
																"",
																"success");
														setTimeout(
																"location.href='/UP-Pizza/CustomerdgShowAllServlet'",
																3000);
													} else {
														//var a = alert("密码错误！");
														swal(
																"密码错误！",
																"",
																"error");
													}
													/* alert("支付成功" + data);
													window.open("zhifuchengg.html"); */

												}, 100);
									}
									;
								}
							});

			$(".nub_ggg li .zf_del").click(function() {
				if (i > 0) {
					i--
					$(".mm_box li").eq(i).removeClass("mmdd");
					$(".mm_box li").eq(i).attr("data", "");
				}
			});

			$(".nub_ggg li .zf_empty").click(function() {
				$(".mm_box li").removeClass("mmdd");
				$(".mm_box li").attr("data", "");
				i = 0;
			});

		});
	</script>
	</div>
</body>
</html>
