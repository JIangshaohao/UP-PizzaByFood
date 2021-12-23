<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">

<head>
<!-- Required Meta Tags -->
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">

<!-- Page Title -->
<title>结算</title>

<!-- Favicon Icon -->
<link rel="shortcut icon" href="favicon.png">

<!-- CSS Files -->
<link rel="stylesheet"
	href="Customer/AllStyle/assets/css/animate.css">
<link rel="stylesheet"
	href="Customer/AllStyle/assets/css/animate.css">
<link rel="stylesheet"
	href="Customer/AllStyle/assets/css/bootstrap.min.css">
<link rel="stylesheet"
	href="Customer/AllStyle/assets/css/font-awsome-all.min.css">
<link rel="stylesheet"
	href="Customer/AllStyle/assets/css/magnific-popup.css">
<link rel="stylesheet" href="Customer/AllStyle/assets/css/slick.css">
<link rel="stylesheet"
	href="Customer/AllStyle/assets/css/jquery-ui.css">
<link rel="stylesheet" href="Customer/AllStyle/assets/css/style.css">

<link rel="stylesheet" type="text/css"
	href="Customer/CSS_alert_JS/sweet-alert.css">
<script src="Customer/CSS_alert_JS/sweet-alert.min.js"></script>

<!-- <link rel="stylesheet" href="Customer/css/sanji.css">
<link rel="stylesheet" href="Customer/css/infocon.css">
<script src="Customer/js/liandongAddress.js"></script> -->
</head>

<body>
	<!-- Preloader Starts -->
	<div class="preloader" id="preloader">
		<div class="preloader-inner">
			<div class="spinner">
				<div class="bounce1"></div>
				<div class="bounce2"></div>
				<div class="bounce3"></div>
			</div>
		</div>
	</div>
	<!-- header -->
	<header>
		<!-- header-top -->
		<!-- <div class="header-top">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12 col-md-12 col-12 d-flex flex-wrap justify-content-between">
                        <div class="contact-box">
                            <span> <a href="#"><i class="fas fa-phone-square-alt"></i> 123-58794069</a> </span>
                            <span> <a href="#"><i class="fas fa-envelope-open-text"></i> supportfoodkhan@.com</a></span>
                        </div>
                        <div class="social-box">
                            <span><a href="#"><i class="fab fa-facebook"></i></a></span>
                            <span><a href="#"><i class="fab fa-twitter"></i></a></span>
                            <span><a href="#"><i class="fab fa-linkedin-in"></i></a></span>
                            <span><a href="#"><i class="fab fa-instagram"></i></a></span>
                        </div>
                    </div>
                </div>
            </div>
        </div> -->
		<!-- header-bottom -->
		<div class="header-bottom margin-top-20">
			<div class="container position-relative">
				<div class="row d-flex align-items-center">
					<div class="col-lg-2 col-md-2 col-sm-2 col-3">
						<div class="logo">
							<a href="index.html"> <img
								src="Customer/AllStyle/assets/images/logo/logo.png"
								alt="logo"></a>
						</div>
					</div>
					<div class="col-lg-6 d-none d-lg-block">
						<nav id="mobile-menu">
							<ul class="main-menu">
								<li><a href="Customer/index.jsp">主页</a></li>
								<li><a href="/UP-Pizza/CustomerChowPictureServlet">菜单 <span><i
											class="fas fa-angle-down"></i></span></a>
									<ul class="submenu">
										<li><a href="/UP-Pizza/CustomerChowHanbaoServlet">美味汉堡</a></li>
										<li><a href="/UP-Pizza/CustomerChowSweetsServlet">回味甜点</a></li>
										<li><a href="/UP-Pizza/CustomerChowBreakfastServlet">健康早餐</a></li>
										<li><a href="/UP-Pizza/CustomerChowHanbaoServlet">美味披萨</a></li>
										<li><a href="/UP-Pizza/CustomerChowHanbaoServlet">可口冰淇淋</a></li>
										<li><a href="/UP-Pizza/CustomerChowHanbaoServlet">可口饮料</a></li>
									</ul></li>
								<li><a href="Customer/Boke.jsp">博客</a></li>
								<li><a href="Customer/FoodInfo.jsp">美食秘密</a></li>
								<li><a href="/UP-Pizza/getAlsoCusServlet02">客服 <span> <!-- <i class="fas fa-angle-down"></i> --></span></a>
									<!-- <ul class="submenu">
                                        <li><a href="blog.html">blog</a></li>
                                        <li><a href="blog-single.html">single blog</a></li>
                                    </ul> --></li>
								<li><a href="/UP-Pizza/CustomerdgShowAllServlet">我的订单 <span> <!-- <i class="fas fa-angle-down"></i> --></span></a>
									<!-- <ul class="submenu">
                                        <li><a href="checkout.html">checkout page</a></li>
                                        <li><a href="single-dish.html">single dish page</a></li>
                                        <li><a href="404.html">404 page</a></li>
                                        <li><a href="food-page.html">food page</a></li>
                                        <li><a href="food-page2.html">food page 2</a></li>
                                        <li><a href="shopping-cart.html">shopping cart page</a></li>
                                        <li><a href="single-food.html">single food page</a></li>
                                        <li><a href="gallery.html">gallery page</a></li>
                                    </ul> --></li>
								<li><a href="Customer/liuyan.jsp">联系我们</a></li>
							</ul>
						</nav>
					</div>
					<div class="col-lg-4 col-md-9 col-8">
						<div class="customer-area">
							<span> <a href="#"><i class="fas fa-heart"></i></a>
							</span> <span> <a href="#"><i class="fas fa-user"></i></a>
							</span> <span> <a href="shopping-cart.html"><i
									class="fas fa-shopping-basket"></i></a>
							</span> <!-- <a href="#" class="btn">登录</a> -->
						</div>
					</div>
				</div>
				<!-- mobile-menu -->
				<div class="mobile-menu"></div>
			</div>
		</div>
	</header>

	<!-- breadcrumb-area -->
	<div
		class="banner-area breadcrumb-area padding-top-120 padding-bottom-90">
		<div class="bread-shapes">
			<span class="b-shape-1"><img
				src="Customer/AllStyle/assets//images/img/5.png" alt=""></span> <span
				class="b-shape-2"><img
				src="Customer/AllStyle/assets//images/img/6.png" alt=""></span> <span
				class="b-shape-3"><img
				src="Customer/AllStyle/assets//images/img/7.png" alt=""></span> <span
				class="b-shape-4"><img
				src="Customer/AllStyle/assets//images/img/9.png" alt=""></span> <span
				class="b-shape-5"><img
				src="Customer/AllStyle/assets//images/shapes/18.png" alt=""></span>
			<span class="b-shape-6"><img
				src="Customer/AllStyle/assets//images/img/7.png" alt=""></span>
		</div>
		<div class="container padding-top-120">
			<div class="row justify-content-center">
				<nav aria-label="breadcrumb">
					<h2 class="page-title">结算</h2>
					<ol class="breadcrumb text-center">
						<!-- <li class="breadcrumb-item"><a href="Customer/index.jsp">主页/</a> <a
							href="/UP-Pizza/CustomerCartServlet">购物车</a></li>
						<li class="breadcrumb-item active" aria-current="page">我的订单</li> -->
					</ol>
				</nav>
			</div>
		</div>
	</div>

	<!-- checkout-area -->
	<div class="checkout-area padding-top-120 padding-bottom-120">
		<div class="cshapes">
			<span class="cs-1"><img
				src="Customer/AllStyle/assets//images/img/6.png" alt=""></span> <span
				class="cs-2"><img
				src="Customer/AllStyle/assets//images/shapes/12.png" alt=""></span>
			<span class="cs-3"><img
				src="Customer/AllStyle/assets//images/shapes/13.png" alt=""></span>
			<span class="cs-4"><img
				src="Customer/AllStyle/assets//images/shapes/14.png" alt=""></span>
			<span class="cs-5"><img
				src="Customer/AllStyle/assets//images/img/32.png" alt=""></span> <span
				class="cs-6"><img
				src="Customer/AllStyle/assets//images/shapes/16.png" alt=""></span>
		</div>
		<div class="container">
			<form method="post"
				action="/UP-Pizza/CustomerMeauServlet?uid=${cus.id }&qian=${mo}">
				<input type="hidden" name="did" value="">
				<div class="row">
					<div class="col-lg-6  wow fadeInUp">
						<div class="checkout-left">
							<h4>填写你的信息吧！美味马上就到！</h4>
							<input type="text" placeholder="姓名(必填)" value="${cus.userName}" autocomplete="off"
								required> <input type="email" placeholder="Email(必填)" value="${cus.email}"
								autocomplete="off" id="input_2" required> <input
								type="tel" placeholder="手机号码(必填)" id="input_5" value="${cus.tel}"
								autocomplete="off" required> <input type="text"
								placeholder="详细地址(门牌号)(必填)" id="input_7" value="${cus.address}" autocomplete="off"
								required> <input type="text" placeholder="口味特点(可选填!)"
								autocomplete="off"> <input type="text"
								placeholder="额外收餐人姓名(可选填!)" autocomplete="off"> <input
								type="email" placeholder="下单备注(可选填!)" autocomplete="off">
							<select name="select_info" id="select_info">
								<option value="1">选择您的外卖商家(默认美团)</option>
								<option value="1">美团</option>
								<option value="2">饿了么</option>
								<option value="3">百度</option>
							</select>
							<!-- <div id="bigOne">
								<div id="box">
									<span class="loadText text" id="loadText_text">请选择省/市/区</span>
									<span class="textProvince text" id="textProvince"></span> <span
										class="textCity text" id="textCity"></span> <span
										class="textArea text" id="textArea"></span> <span
										class="iconfont icon-arrow-down arrow"></span>
								</div>
								<input type="text" value="" id="totalConfirm" readonly="">
								<div id="content">
									<div class="chose-tab">
										<div id="province" class="chosePCA select">
											省份
											<ul class="province-list list">
											</ul>
										</div>
										<div id="city" class="chosePCA">
											城市
											<ul class="city-list list">
											</ul>
										</div>
										<div id="area" class="chosePCA">
											区县
											<ul class="area-list list">
											</ul>
										</div>
									</div>
								</div>
								<button class="reset btn" id="reset_btn">重置</button>
							</div>
							<button class="confirm btn" id="confirm_btn">确定</button> -->
						</div>
					</div>
					<div class="col-lg-6  wow fadeInUp ">
						<div class="checkout-right">
							<h4>您需支付：</h4>
							<div class="pricing-box">
								<ul class="p-head">
									<li class="uppercase">菜品</li>
									<li class="uppercase">小计</li>
								</ul>
								<div class="divider"></div>
								<c:forEach items="${scartlist}" var="a">
									<ul>
										<li>${a.f.name}</li>
										<li>${a.f.xprice*a.qty}￥</li>
									</ul>
								</c:forEach>


								<ul class="bg-white">
									<li class="uppercase">总计</li>
									<li class="total"><b id="totall">${mo}￥</b></li>
								</ul>
							</div>


							<button type="submit" class="btn" id="btn_pay">立即下单</button>
						</div>
					</div>
				</div>
			</form>
		</div>
	</div>
	<!-- footer area -->
	<footer class="padding-top-40 padding-bottom-40">
		<div class="fo-shapes">
			<span class="fs-1"><img
				src="Customer/AllStyle/assets/images/gallery/26.png" alt=""></span>
			<span class="fs-2 item-bounce"><img
				src="Customer/AllStyle/assets/images/shapes/25.png" alt=""></span>
			<span class="fs-3 item-bounce"><img
				src="Customer/AllStyle/assets/images/shapes/26.png" alt=""></span>
			<span class="fs-4 item-bounce"><img
				src="Customer/AllStyle/assets/images/shapes/27.png" alt=""></span>
			<span class="fs-5 item-animateTwo"><img
				src="Customer/AllStyle/assets/images/shapes/3.png" alt=""></span>
			<span class="fs-6"><img
				src="Customer/AllStyle/assets/images/shapes/22.png" alt=""></span>
			<span class="fs-7"><img
				src="Customer/AllStyle/assets/images/shapes/30.png" alt=""></span>
		</div>
		<div class="footer-top d-none d-md-block">
			<div class="container">
				<div
					class="row align-items-center justify-content-between padding-bottom-25">
					<div class="col-lg-3 col-md-3">
						<div class="f-logo">
							<a href="index.html"> <img
								src="Customer/AllStyle/assets/images/logo/logo.png" alt=""></a>
						</div>
					</div>
					<div class="col-lg-6 col-md-6">
						<div class="f-title">
							<h4>
								感觉饥饿？快点下单！<span> 选择你喜欢的食物</span>
							</h4>
						</div>
					</div>
					<div class="col-lg-2 col-md-3">
						<a href="shopping-cart.html" class="btn">立即下单</a>
					</div>
				</div>
				<hr>
			</div>
		</div>
		<div class="footer-bottom padding-top-22 padding-bottom-30">
			<div class="container">
				<div class="row">
					<div class="col-lg-3 col-md-6 col-12 margin-bottom-20">
						<div class="widget">
							<h6>地址</h6>
							<p>长沙麓谷校区</p>
							<a href="#" class="f-link">打开谷歌地图</a>
						</div>
					</div>
					<div class="col-lg-3 col-md-6 col-12 margin-bottom-20">
						<div class="widget">
							<h6>搜索</h6>
							<p>输入你想要获取的信息吧！</p>
							<a href="#" class="f-link">或者是留下电话</a>
						</div>
					</div>
					<div class="col-lg-3 col-md-6 col-12 margin-bottom-20">
						<div class="widget">
							<h6>营业时间</h6>
							<p>
								<span>周一至周五: 8am - 4pm</span> <br> <span>星期日: 9am -
									5pm</span>
							</p>

							<a href="#" class="f-link">留下联系方式</a>
						</div>
					</div>
					<div class="col-lg-3 col-md-6 col-12 margin-bottom-20">
						<div class="widget">
							<h6>提供新产品</h6>
							<div class="newsletter d-flex">
								<form action="#">
									<input type="email" placeholder="输入邮箱">
									<button type="submit">
										<i class="fas fa-paper-plane"></i>
									</button>
								</form>
							</div>
							<a href="#" class="f-link">告诉我们吧！</a>
						</div>
					</div>
				</div>
			</div>
		</div>

	</footer>

	<!-- Javascript Files -->
	<script src="Customer/AllStyle/assets/js/vendor/jquery-2.2.4.min.js"></script>
	<script src="Customer/AllStyle/assets/js/vendor/bootstrap.min.js"></script>
	<script
		src="Customer/AllStyle/assets/js/vendor/jquery.meanmenu.min.js"></script>
	<script
		src="Customer/AllStyle/assets/js/vendor/jquery.magnific-popup.min.js"></script>
	<script src="Customer/AllStyle/assets/js/vendor/slick.min.js"></script>
	<script src="Customer/AllStyle/assets/js/vendor/counterup.min.js"></script>
	<script src="Customer/AllStyle/assets/js/vendor/countdown.js"></script>
	<script src="Customer/AllStyle/assets/js/vendor/waypoints.min.js"></script>
	<script src="Customer/AllStyle/assets/js/vendor/isotope.pkgd.min.js"></script>
	<script src="Customer/AllStyle/assets/js/vendor/jquery-ui.js"></script>
	<script src="Customer/AllStyle/assets/js/vendor/easing.min.js"></script>
	<script src="Customer/AllStyle/assets/js/vendor/wow.min.js"></script>
	<script src="Customer/AllStyle/assets/js/main.js"></script>
</body>
<script type="text/javascript">
	//初始化
	var docUrl = unescape(window.location.search);
	if (docUrl.indexOf("-") != -1) {
		var nodes = docUrl.substring(1).split("-");
		var img = nodes[0];
		document.getElementById("totall").innerHTML = "$" + img;

	}
</script>
<script type="text/javascript">
	$("#input_2").blur(function() {
		checkEmail();
	});
	$("#input_7").blur(function() {
		checkAddress();
	});
	$("#input_5").blur(checkPhone);
	function checkPhone() {
		var myreg = /^(((13[0-9]{1})|(15[0-9]{1})|(18[0-9]{1})|(17[0-9]{1}))+\d{8})$/;
		var mo = $("#input_5").val(); //获取值
		if ($("#input_5").val() == "") {
			swal("提示!", "请输入有效的手机号码！", "warning");
			return false;
		} else if (myreg.test(mo) == false) {
			swal("提示!", "手机号码格式不正确！", "warning");
			return false;
		} else {
			return true;

		}
	};

	//验证邮箱
	function checkEmail() {
		if ($("#input_2").val() == "") {
			swal("提示!", "请填写邮箱！", "warning");
			return false;
		} else if ($("#input_2").val().indexOf("@") == -1
				|| $("#input_2").val().indexOf(".") == -1) {
			swal("邮箱格式不正确！", "至少要包含“@” 和 “.” 符号", "warning");
			return false;
		} else {

			return true;

		}

	};

	function checkAddress() {
		if ($("#input_7").val() == "") {
			/* var a = alert("请填写收餐详细地址！");
			if (a) {
				return false;
			} */
			swal("提示!", "请填写收餐详细地址！", "warning");
			return false;
		} else {
			return true;

		}
	};

	var strsvt = '';
	function nums() {
		var codeStrs = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789';
		// 用来生成随机整数
		function getRandoms(n, m) { // param: (Number, Number)
			n = Number(n);
			m = Number(m);
			return Math.floor(Math.random() * 10);

		}
		var str = '';

		function getCodes() {
			for (var i = 0; i < 9; i++) {
				var ran = getRandoms(0, 62);
				str += codeStrs.charAt(ran);
			}
			strsvt = str;
			$("input[name='did']").val(strsvt);
		}
		getCodes();

	}
	$(function() {
		nums();
	});
</script>

</html>