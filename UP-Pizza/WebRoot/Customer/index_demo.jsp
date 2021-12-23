<%@page import="UP_Pizza_End_Entity.Customer"%>
<%@page import="UP_Pizza_End_Service.UserService"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title></title>
<link rel="stylesheet" type="text/css" href="css/index.css" />

<link rel="stylesheet" href="css/style_Move.css" type="text/css" />
<script src="js/jquery-2.0.3.min.js" type="text/javascript"></script>
<script type="text/javascript">
	$(document).ready(function() {

		$(".side ul li").hover(function() {
			$(this).find(".sidebox").stop().animate({
				"width" : "124px"
			}, 200).css({
				"opacity" : "1",
				"filter" : "Alpha(opacity=100)",
				"background" : "#ae1c1c"
			})
		}, function() {
			$(this).find(".sidebox").stop().animate({
				"width" : "54px"
			}, 200).css({
				"opacity" : "0.8",
				"filter" : "Alpha(opacity=80)",
				"background" : "#000"
			})
		});

	});

	//回到顶部
	function goTop() {
		$('html,body').animate({
			'scrollTop' : 0
		}, 600);
	}
</script>

</head>
<body>
	<div class="side">
		<ul>
			<li><a href="Kefu.jsp"><div class="sidebox">
						<img src="meau_img/side_icon01.png">客服中心
					</div></a></li>
			<li><a href="/UP-Pizza/CustomerdgShowAllServlet"><div
						class="sidebox">
						<img src="meau_img/side_icon02.png">我的订单
					</div></a></li>
			<li><a href="/UP-Pizza/CustomerCartServlet"><div
						class="sidebox">
						<img src="meau_img/cart.png" width="54px" ; height="54px";>购物车
					</div></a></li>
			<li><a href="/UP-Pizza/CustomerChowBreakfastServlet"><div
						class="sidebox">
						<img src="meau_img/meau2.png" width="54px" ; height="54px";>菜单
					</div></a></li>
			<li style="border:none;"><a href="javascript:goTop();"
				class="sidetop"><img src="meau_img/side_icon05.png"></a></li>
		</ul>
	</div>

	<div id="all">
		<marquee style="position: relative;top: 190px;" class="marquee"
			scrollamount="15">
			<div id="myclock" style="color:red;font-size:25px;">看不见我</div>
		</marquee>
		<!-- 头部 -->
		<header class="mui-bar mui-bar-nav">
			<div id="header">
				<ul>
					<li id="span1"><span>Phone:888-8888-888</span>&nbsp;&nbsp;&nbsp;<span>Email:support@163.com</span></li>
					<li><img src="images/logo/logo3.png" id="img5"></li>
					<div id="fasfa-angle-down">
						<ul class="main-menu" style="position:relative;left:120px">
							<li class="fasfa-angle-down"><a
								href="/UP-Pizza/CustomerChowPictureServlet"><span id="one">菜单</span></a>
							</li>
							<li><a href="Boke.jsp">博客</a></li>
							<li class="fasfa-angle-down"><a
								href="/UP-Pizza/CustomerCartServlet
								"><span
									id="two"> 购物车 </span></a></li>
							<li class="fasfa-angle-down"><a href="liuyan.jsp"><span
									id="three"> 联系我们 </span> </a></li>
							<li><a href="Kefu.jsp">客服</a></li>
						</ul>
					</div>
				</ul>
				<img src="images/屏幕截图%202021-06-26%20154522.png" id="img6"> <img
					src="images/img/21.png" id="img7"> <img
					src="images/img/8.png" id="img8"> <img
					src="images/shapes/27.png" id="img9"> <img
					src="images/shapes/bbr.png" id="img10"> <a href="Login.jsp"><input
					type="button" name="" id="btn1" value="Login" /></a>
				<div id="show1">
					<ul class="submenu">
						<li><a href="index.jsp">主页-1</a></li>
						<li><a href="homepage2.jsp">主页-2</a></li>
					</ul>
				</div>
				<div id="show2">
					<ul class="submenu">
						<li><a href="blog.jsp">博客</a></li>
						<li><a href="blog-single.jsp">单一博客</a></li>
					</ul>
				</div>
				<div id="show3">
					<ul class="submenu">
						<li><a href="checkout.jsp">结算</a></li>
						<li><a href="single-dish.jsp">单一预览</a></li>
						<li><a href="404.jsp">副页</a></li>
						<li><a href="food-page.jsp">食品页</a></li>
						<li><a href="food-page2.jsp">食品页2</a></li>
						<li><a href="shopping-cart.jsp">购物车</a></li>
						<li><a href="single-food.jsp">商品详情</a></li>
						<li><a href="gallery.jsp">食物选择页</a></li>
					</ul>
				</div>
				<%
					UserService us = new UserService();
					Customer c = (Customer) request.getSession().getAttribute("cus");

					//Customer a = (Customer) request.getSession().getAttribute("cus");
					//System.out.println(a.getId());
				%>
				<div id="Clien_info">
					<span id="Login_info"> 您还未登录！请先<a href="Customer/Login.jsp"><span
							id=""> 登录！ </span></a>
					</span><span id="Clien_Name">${cus.userName}</span>
				</div>

			</div>
		</header>

		<div id="">
			<ul>
				<li><img src="images/shapes/25.png" id="img2"></li>
				<li><img src="images/shapes/26.png" id="img4"></li>
				<li><img src="images/img/htleaf.png" id="img11"></li>

			</ul>
		</div>

	</div>
	<div id="hourhide">
		<div id="div1" class="div1">
			<ul class="font1_5">
				<li id="font1">Online Booking</li>
				<li><i>
						<li id="font1_2"><span id="font2">Table&nbsp;</span><span
							id="font3">Booking</span></li>
				</i></li>
				<select name="" id="select_people">
					<option value="">4人</option>
					<option value="">3人</option>
					<option value="">2人</option>
					<option value="">1人</option>
				</select>
				<input type="text" name="" id="txt1" value="" placeholder="请输入取餐日期" />
				<select name="" id="select_time">请选择取餐时间
					<option value="">7~9.AM</option>
					<option value="">9~11.AM</option>
					<option value="">11~13.PM</option>
					<option value="">14~17.PM</option>
					<option value="">17~20.PM</option>
					<option value="">20~00.PM</option>
				</select>
				<input type="button" name="" id="btn2" value="确定" />
			</ul>
			<div id="showimg1">
				<img src="images/屏幕截图%202021-06-27%20133653.png" id="img12">
			</div>

			<div id="showfood">
				<ul class="font1_66">
					<li id="font1" class="font10">Food Items</li>
					<i>
						<li id="font1_2"><span id="font2" class="font11">Popular&nbsp;</span><span
							id="font3" class="font12">Menu</span></li>
					</i>
				</ul>
				<div class="div_show_food">
					<div id="showfoods">
						<img src="images/menu-item/pizza.png" id="img13"><span
							id="span_pizza">披萨</span>
					</div>
					<div id="showfoods2">
						<img src="images/menu-item/burger.png" id="img14"><span
							id="span_pizza2">汉堡</span>
					</div>
					<div id="showfoods3">
						<img src="images/menu-item/chicken.png" id="img15"><span
							id="span_pizza3">美味鸡</span>
					</div>
					<div id="showfoods4">
						<img src="./images/menu-item/drinks.png" id="img16"><span
							id="span_pizza4">饮品</span>
					</div>
				</div>
				<div id="show_food_img">
					<div id="food_img">
						<img src="images/屏幕截图%202021-06-27%20164156.png" id="img20">
						<img src="images/屏幕截图%202021-06-27%20164220.png" id="img21">
						<img src="images/屏幕截图%202021-06-27%20164232.png" id="img22">
						<img src="images/屏幕截图%202021-06-27%20164246.png" id="img23">
					</div>
					<input type="button" name="" id="btn3" value="购买" />

				</div>

			</div>

		</div>
		<div id="foot">
			<div id="fottt">
				<img src="images/屏幕截图%202021-06-27%20172904.png" id="img30"> <img
					src="images/屏幕截图%202021-06-27%20172917.png" id="img31"> <img
					src="images/屏幕截图%202021-06-27%20172931.png" id="img32"> <img
					src="images/屏幕截图%202021-06-27%20172941.png" id="img33"> <img
					src="images/屏幕截图%202021-06-27%20173000.png" id="img34"> <img
					src="images/屏幕截图%202021-06-27%20173012.png" id="img35">
			</div>

		</div>
	</div>

	<div class="footer">
		<img src="imgs/屏幕截图%202021-06-29%20112854.png" id="footer">
	</div>

	<div class="loader-container" style="background-color: #1B1B1D;">
		<img src="img/6.gif">
	</div>
	<script type="text/javascript">
		//初始化
		var docUrl = unescape(window.location.search);
		if (docUrl.indexOf("-") != -1) {
			var nodes = docUrl.substring(1).split("-");
			var img = nodes[0];
			document.getElementById("Clien_Name").innerHTML = img;

		}
	</script>
	<link rel="stylesheet" type="text/css"
		href="CSS_alert_JS/sweet-alert.css">
	<script src="CSS_alert_JS/sweet-alert.min.js"></script>
	<script type="text/javascript">
		//获取载入本页面的url
		//alert(${cus.userName});
		var urlp = document.referrer;
		if (urlp == "") {
			//alert("您当前未登录！进入游客模式！");
			setTimeout(function() {
				swal("您当前未登录！进入游客模式！", "", "error");
			}, 100);
			document.getElementById("Clien_Name").innerHTML = "";

		} else {
			var a = document.getElementById("Clien_Name").innerHTML;
			document.getElementById("Login_info").innerHTML = "您好!";
			//document.getElementById("Clien_Name").innerHTML = ${cus.userName};
		}
		//使用setTime()等待~秒
	</script>
	<script type="text/javascript">
		function loader() {
			document.querySelector('.loader-container').classList
					.add('fade-out');
		}

		function fadeOut() {
			setInterval(loader, 5000);
		}

		window.onload = fadeOut();
	</script>
	<script src="js/jquery-1.12.4.js" type="text/javascript"
		charset="utf-8"></script>
	<script src="js/index.js" type="text/javascript" charset="utf-8"></script>
	<script>
		$(function() {
			if ($("#myclock").text() == "看不见我") {
				$("#myclock").hide();
			}
		})
		var tms = setInterval(showAll, 1000);
		function showAll() {
			$.ajax({
				url : "/UP-Pizza/CustomerShowmasageServlet",
				type : "post",
				async : false,
				dataType : "text",
				success : callback
			});
			function callback(result) {
				if (result != "null") {
					var json = $.parseJSON(result);
					$("#myclock").text("公告: " + json.info);
					$("#myclock").show();
					$.ajax({
						url : "/UP-Pizza/CustomerWc_update_ydServlet",
						data : {
							"id" : json.id
						},
						type : "post",
						dataType : "text",
						success : up_call
					});
					function up_call(data) {
						if (data == "true") {
							setTimeout(function() {
								$("#myclock").hide();
							}, 130000);
						}
					}
				}
			}
		}
	</script>
</body>
</html>
