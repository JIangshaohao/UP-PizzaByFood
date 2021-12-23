<%@page import="UP_Pizza_End_Entity.Customer"%>
<%@page import="UP_Pizza_End_Service.UserService"%>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
<!-- Required Meta Tags -->
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<!-- Page Title -->
<title>欢迎来到UP-Pizza</title>
<!-- Favicon Icon -->
<link rel="shortcut icon" href="favicon.png">
<!-- CSS Files -->
<link rel="stylesheet" href="AllStyle/assets/css/animate.css">
<link rel="stylesheet" href="AllStyle/assets/css/meanmenu.min.css">
<link rel="stylesheet" href="AllStyle/assets/css/bootstrap.min.css">
<link rel="stylesheet"
	href="AllStyle/assets/css/font-awsome-all.min.css">
<link rel="stylesheet" href="AllStyle/assets/css/magnific-popup.css">
<link rel="stylesheet" href="AllStyle/assets/css/slick.css">
<link rel="stylesheet" href="AllStyle/assets/css/jquery-ui.css">
<link rel="stylesheet" href="AllStyle/assets/css/style.css">

<link rel="stylesheet" type="text/css"
	href="CSS_alert_JS/sweet-alert.css">
<script src="CSS_alert_JS/sweet-alert.min.js"></script>
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
		<marquee style="position: relative;top: 190px;" class="marquee"
			scrollamount="15">
			<div id="myclock" style="color:red;font-size:25px;">看不见我</div>
		</marquee>
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
                            <span><a href="#"><i class="fab fa-twitter"></i></a></span>
                            <span><a href="#"><i class="fab fa-facebook-f"></i></a></span>
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
							<a href="index.jsp"> <img
								src="AllStyle/assets/images/logo/logo.png" alt="logo"></a>
						</div>
					</div>
					<div class="col-lg-6 d-none d-lg-block">
						<nav id="mobile-menu">
							<ul class="main-menu">
								<li><a href="/UP-Pizza/CustomerChowPictureServlet" target="_blank">菜单 <span><i
											class="fas fa-angle-down"></i></span></a>
									<ul class="submenu">
										<li><a href="/UP-Pizza/CustomerChowHanbaoServlet">美味汉堡</a></li>
										<li><a href="/UP-Pizza/CustomerChowSweetsServlet">回味甜点</a></li>
										<li><a href="/UP-Pizza/CustomerChowBreakfastServlet">健康早餐</a></li>
										<li><a href="/UP-Pizza/CustomerChowHanbaoServlet">美味披萨</a></li>
										<li><a href="/UP-Pizza/CustomerChowHanbaoServlet">可口冰淇淋</a></li>
										<li><a href="/UP-Pizza/CustomerChowHanbaoServlet">可口饮料</a></li>
									</ul></li>
								<li><a href="Boke.jsp">博客</a></li>
								<li><a href="FoodInfo.jsp">美食秘密</a></li>
								<li><a href="/UP-Pizza/getAlsoCusServlet02" target="_blank">客服 <span> <!-- <i class="fas fa-angle-down"></i> --></span></a>
									<!-- <ul class="submenu">
                                        <li><a href="blog.html">blog</a></li>
                                        <li><a href="blog-single.html">single blog</a></li>
                                    </ul> --></li>
								<li><a href="/UP-Pizza/CustomerdgShowAllServlet" target="_blank">我的订单 <span>
											<!-- <i class="fas fa-angle-down"></i> -->
									</span></a> <!-- <ul class="submenu">
                                        <li><a href="checkout.html">checkout page</a></li>
                                        <li><a href="single-dish.html">single dish page</a></li>
                                        <li><a href="404.html">404 page</a></li>
                                        <li><a href="food-page.html">food page</a></li>
                                        <li><a href="food-page2.html">food page 2</a></li>
                                        <li><a href="shopping-cart.html">shopping cart page</a></li>
                                        <li><a href="single-food.html">single food page</a></li>
                                        <li><a href="gallery.html">gallery page</a></li>
                                    </ul> --></li>
								<li><a href="liuyan.jsp" target="_blank">联系我们</a></li>
							</ul>
						</nav>
					</div>
					<%
						UserService us = new UserService();
						Customer c = (Customer) request.getSession().getAttribute("cus");
					%>
					<div class="col-lg-4 col-md-9 col-8">
						<div class="customer-area" style="position: relative;top: 50px">
							<span> <a href="#"><i class="fas fa-heart"></i></a>
							</span> <span> <a href="#"><i class="fas fa-user"></i></a>
							</span> <span> <a href="/UP-Pizza/CustomerCartServlet"><i
									class="fas fa-shopping-basket"></i></a>
							</span> <a href="Login.jsp" class="btn" id="loginbtn">登录</a> <span
								class="btn" style="position: relative;left: 50px;bottom: 50px">
								<Strong id="nihao">您好！</Strong><Strong id="Clien_Name">${cus.userName}</Strong>
							</span>


						</div>
					</div>
				</div>
				<!-- mobile-menu -->
				<div class="mobile-menu"></div>
			</div>
		</div>
	</header>

	<!-- banner-area -->
	<section class="banner-area padding-top-100 padding-bottom-150">
		<div class="banner-shapes">
			<span class="b-shape-1"><img
				src="AllStyle/assets/images/img/5.png" alt=""></span> <span
				class="b-shape-2"><img src="AllStyle/assets/images/img/6.png"
				alt=""></span> <span class="b-shape-3"><img
				src="AllStyle/assets/images/img/7.png" alt=""></span> <span
				class="b-shape-4"><img src="AllStyle/assets/images/img/9.png"
				alt=""></span> <span class="b-shape-5"><img
				src="AllStyle/assets/images/shapes/18.png" alt=""></span>
		</div>
		<div class="container padding-top-145">
			<div class="row justify-content-center align-items-center">
				<div class="col-md-12 col-lg-6 col-xl-6">
					<div class="banner-content">
						<h1>
							加入我们吧！ <span>--为了美食！</span>
						</h1>
						<!-- buyone-shape -->
						<div class="buyone-shape">
							<div class="banner-tag">
								<h5>点此购买我们的特色披萨哦！</h5>
							</div>
							<span class="banner-badge">免费</span>
						</div>
						<!-- pricing -->
						<div class="price">
							价格 : <span>￥10.50</span>
						</div>

						<!-- order-box -->
						<div class="order-box">
							<span class="order-img"><img
								src="AllStyle/assets/images/icons/1.png" alt=""></span>
							<div class="order-content">
								<p>联系电话</p>
								<span>123-59794069</span>
							</div>
							<a href="#" class="btn">立即下单</a>
						</div>
					</div>
				</div>
				<div class="d-none d-lg-block col-lg-6 col-xl-6">
					<div class="banner-img">
						<div class="pizza-shapes">
							<span class="p-shape-1"><img
								src="AllStyle/assets/images/img/2.png" alt=""></span> <span
								class="p-shape-2"><img
								src="AllStyle/assets/images/img/3.png" alt=""></span> <span
								class="p-shape-3"><img
								src="AllStyle/assets/images/img/4.png" alt=""></span> <span
								class="p-shape-4"><img
								src="AllStyle/assets/images/img/8.png" alt=""></span>
						</div>
						<img src="AllStyle/assets/images/img/1.png" alt="">
					</div>
				</div>
			</div>
		</div>
	</section>

	<!-- form-area -->
	<section class="form-area">
		<div class="container">
			<div class="form-box padding-top-110 padding-bottom-80">
				<div class="form-shapes">
					<span class="fs-1"><img
						src="AllStyle/assets/images/shapes/f-shape-1.png" alt=""></span> <span
						class="fs-2"><img
						src="AllStyle/assets/images/shapes/f-shape-2.png" alt=""></span> <span
						class="fs-3 item-animateOne"><img
						src="AllStyle/assets/images/shapes/f-shape-7.png" alt=""></span> <span
						class="fs-5"><img src="AllStyle/assets/images/shapes/4.png"
						alt=""></span> <span class="fs-6"><img
						src="AllStyle/assets/images/shapes/5.png" alt=""></span> <span
						class="fs-7 item-animateTwo"><img
						src="AllStyle/assets/images/shapes/7.png" alt=""></span> <span
						class="fs-8 item-animateOne"><img
						src="AllStyle/assets/images/shapes/9.png" alt=""></span>
				</div>
				<div
					class="common-title-area text-center padding-bottom-50 wow fadeInUp">
					<h3>在线购买</h3>
					<h2>
						填写 <span>信息</span>
					</h2>
				</div>
				<div class="row">
					<div class="col-lg-10 offset-lg-1 col-md-12">
						<div class="form-wraper padding-bottom-40">
							<form action="#">
								<select class="form-item2">
									<option value="">4 人</option>
									<option value="">3 人</option>
									<option value="">2 人</option>
									<option value="">1 人</option>
								</select> <input class="form-item2" type="date"> <select
									class="form-item2">
									<option value="">07:24 pm</option>
									<option value="">07:24 pm</option>
									<option value="">07:24 pm</option>
									<option value="">07:24 pm</option>
								</select>
								<button type="submit">提交</button>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>

	<!-- about us -->
	<section class="about-area padding-top-120">
		<div class="container">
			<div class="row">
				<div class="col-lg-5 col-md-12 wow fadeInLeft">
					<div class="about-left">
						<div class="about-l-shapes">
							<span class="als-1"><img
								src="AllStyle/assets/images/shapes/2.png" alt=""></span>
						</div>
						<div class="row">
							<div
								class="col-lg-4 col-md-4 col-sm-4 col-4 d-flex align-items-end justify-content-end margin-bottom-20">
								<div class="about-gallery-1">
									<img src="AllStyle/assets/images/gallery/1.jpg" alt="">
								</div>
							</div>
							<div class="col-lg-8 col-md-8 col-sm-8 col-8 margin-bottom-20">
								<div class="about-gallery-2">
									<a class="popup-youtube" href="#"> <span
										class="play-btn item-ripple"><i class="fas fa-play"></i></span>
										<img src="AllStyle/assets/images/gallery/2.jpg" alt="">
									</a>
								</div>
							</div>
							<div class="col-lg-6 col-md-6 col-sm-6 col-6">
								<div class="about-gallery-3">
									<img src="AllStyle/assets/images/gallery/3.jpg" alt="">
								</div>
							</div>
							<div
								class="col-lg-5 col-md-5 col-sm-5 col-5 d-flex align-items-start">
								<div class="about-gallery-4 text-center">
									<img class="mp" src="AllStyle/assets/images/icons/3.png" alt="">
									<div class="items counter">2000</div>
									<p>食物列表</p>
									<span class="g-s-4"><img
										src="AllStyle/assets/images/shapes/10.png" alt=""></span> <span
										class="g-s-5"><img
										src="AllStyle/assets/images/shapes/14.png" alt=""></span>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="col-lg-6 col-md-12 offset-lg-1 wow fadeInRight">
					<div class="about-right">
						<div class="about-r-shapes">
							<span class="as-1 item-bounce"><img
								src="AllStyle/assets/images/shapes/1.png" alt=""></span>
						</div>
						<h2>
							新鲜的味道,近人的价格， <span>仅为饥饿的人们。</span>
						</h2>
						<p>OD是一家餐厅、酒吧和咖啡烘焙工坊，位于法林顿埃克斯茅斯市场一个繁忙的角落。高光泽。</p>
						<div class="garlic-burger-card">
							<div class="garlic-burger-img">
								<img class="price-badge"
									src="AllStyle/assets/images/icons/4.png" alt=""> <img
									src="AllStyle/assets/images/icons/2.png" alt="">
							</div>
							<div class="garlic-burger-content">
								<h5>享用BBQ烤全鸡。</h5>
								<p>大蒜汉堡配方这是一个绝佳美味的黑暗料理</p>
							</div>
						</div>

					</div>
				</div>
			</div>
		</div>
	</section>

	<!--popula-menu-area -->
	<section class="menu-area  padding-bottom-120">
		<div class="container">
			<div class="common-title-area text-center padding-50 wow fadeInUp">
				<h3>食物列表</h3>
				<h2>
					最受欢迎的 <span>菜单</span>
				</h2>
			</div>
			<!-- menu-nav-wrapper -->
			<div class="menu-nav-wrapper">
				<div class="container">
					<div class="row">
						<nav>
							<div class="nav" id="nav-tab" role="tablist">
								<!-- menu-nav-1 -->
								<a class="nav-item nav-link active" id="nav-menu-1"
									data-toggle="tab" href="#menu-1" role="tab"
									aria-controls="menu-1" aria-selected="true">

									<div class="single-menu-nav text-center">
										<div class="menu-img margin-bottom-10">
											<img src="AllStyle/assets/images/menu-item/pizza.png" alt="">
										</div>
										<h6>披萨</h6>
										<span class="g-s-4"><img
											src="AllStyle/assets/images/shapes/10.png" alt=""></span> <span
											class="g-s-5"><img
											src="AllStyle/assets/images/shapes/14.png" alt=""></span>

									</div>

								</a>
								<!-- menu-nav-2 -->
								<a class="nav-item nav-link" id="nav-menu-2" data-toggle="tab"
									href="#menu-2" role="tab" aria-controls="menu-2"
									aria-selected="false">

									<div class="single-menu-nav text-center">
										<div class="menu-img margin-bottom-10">
											<img src="AllStyle/assets/images/menu-item/burger.png" alt="">
										</div>
										<h6>汉堡</h6>
										<span class="g-s-4"><img
											src="AllStyle/assets/images/shapes/10.png" alt=""></span> <span
											class="g-s-5"><img
											src="AllStyle/assets/images/shapes/14.png" alt=""></span>
									</div>
								</a>
								<!-- menu-nav-3 -->
								<a class="nav-item nav-link" id="nav-menu-3" data-toggle="tab"
									href="#menu-3" role="tab" aria-controls="menu-3"
									aria-selected="false">
									<div class="single-menu-nav text-center">
										<div class="menu-img margin-bottom-10">
											<img src="AllStyle/assets/images/menu-item/chicken.png"
												alt="">
										</div>
										<h6>美味鸡</h6>
										<span class="g-s-4"><img
											src="AllStyle/assets/images/shapes/10.png" alt=""></span> <span
											class="g-s-5"><img
											src="AllStyle/assets/images/shapes/14.png" alt=""></span>
									</div>

								</a>
								<!-- menu-nav-4 -->
								<a class="nav-item nav-link" id="nav-menu-4" data-toggle="tab"
									href="#menu-4" role="tab" aria-controls="menu-4"
									aria-selected="false">
									<div class="single-menu-nav text-center">
										<div class="menu-img margin-bottom-10">
											<img src="AllStyle/assets/images/menu-item/drinks.png" alt="">
										</div>
										<h6>果汁</h6>
										<span class="g-s-4"><img
											src="AllStyle/assets/images/shapes/10.png" alt=""></span> <span
											class="g-s-5"><img
											src="AllStyle/assets/images/shapes/14.png" alt=""></span>
									</div>

								</a>
								<!-- menu-nav-5 -->
								<a class="nav-item nav-link" id="nav-menu-5" data-toggle="tab"
									href="#menu-5" role="tab" aria-controls="menu-5"
									aria-selected="false">

									<div class="single-menu-nav text-center">
										<div class="menu-img margin-bottom-10">
											<img src="AllStyle/assets/images/menu-item/drinks2.png"
												alt="">
										</div>
										<h6>鲜汤</h6>
										<span class="g-s-4"><img
											src="AllStyle/assets/images/shapes/10.png" alt=""></span> <span
											class="g-s-5"><img
											src="AllStyle/assets/images/shapes/14.png" alt=""></span>
									</div>
								</a>
								<!-- menu-nav-6 -->
								<a class="nav-item nav-link" id="nav-menu-6" data-toggle="tab"
									href="#menu-6" role="tab" aria-controls="menu-6"
									aria-selected="false">

									<div class="single-menu-nav text-center">
										<div class="menu-img margin-bottom-10">
											<img src="AllStyle/assets/images/menu-item/combo.png" alt="">
										</div>
										<h6>套餐</h6>
										<span class="g-s-4"><img
											src="AllStyle/assets/images/shapes/10.png" alt=""></span> <span
											class="g-s-5"><img
											src="AllStyle/assets/images/shapes/14.png" alt=""></span>
									</div>
								</a>
							</div>
						</nav>
					</div>
				</div>

			</div>

			<!-- menu-items-wrapper -->
			<div class="tab-content" id="nav-tabContent">
				<!-- menu-items-1 -->
				<div class="tab-pane fade show active" id="menu-1" role="tabpanel"
					aria-labelledby="menu-1">
					<div class="menu-items-wrapper padding-70 margin-top-50">
						<div class="menu-i-shapes">
							<span class="mis-1"><img
								src="AllStyle/assets/images/shapes/28.png" alt=""></span> <span
								class="mis-2"><img
								src="AllStyle/assets/images/shapes/12.png" alt=""></span> <span
								class="mis-3"><img
								src="AllStyle/assets/images/shapes/7.png" alt=""></span> <span
								class="mis-4"><img
								src="AllStyle/assets/images/shapes/17.png" alt=""></span>
						</div>
						<!-- first-row -->
						<div class="row">
							<div class="col-lg-4 col-md-4">
								<div
									class="single-menu-item d-flex justify-content-between align-items-center">
									<div class="menu-img">
										<img src="AllStyle/assets/images/menu-item/piz1.png" alt="">
									</div>
									<div class="menu-content">
										<h5>
											<a href="single-dish.html">玛格丽特</a>
										</h5>
										<p>shirmp菠萝</p>
										<span>价格 :￥15.00</span>
									</div>
								</div>
							</div>
							<div class="col-lg-4 col-md-4">
								<div
									class="single-menu-item d-flex justify-content-between align-items-center">
									<div class="menu-img">
										<img src="AllStyle/assets/images/menu-item/piz2.png" alt="">
									</div>
									<div class="menu-content">
										<h5>
											<a href="single-dish.html">番茄</a>
										</h5>
										<p>shirmp. 番茄</p>
										<span>价格 :￥15.00</span>
									</div>
								</div>
							</div>
							<div class="col-lg-4 col-md-4">
								<div
									class="single-menu-item d-flex justify-content-between  align-items-center">
									<div class="menu-img">
										<img src="AllStyle/assets/images/menu-item/piz3.png" alt="">
									</div>
									<div class="menu-content">
										<h5>
											<a href="single-dish.html">海员式沙拉</a>
										</h5>
										<p>shirmp. 海员式沙拉</p>
										<span>价格 :￥15.00</span> <span class="del"><del>价格
												:￥15.00</del></span>
									</div>
								</div>
							</div>
						</div>
						<hr>
						<!-- second-row -->
						<div class="row  margin-top-60">
							<div class="col-lg-4 col-md-4">
								<div
									class="single-menu-item d-flex justify-content-between  align-items-center">
									<div class="menu-img">
										<img src="AllStyle/assets/images/menu-item/piz4.png" alt="">
									</div>
									<div class="menu-content">
										<h5>
											<a href="single-dish.html">海鲜披萨</a>
										</h5>
										<p>shirmp. 海鲜</p>
										<span>价格 :￥15.00</span>
									</div>
								</div>
							</div>
							<div class="col-lg-4 col-md-4">
								<div
									class="single-menu-item d-flex justify-content-between  align-items-center">
									<div class="menu-img">
										<img src="AllStyle/assets/images/menu-item/piz5.png" alt="">
									</div>
									<div class="menu-content">
										<h5>
											<a href="single-dish.html">美式</a>
										</h5>
										<p>shirmp. 美式披萨</p>
										<span>价格 :￥15.00</span>
									</div>
								</div>
							</div>
							<div class="col-lg-4 col-md-4">
								<div
									class="single-menu-item d-flex justify-content-between  align-items-center">
									<div class="menu-img">
										<img src="AllStyle/assets/images/menu-item/piz6.png" alt="">
									</div>
									<div class="menu-content">
										<h5>
											<a href="single-dish.html">香蒜沙司</a>
										</h5>
										<p>shirmp.沙司</p>
										<span>价格 :￥15.00</span> <span class="del"><del>价格
												:￥15.00</del></span>
									</div>
								</div>
							</div>
							<hr>
						</div>

						<div class="menu-btn text-center">
							<a href="shopping-cart.html" class="btn">立即下单</a>
						</div>
					</div>
				</div>
				<!-- menu-items-2 -->
				<div class="tab-pane fade" id="menu-2" role="tabpanel"
					aria-labelledby="menu-2">
					<div class="menu-items-wrapper padding-70 margin-top-50">
						<div class="menu-i-shapes">
							<span class="mis-1"><img
								src="AllStyle/assets/images/shapes/28.png" alt=""></span> <span
								class="mis-2"><img
								src="AllStyle/assets/images/shapes/12.png" alt=""></span> <span
								class="mis-3"><img
								src="AllStyle/assets/images/shapes/7.png" alt=""></span> <span
								class="mis-4"><img
								src="AllStyle/assets/images/shapes/17.png" alt=""></span>
						</div>
						<!-- first-row -->
						<div class="row">
							<div class="col-lg-4 col-md-4">
								<div
									class="single-menu-item d-flex justify-content-between align-items-center">
									<div class="menu-img">
										<img src="AllStyle/assets/images/menu-item/mi-1.png" alt="">
									</div>
									<div class="menu-content">
										<h5>
											<a href="single-dish.html">蔬菜汉堡</a>
										</h5>
										<p>如果你绝对借，那么这款将非常适合你</p>
										<span>价格 :￥15.00</span>
									</div>
								</div>
							</div>
							<div class="col-lg-4 col-md-4">
								<div
									class="single-menu-item d-flex justify-content-between  align-items-center">
									<div class="menu-img">
										<img src="AllStyle/assets/images/menu-item/br1.png" alt="">
									</div>
									<div class="menu-content">
										<h5>
											<a href="single-dish.html">沙拉汉堡</a>
										</h5>
										<p>想吃又想减肥？来吧！</p>
										<span>价格 :￥15.00</span>
									</div>
								</div>
							</div>
							<div class="col-lg-4 col-md-4">
								<div
									class="single-menu-item d-flex justify-content-between  align-items-center">
									<div class="menu-img">
										<img src="AllStyle/assets/images/menu-item/br2.png" alt="">
									</div>
									<div class="menu-content">
										<h5>
											<a href="single-dish.html">牛肉汉堡</a>
										</h5>
										<p>硬汉必备单品</p>
										<span>价格 :￥15.00</span> <span class="del"><del>价格
												:￥15.00</del></span>
									</div>
								</div>
							</div>
						</div>
						<hr>
						<!-- second-row -->
						<div class="row  margin-top-60">
							<div class="col-lg-4 col-md-4">
								<div
									class="single-menu-item d-flex justify-content-between  align-items-center">
									<div class="menu-img">
										<img src="AllStyle/assets/images/menu-item/br3.png" alt="">
									</div>
									<div class="menu-content">
										<h5>
											<a href="single-dish.html">烤全鸡汉堡</a>
										</h5>
										<p>热衷于全鸡又想享受汉堡的美味？</p>
										<span>价格 :￥15.00</span>
									</div>
								</div>
							</div>
							<div class="col-lg-4 col-md-4">
								<div
									class="single-menu-item d-flex justify-content-between  align-items-center">
									<div class="menu-img">
										<img src="AllStyle/assets/images/menu-item/br5.png" alt="">
									</div>
									<div class="menu-content">
										<h5>
											<a href="single-dish.html">奶酪汉堡</a>
										</h5>
										<p>享受汉堡的丝滑吧</p>
										<span>价格 :￥15.00</span>
									</div>
								</div>
							</div>
							<div class="col-lg-4 col-md-4">
								<div
									class="single-menu-item d-flex justify-content-between  align-items-center">
									<div class="menu-img">
										<img src="AllStyle/assets/images/menu-item/br6.png" alt="">
									</div>
									<div class="menu-content">
										<h5>
											<a href="single-dish.html">麻辣鸡肉汉堡</a>
										</h5>
										<p>独特香辣鸡肉汉堡</p>
										<span>价格 :￥15.00</span> <span class="del"><del>价格
												:￥15.00</del></span>
									</div>
								</div>
							</div>
							<hr>
						</div>

						<div class="menu-btn text-center">
							<a href="shopping-cart.html" class="btn">立即下单</a>
						</div>
					</div>
				</div>
				<!-- menu-items-3 -->
				<div class="tab-pane fade" id="menu-3" role="tabpanel"
					aria-labelledby="menu-3">
					<div class="menu-items-wrapper padding-70 margin-top-50">
						<div class="menu-i-shapes">
							<span class="mis-1"><img
								src="AllStyle/assets/images/shapes/28.png" alt=""></span> <span
								class="mis-2"><img
								src="AllStyle/assets/images/shapes/12.png" alt=""></span> <span
								class="mis-3"><img
								src="AllStyle/assets/images/shapes/7.png" alt=""></span> <span
								class="mis-4"><img
								src="AllStyle/assets/images/shapes/17.png" alt=""></span>
						</div>
						<!-- first-row -->
						<div class="row">
							<div class="col-lg-4 col-md-4">
								<div class="single-menu-item d-flex justify-content-between">
									<div class="menu-img">
										<img src="AllStyle/assets/images/menu-item/tc6.png" alt="">
									</div>
									<div class="menu-content">
										<h5>
											<a href="single-dish.html">美味鸡块</a>
										</h5>
										<p>可乐配香辣鸡块简直绝了！</p>
										<span>价格 :￥15.00</span>
									</div>
								</div>
							</div>
							<div class="col-lg-4 col-md-4">
								<div
									class="single-menu-item d-flex justify-content-between  align-items-center">
									<div class="menu-img">
										<img src="AllStyle/assets/images/menu-item/mi-2.png" alt="">
									</div>
									<div class="menu-content">
										<h5>
											<a href="single-dish.html">泰式鸡肉</a>
										</h5>
										<p>享受异国风味吧</p>
										<span>价格 :￥15.00</span>
									</div>
								</div>
							</div>
							<div class="col-lg-4 col-md-4">
								<div
									class="single-menu-item d-flex justify-content-between  align-items-center">
									<div class="menu-img">
										<img src="AllStyle/assets/images/menu-item/mi-3.png" alt="">
									</div>
									<div class="menu-content">
										<h5>
											<a href="single-dish.html">BBQ烤全鸡</a>
										</h5>
										<p>没有比这更BBQ的了！</p>
										<span>价格 :￥15.00</span> <span class="del"><del>价格
												:￥15.00</del></span>
									</div>
								</div>
							</div>
						</div>
						<hr>
						<!-- second-row -->
						<div class="row  margin-top-60">
							<div class="col-lg-4 col-md-4">
								<div
									class="single-menu-item d-flex justify-content-between  align-items-center">
									<div class="menu-img">
										<img src="AllStyle/assets/images/menu-item/mi-1.png" alt="">
									</div>
									<div class="menu-content">
										<h5>
											<a href="single-dish.html">墨西哥汉子</a>
										</h5>
										<p>味如其名，敢于挑战就来吧！</p>
										<span>价格 :￥15.00</span>
									</div>
								</div>
							</div>
							<div class="col-lg-4 col-md-4">
								<div
									class="single-menu-item d-flex justify-content-between  align-items-center">
									<div class="menu-img">
										<img src="AllStyle/assets/images/menu-item/mi-5.png" alt="">
									</div>
									<div class="menu-content">
										<h5>
											<a href="single-dish.html">泰式鸡块</a>
										</h5>
										<p>享受异国风味</p>
										<span>价格 :￥15.00</span>
									</div>
								</div>
							</div>
							<div class="col-lg-4 col-md-4">
								<div
									class="single-menu-item d-flex justify-content-between  align-items-center">
									<div class="menu-img">
										<img src="AllStyle/assets/images/menu-item/mi-6.png" alt="">
									</div>
									<div class="menu-content">
										<h5>
											<a href="single-dish.html">BBQ</a>
										</h5>
										<p>好吃实惠呵呵呵</p>
										<span>价格 :￥15.00</span> <span class="del"><del>价格
												:￥15.00</del></span>
									</div>
								</div>
							</div>
							<hr>
						</div>

						<div class="menu-btn text-center">
							<a href="shopping-cart.html" class="btn">立即下单</a>
						</div>
					</div>
				</div>
				<!-- menu-items-4 -->
				<div class="tab-pane fade" id="menu-4" role="tabpanel"
					aria-labelledby="menu-4">
					<div class="menu-items-wrapper padding-70 margin-top-50">
						<div class="menu-i-shapes">
							<span class="mis-1"><img
								src="AllStyle/assets/images/shapes/28.png" alt=""></span> <span
								class="mis-2"><img
								src="AllStyle/assets/images/shapes/12.png" alt=""></span> <span
								class="mis-3"><img
								src="AllStyle/assets/images/shapes/7.png" alt=""></span> <span
								class="mis-4"><img
								src="AllStyle/assets/images/shapes/17.png" alt=""></span>
						</div>
						<!-- first-row -->
						<div class="row">
							<div class="col-lg-4 col-md-4">
								<div
									class="single-menu-item d-flex justify-content-between align-items-center">
									<div class="menu-img">
										<img src="AllStyle/assets/images/img/dr1.jpg" alt="">
									</div>
									<div class="menu-content">
										<h5>
											<a href="single-dish.html"> 鲜榨牛奶百香果</a>
										</h5>
										<p>解腻必备</p>
										<span>价格 :￥15.00</span>
									</div>
								</div>
							</div>
							<div class="col-lg-4 col-md-4">
								<div
									class="single-menu-item d-flex justify-content-between  align-items-center">
									<div class="menu-img">
										<img src="AllStyle/assets/images/img/dr2.jpg" alt="">
									</div>
									<div class="menu-content">
										<h5>
											<a href="single-dish.html">忧郁爱人</a>
										</h5>
										<p>推荐0点享用，会有不一样的感觉哦！</p>
										<span>价格 :￥15.00</span>
									</div>
								</div>
							</div>
							<div class="col-lg-4 col-md-4">
								<div
									class="single-menu-item d-flex justify-content-between  align-items-center">
									<div class="menu-img">
										<img src="AllStyle/assets/images/img/dr3.jpg" alt="">
									</div>
									<div class="menu-content">
										<h5>
											<a href="single-dish.html">柠檬汁</a>
										</h5>
										<p>百搭饮品，值得您的品尝</p>
										<span>价格 :￥25.00</span> <span class="del"><del>价格
												:￥35.00</del></span>
									</div>
								</div>
							</div>
						</div>
						<hr>
						<!-- second-row -->
						<div class="row  margin-top-60">
							<div class="col-lg-4 col-md-4">
								<div
									class="single-menu-item d-flex justify-content-between  align-items-center">
									<div class="menu-img">
										<img src="AllStyle/assets/images/img/dr4.jpg" alt="">
									</div>
									<div class="menu-content">
										<h5>
											<a href="single-dish.html">橙汁</a>
										</h5>
										<p>炎炎夏日的必备品</p>
										<span>价格 :￥17.00</span>
									</div>
								</div>
							</div>
							<div class="col-lg-4 col-md-4">
								<div
									class="single-menu-item d-flex justify-content-between  align-items-center">
									<div class="menu-img">
										<img src="AllStyle/assets/images/img/dr5.jpg" alt="">
									</div>
									<div class="menu-content">
										<h5>
											<a href="single-dish.html">丰厚果汁</a>
										</h5>
										<p>如果你想享受醇厚口感，就来试试吧</p>
										<span>价格 :￥75.00</span>
									</div>
								</div>
							</div>
							<div class="col-lg-4 col-md-4">
								<div
									class="single-menu-item d-flex justify-content-between  align-items-center">
									<div class="menu-img">
										<img src="AllStyle/assets/images/img/dr6.jpg" alt="">
									</div>
									<div class="menu-content">
										<h5>
											<a href="single-dish.html">甜蜜蜜</a>
										</h5>
										<p>爱糖者的神仙水呀！</p>
										<span>价格 :￥35.00</span> <span class="del"><del>价格
												:￥70.00</del></span>
									</div>
								</div>
							</div>
							<hr>
						</div>

						<div class="menu-btn text-center">
							<a href="shopping-cart.html" class="btn">立即下单</a>
						</div>
					</div>
				</div>
				<!-- menu-items-5 -->
				<div class="tab-pane fade" id="menu-5" role="tabpanel"
					aria-labelledby="menu-5">
					<div class="menu-items-wrapper padding-70 margin-top-50">
						<div class="menu-i-shapes">
							<span class="mis-1"><img
								src="AllStyle/assets/images/shapes/28.png" alt=""></span> <span
								class="mis-2"><img
								src="AllStyle/assets/images/shapes/12.png" alt=""></span> <span
								class="mis-3"><img
								src="AllStyle/assets/images/shapes/7.png" alt=""></span> <span
								class="mis-4"><img
								src="AllStyle/assets/images/shapes/17.png" alt=""></span>
						</div>
						<!-- first-row -->
						<div class="row">
							<div class="col-lg-4 col-md-4">
								<div
									class="single-menu-item d-flex justify-content-between align-items-center">
									<div class="menu-img">
										<img src="AllStyle/assets/images/img/dr2.jpg" alt="">
									</div>
									<div class="menu-content">
										<h5>
											<a href="single-dish.html">新西兰殿下</a>
										</h5>
										<p>高级感瞬间拉满</p>
										<span>价格 :￥15.00</span>
									</div>
								</div>
							</div>
							<div class="col-lg-4 col-md-4">
								<div
									class="single-menu-item d-flex justify-content-between  align-items-center">
									<div class="menu-img">
										<img src="AllStyle/assets/images/img/dr5.jpg" alt="">
									</div>
									<div class="menu-content">
										<h5>
											<a href="single-dish.html">柠檬国王</a>
										</h5>
										<p>shirmp. 柠檬</p>
										<span>价格 :￥7.00</span>
									</div>
								</div>
							</div>
							<div class="col-lg-4 col-md-4">
								<div
									class="single-menu-item d-flex justify-content-between  align-items-center">
									<div class="menu-img">
										<img src="AllStyle/assets/images/img/dr1.jpg" alt="">
									</div>
									<div class="menu-content">
										<h5>
											<a href="single-dish.html">牛奶林果汁</a>
										</h5>
										<p>牛奶林果</p>
										<span>价格 :￥17.00</span> <span class="del"><del>价格
												:￥18.00</del></span>
									</div>
								</div>
							</div>
						</div>
						<hr>
						<!-- second-row -->
						<div class="row  margin-top-60">
							<div class="col-lg-4 col-md-4">
								<div
									class="single-menu-item d-flex justify-content-between  align-items-center">
									<div class="menu-img">
										<img src="AllStyle/assets/images/img/dr6.jpg" alt="">
									</div>
									<div class="menu-content">
										<h5>
											<a href="single-dish.html">牛奶果汁</a>
										</h5>
										<p>酸酸甜甜Kind最爱</p>
										<span>价格 :￥9.00</span>
									</div>
								</div>
							</div>
							<div class="col-lg-4 col-md-4">
								<div
									class="single-menu-item d-flex justify-content-between  align-items-center">
									<div class="menu-img">
										<img src="AllStyle/assets/images/img/dr4.jpg" alt="">
									</div>
									<div class="menu-content">
										<h5>
											<a href="single-dish.html">糖糖水</a>
										</h5>
										<p>可不像你想的那么甜哦</p>
										<span>价格 :￥7.00</span>
									</div>
								</div>
							</div>
							<div class="col-lg-4 col-md-4">
								<div
									class="single-menu-item d-flex justify-content-between  align-items-center">
									<div class="menu-img">
										<img src="AllStyle/assets/images/img/dr5.jpg" alt="">
									</div>
									<div class="menu-content">
										<h5>
											<a href="single-dish.html">蔬菜汤</a>
										</h5>
										<p>营养美味。好吃很贵</p>
										<span>价格 :￥35.00</span> <span class="del"><del>价格
												:￥75.00</del></span>
									</div>
								</div>
							</div>
							<hr>
						</div>

						<div class="menu-btn text-center">
							<a href="shopping-cart.html" class="btn">立即下单</a>
						</div>
					</div>
				</div>
				<!-- menu-items-6 -->
				<div class="tab-pane fade" id="menu-6" role="tabpanel"
					aria-labelledby="menu-6">
					<div class="menu-items-wrapper padding-70 margin-top-50">
						<div class="menu-i-shapes">
							<span class="mis-1"><img
								src="AllStyle/assets/images/shapes/28.png" alt=""></span> <span
								class="mis-2"><img
								src="AllStyle/assets/images/shapes/12.png" alt=""></span> <span
								class="mis-3"><img
								src="AllStyle/assets/images/shapes/7.png" alt=""></span> <span
								class="mis-4"><img
								src="AllStyle/assets/images/shapes/17.png" alt=""></span>
						</div>
						<!-- first-row -->
						<div class="row">
							<div class="col-lg-4 col-md-4">
								<div
									class="single-menu-item d-flex justify-content-between align-items-center">
									<div class="menu-img">
										<img src="AllStyle/assets/images/menu-item/mi-1.png" alt="">
									</div>
									<div class="menu-content">
										<h5>
											<a href="single-dish.html">古驰汉堡</a>
										</h5>
										<p>汉堡界的扛把子</p>
										<span>价格 :￥75.00</span>
									</div>
								</div>
							</div>
							<div class="col-lg-4 col-md-4">
								<div
									class="single-menu-item d-flex justify-content-between  align-items-center">
									<div class="menu-img">
										<img src="AllStyle/assets/images/menu-item/mi-2.png" alt="">
									</div>
									<div class="menu-content">
										<h5>
											<a href="single-dish.html">泰式套餐</a>
										</h5>
										<p>异国全家桶</p>
										<span>价格 :￥78.00</span>
									</div>
								</div>
							</div>
							<div class="col-lg-4 col-md-4">
								<div
									class="single-menu-item d-flex justify-content-between  align-items-center">
									<div class="menu-img">
										<img src="AllStyle/assets/images/menu-item/mi-3.png" alt="">
									</div>
									<div class="menu-content">
										<h5>
											<a href="single-dish.html">玛莎拉</a>
										</h5>
										<p>干净又卫生啊！兄弟们</p>
										<span>价格 :￥4.00</span> <span class="del"><del>价格
												:￥5.00</del></span>
									</div>
								</div>
							</div>
						</div>
						<hr>
						<!-- second-row -->
						<div class="row  margin-top-60">
							<div class="col-lg-4 col-md-4">
								<div
									class="single-menu-item d-flex justify-content-between  align-items-center">
									<div class="menu-img">
										<img src="AllStyle/assets/images/menu-item/mi-4.png" alt="">
									</div>
									<div class="menu-content">
										<h5>
											<a href="single-dish.html">马卡龙</a>
										</h5>
										<p>杆菌又微生啊！兄弟们</p>
										<span>价格 :￥8.00</span>
									</div>
								</div>
							</div>
							<div class="col-lg-4 col-md-4">
								<div
									class="single-menu-item d-flex justify-content-between  align-items-center">
									<div class="menu-img">
										<img src="AllStyle/assets/images/menu-item/mi-5.png" alt="">
									</div>
									<div class="menu-content">
										<h5>
											<a href="single-dish.html">马卡龙</a>
										</h5>
										<p>杆菌又微生啊！兄弟们</p>
										<span>价格 :￥8.00</span>
									</div>
								</div>
							</div>
							<div class="col-lg-4 col-md-4">
								<div
									class="single-menu-item d-flex justify-content-between  align-items-center">
									<div class="menu-img">
										<img src="AllStyle/assets/images/menu-item/mi-6.png" alt="">
									</div>
									<div class="menu-content">
										<h5>
											<a href="single-dish.html">炸鸡</a>
										</h5>
										<p>好吃又不健康</p>
										<span>价格 :￥13.00</span> <span class="del"><del>价格
												:￥16.00</del></span>
									</div>
								</div>
							</div>
							<hr>
						</div>

						<div class="menu-btn text-center">
							<a href="shopping-cart.html" class="btn">立即下单</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>

	<!-- popular-dishes -->
	<section class="popular-dishes-area padding-top-110">
		<div class="pshapes">
			<span class="ps-1 item-animateTwo"><img
				src="AllStyle/assets/images/shapes/11.png" alt=""></span> <span
				class="ps-2 item-animateTwo"><img
				src="AllStyle/assets/images/shapes/12.png" alt=""></span> <span
				class="ps-3 item-bounce"><img
				src="AllStyle/assets/images/shapes/13.png" alt=""></span> <span
				class="ps-4 item-bounce"><img
				src="AllStyle/assets/images/shapes/14.png" alt=""></span> <span
				class="ps-5"><img src="AllStyle/assets/images/shapes/15.png"
				alt=""></span> <span class="ps-6 item-bounce"><img
				src="AllStyle/assets/images/shapes/16.png" alt=""></span>
		</div>
		<div class="container">
			<nav
				class="popular-tab-nav d-flex flex-wrap justify-content-between align-items-center">
				<div class="common-title-area  padding-bottom-30 wow fadeInLeft">
					<h3>食物图集</h3>
					<h2>
						最受欢迎的 <span>单品</span>
					</h2>
				</div>
				<div class="nav padding-bottom-30 wow fadeInRight" id="nav-tab-1"
					role="tablist">
					<a class="nav-link active" id="home-tab" data-toggle="tab"
						href="#home" role="tab" aria-controls="home" aria-selected="true">全部</a>
					<a class="nav-link" id="nav-tab-home" data-toggle="tab"
						href="#tab-1" role="tab" aria-controls="tab-1"
						aria-selected="false">披萨</a> <a class="nav-link" id="nav-tab-11"
						data-toggle="tab" href="#tab-2" role="tab" aria-controls="tab-2"
						aria-selected="false">汉堡</a> <a class="nav-link" id="nav-tab-2"
						data-toggle="tab" href="#tab-3" role="tab" aria-controls="tab-3"
						aria-selected="false">鸡肉</a> <a class="nav-link" id="nav-tab-3"
						data-toggle="tab" href="#tab-4" role="tab" aria-controls="tab-4"
						aria-selected="false">饮品</a>
				</div>
			</nav>
			<!-- main-content -->
			<div class="tab-content" id="nav-tabContent-1">

				<!-- all items -->
				<div class="tab-pane fade show active" id="home" role="tabpanel"
					aria-labelledby="home">
					<div class="row">
						<div class="col-xl-3 col-lg-3 col-md-6">
							<div class="single-dishes">
								<div class="dish-img">
									<img src="AllStyle/assets/images/menu-item/pd1.png"
										style="width: inherit;" alt="">
								</div>
								<div class="dish-content">
									<h5>
										<a href="single-dish.html">美式酱汁鸡 </a>
									</h5>
									<p>BBQ烤全鸡拥有很久的制作历史</p>
									<span class="price">价格 :￥4.00</span>
								</div>
								<span class="badge">热</span>
								<div class="cart-opt">
									<span> <a href="#"><i class="fas fa-heart"></i></a>
									</span> <span> <a href="shopping-cart.html"><i
											class="fas fa-shopping-basket"></i></a>
									</span>
								</div>
							</div>
						</div>
						<div class="col-xl-3 col-lg-3 col-md-6">
							<div class="single-dishes">
								<div class="dish-img">
									<img src="AllStyle/assets/images/menu-item/pd2.png"
										style="width: inherit;" alt="">
								</div>
								<div class="dish-content">
									<h5>
										<a href="single-dish.html">蔬菜披萨 </a>
									</h5>
									<p>蔬菜与鸡肉的组合</p>
									<span class="price">价格 :￥20.00</span>

								</div>
								<span class="badge"></span>
								<div class="cart-opt">
									<span> <a href="#"><i class="fas fa-heart"></i></a>
									</span> <span> <a href="shopping-cart.html"><i
											class="fas fa-shopping-basket"></i></a>
									</span>
								</div>
							</div>
						</div>
						<div class="col-xl-3 col-lg-3 col-md-6">
							<div class="single-dishes">
								<div class="dish-img">
									<img src="AllStyle/assets/images/menu-item/pd3.png"
										style="width: inherit;" alt="">
								</div>
								<div class="dish-content">
									<h5>
										<a href="single-dish.html">尝试鸡 </a>
									</h5>
									<p>烤全鸡拥有很久的制作历史</p>
									<span class="price badge-color">价格 :￥75.00</span> <span
										class="rating"> <i class="fas fa-star"></i> 5星
									</span>
								</div>
								<span class="badge badge-bg-color">新品</span>
								<div class="cart-opt">
									<span> <a href="#"><i class="fas fa-heart"></i></a>
									</span> <span> <a href="shopping-cart.html"><i
											class="fas fa-shopping-basket"></i></a>
									</span>
								</div>
							</div>
						</div>
						<div class="col-xl-3 col-lg-3 col-md-6">
							<div class="single-dishes">
								<div class="dish-img">
									<img src="AllStyle/assets/images/menu-item/pd4.png"
										style="width: inherit;" alt="">
								</div>
								<div class="dish-content">
									<h5>
										<a href="single-dish.html">鸡汤 </a>
									</h5>
									<p>烤全鸡拥有很久的制作历史</p>
									<span class="price">价格 :￥75.00</span>
								</div>
								<span class="badge">售价</span>
								<div class="cart-opt">
									<span> <a href="#"><i class="fas fa-heart"></i></a>
									</span> <span> <a href="shopping-cart.html"><i
											class="fas fa-shopping-basket"></i></a>
									</span>
								</div>
							</div>
						</div>
						<div class="col-xl-3 col-lg-3 col-md-6">
							<div class="single-dishes">
								<div class="dish-img">
									<img src="AllStyle/assets/images/menu-item/pd5.png"
										style="width: inherit;" alt="">
								</div>
								<div class="dish-content">
									<h5>
										<a href="single-dish.html">复刻鸡肉 </a>
									</h5>
									<p>烤全鸡拥有很久的制作历史哈哈哈</p>
									<span class="price">价格 :￥15.00</span>
								</div>
								<span class="badge">hot</span>
								<div class="cart-opt">
									<span> <a href="#"><i class="fas fa-heart"></i></a>
									</span> <span> <a href="shopping-cart.html"><i
											class="fas fa-shopping-basket"></i></a>
									</span>
								</div>
							</div>
						</div>
						<div class="col-xl-3 col-lg-3 col-md-6">
							<div class="single-dishes">
								<div class="dish-img">
									<img src="AllStyle/assets/images/menu-item/pd6.png"
										style="width: inherit;" alt="">
								</div>
								<div class="dish-content">
									<h5>
										<a href="single-dish.html">好吃披萨 </a>
									</h5>
									<p>烤全鸡拥有很弗洛伊德的久的制作历史</p>
									<span class="price">价格 :￥15.00</span>

								</div>
								<span class="badge"></span>
								<div class="cart-opt">
									<span> <a href="#"><i class="fas fa-heart"></i></a>
									</span> <span> <a href="shopping-cart.html"><i
											class="fas fa-shopping-basket"></i></a>
									</span>
								</div>
							</div>
						</div>
						<div class="col-xl-3 col-lg-3 col-md-6">
							<div class="single-dishes">
								<div class="dish-img">
									<img src="AllStyle/assets/images/menu-item/pd7.png"
										style="width: inherit;" alt="">
								</div>
								<div class="dish-content">
									<h5>
										<a href="single-dish.html">鸡肉 </a>
									</h5>
									<p>以达到撒旦艰苦房间里的是</p>
									<span class="badge-color price">价格 :￥15.00</span> <span
										class="rating"> <i class="fas fa-star"></i> 5star
									</span>
								</div>
								<span class="badge"></span>
								<div class="cart-opt">
									<span> <a href="#"><i class="fas fa-heart"></i></a>
									</span> <span> <a href="shopping-cart.html"><i
											class="fas fa-shopping-basket"></i></a>
									</span>
								</div>
							</div>
						</div>
						<div class="col-xl-3 col-lg-3 col-md-6">
							<div class="single-dishes">
								<div class="dish-img">
									<img src="AllStyle/assets/images/menu-item/pd8.png"
										style="width: inherit;" alt="">
								</div>
								<div class="dish-content">
									<h5>
										<a href="single-dish.html">撒谎鸡 </a>
									</h5>
									<p>上的飞机但我怕你对我</p>
									<span class="price">价格 :￥15.00</span>

								</div>
								<span class="badge">售价</span>
								<div class="cart-opt">
									<span> <a href="#"><i class="fas fa-heart"></i></a>
									</span> <span> <a href="shopping-cart.html"><i
											class="fas fa-shopping-basket"></i></a>
									</span>
								</div>
							</div>
						</div>
					</div>
				</div>

				<!-- pizza -->
				<div class="tab-pane fade" id="tab-1" role="tabpanel"
					aria-labelledby="tab-1">
					<div class="row">
						<div class="col-xl-3 col-lg-3 col-md-6">
							<div class="single-dishes">
								<div class="dish-img">
									<img src="AllStyle/assets/images/menu-item/pd5.png"
										style="width: inherit;" alt="">
								</div>
								<div class="dish-content">
									<h5>
										<a href="single-dish.html">马哈拉 </a>
									</h5>
									<p>费德勒的氨基酸的快递费</p>
									<span class="price">价格 :￥15.00</span>

								</div>
								<span class="badge">热</span>
								<div class="cart-opt">
									<span> <a href="#"><i class="fas fa-heart"></i></a>
									</span> <span> <a href="shopping-cart.html"><i
											class="fas fa-shopping-basket"></i></a>
									</span>
								</div>
							</div>
						</div>
						<div class="col-xl-3 col-lg-3 col-md-6">
							<div class="single-dishes">
								<div class="dish-img">
									<img src="AllStyle/assets/images/menu-item/pd5.png"
										style="width: inherit;" alt="">
								</div>
								<div class="dish-content">
									<h5>
										<a href="single-dish.html">羊肉 </a>
									</h5>
									<p>四点零分撒娇的尼斯奥迪</p>
									<span class="price">价格 :￥78.00</span>

								</div>
								<span class="badge"></span>
								<div class="cart-opt">
									<span> <a href="#"><i class="fas fa-heart"></i></a>
									</span> <span> <a href="shopping-cart.html"><i
											class="fas fa-shopping-basket"></i></a>
									</span>
								</div>
							</div>
						</div>
						<div class="col-xl-3 col-lg-3 col-md-6">
							<div class="single-dishes">
								<div class="dish-img">
									<img src="AllStyle/assets/images/menu-item/pd5.png"
										style="width: inherit;" alt="">
								</div>
								<div class="dish-content">
									<h5>
										<a href="single-dish.html">牛肉 </a>
									</h5>
									<p>分厘卡机了第哦啊</p>
									<span class="price badge-color">价格 :￥15.00</span> <span
										class="rating"> <i class="fas fa-star"></i> 5星
									</span>
								</div>
								<span class="badge badge-bg-color">new</span>
								<div class="cart-opt">
									<span> <a href="#"><i class="fas fa-heart"></i></a>
									</span> <span> <a href="shopping-cart.html"><i
											class="fas fa-shopping-basket"></i></a>
									</span>
								</div>
							</div>
						</div>
						<div class="col-xl-3 col-lg-3 col-md-6">
							<div class="single-dishes">
								<div class="dish-img">
									<img src="AllStyle/assets/images/menu-item/pd5.png"
										style="width: inherit;" alt="">
								</div>
								<div class="dish-content">
									<h5>
										<a href="single-dish.html">蔬菜啊 </a>
									</h5>
									<p>所覆盖的规划分局啊大锅饭大概</p>
									<span class="price">价格 :￥45.00</span>
								</div>
								<span class="badge">售价</span>
								<div class="cart-opt">
									<span> <a href="#"><i class="fas fa-heart"></i></a>
									</span> <span> <a href="shopping-cart.html"><i
											class="fas fa-shopping-basket"></i></a>
									</span>
								</div>
							</div>
						</div>
						<div class="col-xl-3 col-lg-3 col-md-6">
							<div class="single-dishes">
								<div class="dish-img">
									<img src="AllStyle/assets/images/menu-item/pd5.png"
										style="width: inherit;" alt="">
								</div>
								<div class="dish-content">
									<h5>
										<a href="single-dish.html">美式鸡肉 </a>
									</h5>
									<p>风格的后果虎骨酒阿达</p>
									<span class="price">价格 :￥74.00</span>
								</div>
								<span class="badge">热</span>
								<div class="cart-opt">
									<span> <a href="#"><i class="fas fa-heart"></i></a>
									</span> <span> <a href="shopping-cart.html"><i
											class="fas fa-shopping-basket"></i></a>
									</span>
								</div>
							</div>
						</div>
						<div class="col-xl-3 col-lg-3 col-md-6">
							<div class="single-dishes">
								<div class="dish-img">
									<img src="AllStyle/assets/images/menu-item/pd5.png"
										style="width: inherit;" alt="">
								</div>
								<div class="dish-content">
									<h5>
										<a href="single-dish.html">蔬菜披萨 </a>
									</h5>
									<p>试试烤全鸡拥有很久的制作历史打赏分的高分</p>
									<span class="price">价格 :￥41.00</span>

								</div>
								<span class="badge"></span>
								<div class="cart-opt">
									<span> <a href="#"><i class="fas fa-heart"></i></a>
									</span> <span> <a href="shopping-cart.html"><i
											class="fas fa-shopping-basket"></i></a>
									</span>
								</div>
							</div>
						</div>
						<div class="col-xl-3 col-lg-3 col-md-6">
							<div class="single-dishes">
								<div class="dish-img">
									<img src="AllStyle/assets/images/menu-item/pd5.png"
										style="width: inherit;" alt="">
								</div>
								<div class="dish-content">
									<h5>
										<a href="single-dish.html">只能是披萨 </a>
									</h5>
									<p>受到了杀了方式</p>
									<span class="badge-color price">价格 :￥15.00</span> <span
										class="rating"> <i class="fas fa-star"></i> 5星
									</span>
								</div>
								<span class="badge"></span>
								<div class="cart-opt">
									<span> <a href="#"><i class="fas fa-heart"></i></a>
									</span> <span> <a href="shopping-cart.html"><i
											class="fas fa-shopping-basket"></i></a>
									</span>
								</div>
							</div>
						</div>
						<div class="col-xl-3 col-lg-3 col-md-6">
							<div class="single-dishes">
								<div class="dish-img">
									<img src="AllStyle/assets/images/menu-item/pd5.png"
										style="width: inherit;" alt="">
								</div>
								<div class="dish-content">
									<h5>
										<a href="single-dish.html">美式鸡肉 </a>
									</h5>
									<p>的卡拉时间打算考虑到</p>
									<span class="price">价格 :￥15.00</span>

								</div>
								<span class="badge">售价</span>
								<div class="cart-opt">
									<span> <a href="#"><i class="fas fa-heart"></i></a>
									</span> <span> <a href="shopping-cart.html"><i
											class="fas fa-shopping-basket"></i></a>
									</span>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- burger -->
				<div class="tab-pane fade" id="tab-2" role="tabpanel"
					aria-labelledby="tab-2">
					<div class="row">
						<div class="col-xl-3 col-lg-3 col-md-6">
							<div class="single-dishes">
								<div class="dish-img">
									<img src="AllStyle/assets/images/menu-item/pd1.png"
										style="width: inherit;" alt="">
								</div>
								<div class="dish-content">
									<h5>
										<a href="single-dish.html">咖喱汉堡 </a>
									</h5>
									<p>好十大发的时刻发多少个</p>
									<span class="price">价格 :￥16.00</span>

								</div>
								<span class="badge">热</span>
								<div class="cart-opt">
									<span> <a href="#"><i class="fas fa-heart"></i></a>
									</span> <span> <a href="shopping-cart.html"><i
											class="fas fa-shopping-basket"></i></a>
									</span>
								</div>
							</div>
						</div>
						<div class="col-xl-3 col-lg-3 col-md-6">
							<div class="single-dishes">
								<div class="dish-img">
									<img src="AllStyle/assets/images/menu-item/pd1.png"
										style="width: inherit;" alt="">
								</div>
								<div class="dish-content">
									<h5>
										<a href="single-dish.html">蔬菜 </a>
									</h5>
									<p>凡是符合规范韩国</p>
									<span class="price">价格 :￥65.00</span>

								</div>
								<span class="badge"></span>
								<div class="cart-opt">
									<span> <a href="#"><i class="fas fa-heart"></i></a>
									</span> <span> <a href="shopping-cart.html"><i
											class="fas fa-shopping-basket"></i></a>
									</span>
								</div>
							</div>
						</div>
						<div class="col-xl-3 col-lg-3 col-md-6">
							<div class="single-dishes">
								<div class="dish-img">
									<img src="AllStyle/assets/images/menu-item/pd1.png"
										style="width: inherit;" alt="">
								</div>
								<div class="dish-content">
									<h5>
										<a href="single-dish.html">尝试鸡肉 </a>
									</h5>
									<p>房价肯定会考虑</p>
									<span class="price badge-color">价格 :￥15.00</span> <span
										class="rating"> <i class="fas fa-star"></i> 5星
									</span>
								</div>
								<span class="badge badge-bg-color">新</span>
								<div class="cart-opt">
									<span> <a href="#"><i class="fas fa-heart"></i></a>
									</span> <span> <a href="shopping-cart.html"><i
											class="fas fa-shopping-basket"></i></a>
									</span>
								</div>
							</div>
						</div>
						<div class="col-xl-3 col-lg-3 col-md-6">
							<div class="single-dishes">
								<div class="dish-img">
									<img src="AllStyle/assets/images/menu-item/pd1.png"
										style="width: inherit;" alt="">
								</div>
								<div class="dish-content">
									<h5>
										<a href="single-dish.html">海鲜鸡汤 </a>
									</h5>
									<p>夫卡的DHL撒旦浪费了</p>
									<span class="price">价格 :￥74.00</span>
								</div>
								<span class="badge">售价</span>
								<div class="cart-opt">
									<span> <a href="#"><i class="fas fa-heart"></i></a>
									</span> <span> <a href="shopping-cart.html"><i
											class="fas fa-shopping-basket"></i></a>
									</span>
								</div>
							</div>
						</div>
						<div class="col-xl-3 col-lg-3 col-md-6">
							<div class="single-dishes">
								<div class="dish-img">
									<img src="AllStyle/assets/images/menu-item/pd1.png"
										style="width: inherit;" alt="">
								</div>
								<div class="dish-content">
									<h5>
										<a href="single-dish.html">古驰汉堡 </a>
									</h5>
									<p>奥克兰的建立</p>
									<span class="price">价格 :￥98.00</span>
								</div>
								<span class="badge">热</span>
								<div class="cart-opt">
									<span> <a href="#"><i class="fas fa-heart"></i></a>
									</span> <span> <a href="shopping-cart.html"><i
											class="fas fa-shopping-basket"></i></a>
									</span>
								</div>
							</div>
						</div>
						<div class="col-xl-3 col-lg-3 col-md-6">
							<div class="single-dishes">
								<div class="dish-img">
									<img src="AllStyle/assets/images/menu-item/pd1.png"
										style="width: inherit;" alt="">
								</div>
								<div class="dish-content">
									<h5>
										<a href="single-dish.html">尉迟阿斯达克汉堡 </a>
									</h5>
									<p>安理会的了饭店健身房</p>
									<span class="price">价格 :￥45.00</span>

								</div>
								<span class="badge"></span>
								<div class="cart-opt">
									<span> <a href="#"><i class="fas fa-heart"></i></a>
									</span> <span> <a href="shopping-cart.html"><i
											class="fas fa-shopping-basket"></i></a>
									</span>
								</div>
							</div>
						</div>
						<div class="col-xl-3 col-lg-3 col-md-6">
							<div class="single-dishes">
								<div class="dish-img">
									<img src="AllStyle/assets/images/menu-item/pd1.png"
										style="width: inherit;" alt="">
								</div>
								<div class="dish-content">
									<h5>
										<a href="single-dish.html">鸡肉魔法 </a>
									</h5>
									<p>飞机卡沙的撒浪费法律</p>
									<span class="badge-color price">价格 :￥45.00</span> <span
										class="rating"> <i class="fas fa-star"></i> 3星
									</span>
								</div>
								<span class="badge"></span>
								<div class="cart-opt">
									<span> <a href="#"><i class="fas fa-heart"></i></a>
									</span> <span> <a href="shopping-cart.html"><i
											class="fas fa-shopping-basket"></i></a>
									</span>
								</div>
							</div>
						</div>
						<div class="col-xl-3 col-lg-3 col-md-6">
							<div class="single-dishes">
								<div class="dish-img">
									<img src="AllStyle/assets/images/menu-item/pd1.png"
										style="width: inherit;" alt="">
								</div>
								<div class="dish-content">
									<h5>
										<a href="single-dish.html">汉堡沙司 </a>
									</h5>
									<p>案例的客户是否四国峰会的</p>
									<span class="price">价格 :￥31.00</span>

								</div>
								<span class="badge">售价</span>
								<div class="cart-opt">
									<span> <a href="#"><i class="fas fa-heart"></i></a>
									</span> <span> <a href="shopping-cart.html"><i
											class="fas fa-shopping-basket"></i></a>
									</span>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- chicken -->
				<div class="tab-pane fade" id="tab-3" role="tabpanel"
					aria-labelledby="tab-3">
					<div class="row">
						<div class="col-xl-3 col-lg-3 col-md-6">
							<div class="single-dishes">
								<div class="dish-img">
									<img src="AllStyle/assets/images/menu-item/pd8.png"
										style="width: inherit;" alt="">
								</div>
								<div class="dish-content">
									<h5>
										<a href="single-dish.html">史蒂夫汉堡 </a>
									</h5>
									<p>美国古董味道</p>
									<span class="price">价格 :￥41.00</span>

								</div>
								<span class="badge">hot</span>
								<div class="cart-opt">
									<span> <a href="#"><i class="fas fa-heart"></i></a>
									</span> <span> <a href="shopping-cart.html"><i
											class="fas fa-shopping-basket"></i></a>
									</span>
								</div>
							</div>
						</div>
						<div class="col-xl-3 col-lg-3 col-md-6">
							<div class="single-dishes">
								<div class="dish-img">
									<img src="AllStyle/assets/images/menu-item/pd8.png"
										style="width: inherit;" alt="">
								</div>
								<div class="dish-content">
									<h5>
										<a href="single-dish.html">马那块汉堡</a> </a>
									</h5>
									<p>喀什觉得六点开始减肥</p>
									<span class="price">价格 :￥43.00</span>

								</div>
								<span class="badge"></span>
								<div class="cart-opt">
									<span> <a href="#"><i class="fas fa-heart"></i></a>
									</span> <span> <a href="shopping-cart.html"><i
											class="fas fa-shopping-basket"></i></a>
									</span>
								</div>
							</div>
						</div>
						<div class="col-xl-3 col-lg-3 col-md-6">
							<div class="single-dishes">
								<div class="dish-img">
									<img src="AllStyle/assets/images/menu-item/pd8.png"
										style="width: inherit;" alt="">
								</div>
								<div class="dish-content">
									<h5>
										<a href="single-dish.html">鸡肉爱心 </a>
									</h5>
									<p>来得及回复第十九</p>
									<span class="price badge-color">价格 :￥23.00</span> <span
										class="rating"> <i class="fas fa-star"></i> 5星
									</span>
								</div>
								<span class="badge badge-bg-color">新</span>
								<div class="cart-opt">
									<span> <a href="#"><i class="fas fa-heart"></i></a>
									</span> <span> <a href="shopping-cart.html"><i
											class="fas fa-shopping-basket"></i></a>
									</span>
								</div>
							</div>
						</div>
						<div class="col-xl-3 col-lg-3 col-md-6">
							<div class="single-dishes">
								<div class="dish-img">
									<img src="AllStyle/assets/images/menu-item/pd8.png"
										style="width: inherit;" alt="">
								</div>
								<div class="dish-content">
									<h5>
										<a href="single-dish.html">牛肉汤 </a>
									</h5>
									<p>大家撒旦附近的开发的</p>
									<span class="price">价格 :￥55.00</span>
								</div>
								<span class="badge">售价</span>
								<div class="cart-opt">
									<span> <a href="#"><i class="fas fa-heart"></i></a>
									</span> <span> <a href="shopping-cart.html"><i
											class="fas fa-shopping-basket"></i></a>
									</span>
								</div>
							</div>
						</div>
						<div class="col-xl-3 col-lg-3 col-md-6">
							<div class="single-dishes">
								<div class="dish-img">
									<img src="AllStyle/assets/images/menu-item/pd8.png"
										style="width: inherit;" alt="">
								</div>
								<div class="dish-content">
									<h5>
										<a href="single-dish.html">卡里服巧克力 </a>
									</h5>
									<p>的时刻立法和客观</p>
									<span class="price">价格 :￥4.00</span>
								</div>
								<span class="badge">热</span>
								<div class="cart-opt">
									<span> <a href="#"><i class="fas fa-heart"></i></a>
									</span> <span> <a href="shopping-cart.html"><i
											class="fas fa-shopping-basket"></i></a>
									</span>
								</div>
							</div>
						</div>
						<div class="col-xl-3 col-lg-3 col-md-6">
							<div class="single-dishes">
								<div class="dish-img">
									<img src="AllStyle/assets/images/menu-item/pd8.png"
										style="width: inherit;" alt="">
								</div>
								<div class="dish-content">
									<h5>
										<a href="single-dish.html">绮罗汤 </a>
									</h5>
									<p>要你大赛对方的还不赶快</p>
									<span class="price">价格 :￥42.00</span>

								</div>
								<span class="badge"></span>
								<div class="cart-opt">
									<span> <a href="#"><i class="fas fa-heart"></i></a>
									</span> <span> <a href="shopping-cart.html"><i
											class="fas fa-shopping-basket"></i></a>
									</span>
								</div>
							</div>
						</div>
						<div class="col-xl-3 col-lg-3 col-md-6">
							<div class="single-dishes">
								<div class="dish-img">
									<img src="AllStyle/assets/images/menu-item/pd8.png"
										style="width: inherit;" alt="">
								</div>
								<div class="dish-content">
									<h5>
										<a href="single-dish.html">高扽汤 </a>
									</h5>
									<p>进口的哈世纪的法国</p>
									<span class="badge-color price">价格 :￥15.00</span> <span
										class="rating"> <i class="fas fa-star"></i> 5star
									</span>
								</div>
								<span class="badge"></span>
								<div class="cart-opt">
									<span> <a href="#"><i class="fas fa-heart"></i></a>
									</span> <span> <a href="shopping-cart.html"><i
											class="fas fa-shopping-basket"></i></a>
									</span>
								</div>
							</div>
						</div>
						<div class="col-xl-3 col-lg-3 col-md-6">
							<div class="single-dishes">
								<div class="dish-img">
									<img src="AllStyle/assets/images/menu-item/pd8.png"
										style="width: inherit;" alt="">
								</div>
								<div class="dish-content">
									<h5>
										<a href="single-dish.html">营养汤 </a>
									</h5>
									<p>呕吐不止</p>
									<span class="price">价格 :￥15.00</span>

								</div>
								<span class="badge">售价</span>
								<div class="cart-opt">
									<span> <a href="#"><i class="fas fa-heart"></i></a>
									</span> <span> <a href="shopping-cart.html"><i
											class="fas fa-shopping-basket"></i></a>
									</span>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- drinks -->
				<div class="tab-pane fade" id="tab-4" role="tabpanel"
					aria-labelledby="tab-4">
					<div class="row">
						<div class="col-xl-3 col-lg-3 col-md-6">
							<div class="single-dishes">
								<div class="dish-img">
									<img src="AllStyle/assets/images/menu-item/pd2.png"
										style="width: inherit;" alt="">
								</div>
								<div class="dish-content">
									<h5>
										<a href="single-dish.html">风格的后果虎骨酒 </a>
									</h5>
									<p>法案客服就开始</p>
									<span class="price">价格 :￥21.00</span>

								</div>
								<span class="badge">热</span>
								<div class="cart-opt">
									<span> <a href="#"><i class="fas fa-heart"></i></a>
									</span> <span> <a href="shopping-cart.html"><i
											class="fas fa-shopping-basket"></i></a>
									</span>
								</div>
							</div>
						</div>
						<div class="col-xl-3 col-lg-3 col-md-6">
							<div class="single-dishes">
								<div class="dish-img">
									<img src="AllStyle/assets/images/menu-item/pd2.png"
										style="width: inherit;" alt="">
								</div>
								<div class="dish-content">
									<h5>
										<a href="single-dish.html">尽头与汉堡 </a>
									</h5>
									<p>分手海阔天空</p>
									<span class="price">价格 :￥135.00</span>

								</div>
								<span class="badge"></span>
								<div class="cart-opt">
									<span> <a href="#"><i class="fas fa-heart"></i></a>
									</span> <span> <a href="shopping-cart.html"><i
											class="fas fa-shopping-basket"></i></a>
									</span>
								</div>
							</div>
						</div>
						<div class="col-xl-3 col-lg-3 col-md-6">
							<div class="single-dishes">
								<div class="dish-img">
									<img src="AllStyle/assets/images/menu-item/pd2.png"
										style="width: inherit;" alt="">
								</div>
								<div class="dish-content">
									<h5>
										<a href="single-dish.html">忧郁恋人 </a>
									</h5>
									<p>的伤口缝合卡戴珊</p>
									<span class="price badge-color">价格 :￥75.00</span> <span
										class="rating"> <i class="fas fa-star"></i> 6星
									</span>
								</div>
								<span class="badge badge-bg-color">新</span>
								<div class="cart-opt">
									<span> <a href="#"><i class="fas fa-heart"></i></a>
									</span> <span> <a href="shopping-cart.html"><i
											class="fas fa-shopping-basket"></i></a>
									</span>
								</div>
							</div>
						</div>
						<div class="col-xl-3 col-lg-3 col-md-6">
							<div class="single-dishes">
								<div class="dish-img">
									<img src="AllStyle/assets/images/menu-item/pd2.png"
										style="width: inherit;" alt="">
								</div>
								<div class="dish-content">
									<h5>
										<a href="single-dish.html">喝不完的汤 </a>
									</h5>
									<p>施工方的挂号费答复.</p>
									<span class="price">价格 :￥36.00</span>
								</div>
								<span class="badge">售价</span>
								<div class="cart-opt">
									<span> <a href="#"><i class="fas fa-heart"></i></a>
									</span> <span> <a href="shopping-cart.html"><i
											class="fas fa-shopping-basket"></i></a>
									</span>
								</div>
							</div>
						</div>
						<div class="col-xl-3 col-lg-3 col-md-6">
							<div class="single-dishes">
								<div class="dish-img">
									<img src="AllStyle/assets/images/menu-item/pd2.png"
										style="width: inherit;" alt="">
								</div>
								<div class="dish-content">
									<h5>
										<a href="single-dish.html">风格汉堡 </a>
									</h5>
									<p>拉开圣诞节国防建设</p>
									<span class="price">价格 :￥23.00</span>
								</div>
								<span class="badge">热</span>
								<div class="cart-opt">
									<span> <a href="#"><i class="fas fa-heart"></i></a>
									</span> <span> <a href="shopping-cart.html"><i
											class="fas fa-shopping-basket"></i></a>
									</span>
								</div>
							</div>
						</div>
						<div class="col-xl-3 col-lg-3 col-md-6">
							<div class="single-dishes">
								<div class="dish-img">
									<img src="AllStyle/assets/images/menu-item/pd2.png"
										style="width: inherit;" alt="">
								</div>
								<div class="dish-content">
									<h5>
										<a href="single-dish.html">永远 </a>
									</h5>
									<p>刷卡记录和发掘按时交付</p>
									<span class="price">价格 :￥14.00</span>

								</div>
								<span class="badge"></span>
								<div class="cart-opt">
									<span> <a href="#"><i class="fas fa-heart"></i></a>
									</span> <span> <a href="shopping-cart.html"><i
											class="fas fa-shopping-basket"></i></a>
									</span>
								</div>
							</div>
						</div>
						<div class="col-xl-3 col-lg-3 col-md-6">
							<div class="single-dishes">
								<div class="dish-img">
									<img src="AllStyle/assets/images/menu-item/pd2.png"
										style="width: inherit;" alt="">
								</div>
								<div class="dish-content">
									<h5>
										<a href="single-dish.html">鸡肉堡 </a>
									</h5>
									<p>道路喀什积分氨基酸客户对接</p>
									<span class="badge-color price">价格 :￥12.00</span> <span
										class="rating"> <i class="fas fa-star"></i> 2星
									</span>
								</div>
								<span class="badge"></span>
								<div class="cart-opt">
									<span> <a href="#"><i class="fas fa-heart"></i></a>
									</span> <span> <a href="shopping-cart.html"><i
											class="fas fa-shopping-basket"></i></a>
									</span>
								</div>
							</div>
						</div>
						<div class="col-xl-3 col-lg-3 col-md-6">
							<div class="single-dishes">
								<div class="dish-img">
									<img src="AllStyle/assets/images/menu-item/pd2.png"
										style="width: inherit;" alt="">
								</div>
								<div class="dish-content">
									<h5>
										<a href="single-dish.html">堡堡吃 </a>
									</h5>
									<p>大厦股份尽快发给</p>
									<span class="price">价格 :￥5.00</span>

								</div>
								<span class="badge">售价</span>
								<div class="cart-opt">
									<span> <a href="#"><i class="fas fa-heart"></i></a>
									</span> <span> <a href="shopping-cart.html"><i
											class="fas fa-shopping-basket"></i></a>
									</span>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>


		</div>
	</section>

	<!-- banner-gallery -->
	<section class="banner-gallery padding-top-100 padding-bottom-120">
		<div class="container">
			<div class="row">
				<div class="col-lg-9 col-md-12">
					<div class="row">
						<div class="col-lg-8 col-md-8">
							<div class="gallery-img-1">
								<h3>忙碌的汉堡</h3>
								<p>售价20￥——一周仅此20个！</p>
								<a href="shopping-cart.html" class="btn">立即下单</a> <img
									src="AllStyle/assets/images/gallery/24.png" alt="">

							</div>
						</div>
						<div class="col-lg-4 col-md-4">
							<div
								class="gallery-img-2 d-flex align-items-end justify-content-end">
								<img src=" AllStyle/assets/images/gallery/26.png" alt="">
								<img src="AllStyle/assets/images/shapes/38.png" alt=""
									class="s11"> <span class="gprice-1">￥15</span>
								<div class="gimg-content">
									<h5>超级美味 披萨</h5>
									<a href="shopping-cart.html">立即下单</a>
								</div>
							</div>
						</div>
					</div>
					<div class="row margin-top-30">
						<div class="col-lg-4 col-md-4">
							<div class="gallery-img-3">
								<h5>超级汉堡 汉堡</h5>
								<a href="shopping-cart.html">立即下单</a> <img
									src="AllStyle/assets/images/gallery/23.png" alt=""> <img
									src="AllStyle/assets/images/shapes/layer2.png" alt=""
									class="s12"> <img
									src="AllStyle/assets/images/shapes/113.png" alt="" class="s13">
								<span class="gprice-2">￥15</span>
							</div>
						</div>
						<div class="col-lg-4 col-md-4">
							<div
								class="gallery-img-2 d-flex align-items-end justify-content-end">
								<img src=" AllStyle/assets/images/gallery/26.png" alt="">
								<img src="AllStyle/assets/images/shapes/38.png" alt=""
									class="s11"> <span class="gprice-1">￥15</span>
								<div class="gimg-content">
									<h5>超级美味 披萨</h5>
									<a href="shopping-cart.html">立即下单</a>
								</div>
							</div>
						</div>
						<div class="col-lg-4 col-md-4">
							<div class="gallery-img-3">
								<h5>超级美味 汤</h5>
								<a href="shopping-cart.html">立即下单</a> <img
									src="AllStyle/assets/images/gallery/23.png" alt=""> <img
									src="AllStyle/assets/images/shapes/layer2.png" alt=""
									class="s12"> <img
									src="AllStyle/assets/images/shapes/113.png" alt="" class="s13">
								<span class="gprice-2">￥135</span>
							</div>
						</div>
					</div>
				</div>
				<div class="col-lg-3 col-md-12 ">
					<div class="gallery-img-4">
						<h5>美味 蔬菜</h5>
						<a href="shopping-cart.html" class="btn">立即下单</a> <img
							src="AllStyle/assets/images/gallery/22.png" alt=""> <img
							src="AllStyle/assets/images/shapes/leaves.png" alt="" class="s14">
						<img src="AllStyle/assets/images/shapes/transparent2.png" alt=""
							class="s15"> <span class="gprice-4"><img
							src="AllStyle/assets/images/gallery/25.png" alt=""></span>
					</div>
				</div>
			</div>
		</div>
	</section>

	<!-- countdown -->
	<section class="countdown-area padding-top-120 padding-bottom-120">
		<div class="container">
			<div class="countdown-shapes">
				<span class="cs-1 item-bounce"><img
					src="AllStyle/assets/images/shapes/24.png" alt=""></span> <span
					class="cs-3 item-bounce"><img
					src="AllStyle/assets/images/shapes/26.png" alt=""></span> <span
					class="cs-4 item-animateOne"><img
					src="AllStyle/assets/images/shapes/27.png" alt=""></span> <span
					class="cs-5"><img src="AllStyle/assets/images/shapes/18.png"
					alt=""></span> <span class="cs-6"><img
					src="AllStyle/assets/images/shapes/22.png" alt=""></span> <span
					class="cs-7"><img src="AllStyle/assets/images/shapes/30.png"
					alt=""></span>
			</div>
			<div class="row align-items-center">
				<div class="col-lg-6 col-md-12 col-sm-12 col-12 margin-bottom-20">
					<div class="countdown-left">
						<span class="cs-1"><img
							src="AllStyle/assets/images/shapes/25.png" alt=""></span> <span
							class="cs-2"><img
							src="AllStyle/assets/images/shapes/Leaf.png" alt=""></span> <span
							class="cs-3"><img
							src="AllStyle/assets/images/shapes/Leaf4.png" alt=""></span> <span
							class="cs-4"><img src="AllStyle/assets/images/img/3.png"
							alt=""></span> <span class="cs-5"><img
							src="AllStyle/assets/images/shapes/tomato.png" alt=""></span> <span
							class="cs-6"><img
							src="AllStyle/assets/images/shapes/onions.png" alt=""></span> <span
							class="cs-7"><img
							src="AllStyle/assets/images/shapes/Leaf2.png" alt=""></span> <span
							class="cs-8"><img
							src="AllStyle/assets/images/shapes/Leaf3.png" alt=""></span> <img
							src="AllStyle/assets/images/img/21.png" alt="">
					</div>
				</div>
				<div class="col-lg-5 offset-lg-1 col-md-12 col-sm-12 col-12">
					<div class="countdown-right">
						<div class="common-title-area padding-bottom-20">
							<h3>快来吧！</h3>
							<h2>
								特制鸡肉 披萨 <span>食物 </span>
							</h2>
							<p>感觉到饥饿？ 立即享用你中意的菜品吧！</p>
						</div>
						<div class="count-box countdown">
							<div>
								<span class="days">00</span>
								<p class="days_ref">days</p>
							</div>
							<span class="seperator">:</span>
							<div>
								<span class="hours">00</span>
								<p class="hours_ref">hour</p>
							</div>
							<span class="seperator">:</span>
							<div>
								<span class="minutes">00</span>
								<p class="minutes_ref">minutes</p>
							</div>
							<span class="seperator">:</span>
							<div>
								<span class="seconds">00</span>
								<p class="seconds_ref">seconds</p>
							</div>
						</div>
						<a href="shopping-cart.html" class="btn">立即下单</a>
					</div>
				</div>
			</div>
		</div>
	</section>

	<!-- testimonial -->
	<section class="testimonial padding-bottom-120 padding-top-110">
		<div class="container">
			<div class="testi-shapes">
				<span class="ts-1"><img
					src="AllStyle/assets/images/img/31.png" alt=""></span> <span
					class="ts-2"><img src="AllStyle/assets/images/img/32.png"
					alt=""></span> <span class="ts-3 item-animateTwo"><img
					src="AllStyle/assets/images/shapes/7.png" alt=""></span> <span
					class="ts-4"><img src="AllStyle/assets/images/shapes/26.png"
					alt=""></span>
			</div>
			<div
				class="common-title-area text-center padding-bottom-50 wow fadeInUp">
				<h3>我们的</h3>
				<h2>
					客户 <span>评价</span>
				</h2>
			</div>
			<div class="testimonial-active">
				<div class="single-testimonial">
					<div class="testi-top">
						<div class="tin-shapes">
							<span class="tsin-1"><img
								src="AllStyle/assets/images/shapes/33.png" alt=""></span>

						</div>
						<div class="testi-img">
							<img src="AllStyle/assets/images/testimonial/testi-1.png" alt="">
						</div>
						<div class="testi-meta">
							<h6>乔布斯</h6>
							<p>简称：CEO A4Tech Ltd.</p>
							<div class="testi-rating">
								<span><i class="fas fa-star"></i></span> <span><i
									class="fas fa-star"></i></span> <span><i class="fas fa-star"></i></span>
								<span><i class="fas fa-star"></i></span> <span><i
									class="fas fa-star"></i></span>
							</div>
						</div>
					</div>
					<p>这些菜品真是杆菌又微生啊！本来200斤的我越吃越瘦，简直是减肥必备!</p>
				</div>
				<div class="single-testimonial">
					<div class="testi-top">
						<div class="tin-shapes">
							<span class="tsin-1"><img
								src="AllStyle/assets/images/shapes/33.png" alt=""></span>

						</div>
						<div class="testi-img">
							<img src="AllStyle/assets/images/testimonial/testi-2.png" alt="">
						</div>
						<div class="testi-meta">
							<h6>墨西哥哥</h6>
							<p>简称：武大郎</p>
							<div class="testi-rating">
								<span><i class="fas fa-star"></i></span> <span><i
									class="fas fa-star"></i></span> <span><i class="fas fa-star"></i></span>
								<span><i class="fas fa-star"></i></span> <span><i
									class="fas fa-star"></i></span>
							</div>
						</div>
					</div>
					<p>干净又卫生啊！兄弟们</p>
				</div>
				<div class="single-testimonial">
					<div class="testi-top">
						<div class="tin-shapes">
							<span class="tsin-1"><img
								src="AllStyle/assets/images/shapes/33.png" alt=""></span>

						</div>
						<div class="testi-img">
							<img src="AllStyle/assets/images/testimonial/testi-1.png" alt="">
						</div>
						<div class="testi-meta">
							<h6>成龙</h6>
							<p>简称：Jack Cheng</p>
							<div class="testi-rating">
								<span><i class="fas fa-star"></i></span> <span><i
									class="fas fa-star"></i></span> <span><i class="fas fa-star"></i></span>
								<span><i class="fas fa-star"></i></span> <span><i
									class="fas fa-star"></i></span>
							</div>
						</div>
					</div>
					<p>是兄弟就快来砍我，一起来玩贪玩蓝月！美味披萨等你来品尝！</p>
				</div>
				<div class="single-testimonial">
					<div class="testi-top">
						<div class="tin-shapes">
							<span class="tsin-1"><img
								src="AllStyle/assets/images/shapes/33.png" alt=""></span>

						</div>
						<div class="testi-img">
							<img src="AllStyle/assets/images/testimonial/testi-2.png" alt="">
						</div>
						<div class="testi-meta">
							<h6>吴京</h6>
							<p>简称：无精打采</p>
							<div class="testi-rating">
								<span><i class="fas fa-star"></i></span> <span><i
									class="fas fa-star"></i></span> <span><i class="fas fa-star"></i></span>
								<span><i class="fas fa-star"></i></span> <span><i
									class="fas fa-star"></i></span>
							</div>
						</div>
					</div>
					<p>吃了这家点子的汉堡我拍战狼有有力气了，瞬间打死3头牛！</p>
				</div>
				<div class="single-testimonial">
					<div class="testi-top">
						<div class="tin-shapes">
							<span class="tsin-1"><img
								src="AllStyle/assets/images/shapes/33.png" alt=""></span>

						</div>
						<div class="testi-img">
							<img src="AllStyle/assets/images/testimonial/testi-1.png" alt="">
						</div>
						<div class="testi-meta">
							<h6>甄子丹</h6>
							<p>简称：叶师傅</p>
							<div class="testi-rating">
								<span><i class="fas fa-star"></i></span> <span><i
									class="fas fa-star"></i></span> <span><i class="fas fa-star"></i></span>
								<span><i class="fas fa-star"></i></span> <span><i
									class="fas fa-star"></i></span>
							</div>
						</div>
					</div>
					<p>吃了这家的披萨，瞬间感觉到十分兴奋，我要打十个！</p>
				</div>
				<div class="single-testimonial">
					<div class="testi-top">
						<div class="tin-shapes">
							<span class="tsin-1"><img
								src="AllStyle/assets/images/shapes/33.png" alt=""></span>

						</div>
						<div class="testi-img">
							<img src="AllStyle/assets/images/testimonial/testi-2.png" alt="">
						</div>
						<div class="testi-meta">
							<h6>脱了斯威夫特</h6>
							<p>简称：霉霉</p>
							<div class="testi-rating">
								<span><i class="fas fa-star"></i></span> <span><i
									class="fas fa-star"></i></span> <span><i class="fas fa-star"></i></span>
								<span><i class="fas fa-star"></i></span> <span><i
									class="fas fa-star"></i></span>
							</div>
						</div>
					</div>
					<p>超级中意这家的饮品，老娘唱歌越来越起劲了！</p>
				</div>
			</div>

		</div>
	</section>

	<!-- slider-gallery-img -->
	<div class="slider-gallery-img">
		<div class="container-fluid">
			<div class="slider-gallery-active">
				<div class="single-gallery-img">
					<img src="AllStyle/assets/images/gallery/gm1.jpg" alt="">
				</div>
				<div class="single-gallery-img">
					<img src="AllStyle/assets/images/gallery/gm2.jpg" alt="">
				</div>
				<div class="single-gallery-img">
					<img src="AllStyle/assets/images/gallery/gm3.jpg" alt="">
				</div>
				<div class="single-gallery-img">
					<img src="AllStyle/assets/images/gallery/gm4.jpg" alt="">
				</div>
				<div class="single-gallery-img">
					<img src="AllStyle/assets/images/gallery/gm5.jpg" alt="">
				</div>
				<div class="single-gallery-img">
					<img src="AllStyle/assets/images/gallery/gm6.jpg" alt="">
				</div>
			</div>
		</div>
	</div>

	<!-- delivery-area -->
	<section class="delivery-area padding-top-115 padding-bottom-90">
		<div class="del-shapes">
			<span class="ds-1 item-bounce"><img
				src="AllStyle/assets/images/shapes/35.png" alt=""></span> <span
				class="ds-2"><img src="AllStyle/assets/images/shapes/34.png"
				alt=""></span> <span class="ds-3 item-bounce"><img
				src="AllStyle/assets/images/shapes/17.png" alt=""></span> <span
				class="ds-4 item-animateOne"><img
				src="AllStyle/assets/images/shapes/6.png" alt=""></span>
		</div>
		<div class="container">
			<div class="row">
				<div
					class="col-lg-6 align-self-lg-center col-md-12 margin-bottom-20 wow fadeInLeft">
					<div class="delivery-left">
						<img src="AllStyle/assets/images/bg/delivery-img.png" alt="">
					</div>
				</div>
				<div class="col-lg-6 col-md-12 wow fadeInRight">
					<div class="delivery-right">
						<div class="common-title-area padding-bottom-40">
							<h3>关于餐厅</h3>
							<h2>
								交付的时刻 <span> 正确的时间 & 或地方 </span>
							</h2>
							<p>ood Khan是一家餐厅、酒吧和咖啡烘焙工坊，位于法林顿的埃克斯茅斯市场一个繁忙的角落。
								建筑的两面都是玻璃幕墙，可以俯瞰市场和熙熙攘攘的伦敦庭院。Num交付订单。</p>
							<div class="order-box d-flex align-items-end">
								<span class="order-img"><img
									src="AllStyle/assets/images/icons/1.png" alt=""></span>
								<div class="order-content">
									<p>致电：</p>
									<span>123-59794069</span>
								</div>
								<a href="shopping-cart.html" class="btn">立即下单</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>

	<!-- blog-area -->
	<section class="blog-area padding-top-110 padding-bottom-120">
		<div class="blog-shapes">
			<span class="bs-1"><img
				src="AllStyle/assets/images/img/37.png" alt=""></span>
		</div>
		<div class="container">
			<div
				class="common-title-area text-center padding-bottom-60 wow fadeInUp">
				<h3>食物看看</h3>
				<h2>
					新 & <span> Vlog </span>
				</h2>
			</div>
			<div class="blog-slider-active">
				<div class="single-blog">
					<div class="blog-img">
						<a href="blog-single.html"> <img
							src="AllStyle/assets/images/blog/b-1.jpg" alt=""></a>
						<div class="b-badge">
							<span class="date"><a href="#">周</a></span><br> <span
								class="month"><a href="#">二</a></span>
						</div>
					</div>
					<div class="blog-meta d-flex justify-content-between">
						<span><a href="#"><i class="fas fa-tags"></i> 香辣鸡腿堡</a></span> <span><a
							href="#"><i class="fas fa-user-circle"></i> 闲暇节假日</a></span>
					</div>
					<h4>
						<a href="blog-single.html">美好的一天从美食开始！</a>
					</h4>
				</div>
				<div class="single-blog">
					<div class="blog-img">
						<a href="blog-single.html"> <img
							src="AllStyle/assets/images/blog/b-2.jpg" alt=""></a>
						<div class="b-badge">
							<span class="date"><a href="#">周</a></span><br> <span
								class="month"><a href="#">三</a></span>
						</div>
					</div>
					<div class="blog-meta d-flex justify-content-between">
						<span><a href="#"><i class="fas fa-tags"></i> 披萨</a></span> <span><a
							href="#"><i class="fas fa-user-circle"></i> 闲暇节假日</a></span>
					</div>
					<h4>
						<a href="blog-single.html">美味的披萨</a>
					</h4>
				</div>
				<div class="single-blog">
					<div class="blog-img">
						<a href="blog-single.html"> <img
							src="AllStyle/assets/images/blog/b-3.jpg" alt=""></a>
						<div class="b-badge">
							<span class="date"><a href="#">周</a></span><br> <span
								class="month"><a href="#">四</a></span>
						</div>
					</div>
					<div class="blog-meta d-flex justify-content-between">
						<span><a href="#"><i class="fas fa-tags"></i> 牛肉汉堡</a></span> <span><a
							href="#"><i class="fas fa-user-circle"></i> 闲暇节假日</a></span>
					</div>
					<h4>
						<a href="blog-single.html">带来好运哦</a>
					</h4>
				</div>
				<div class="single-blog">
					<div class="blog-img">
						<a href="blog-single.html"> <img
							src="AllStyle/assets/images/blog/b-1.jpg" alt=""></a>
						<div class="b-badge">
							<span class="date"><a href="#">周</a></span><br> <span
								class="month"><a href="#">五</a></span>
						</div>
					</div>
					<div class="blog-meta d-flex justify-content-between">
						<span><a href="#"><i class="fas fa-tags"></i> 炸鸡汉堡</a></span> <span><a
							href="#"><i class="fas fa-user-circle"></i> 闲暇节假日</a></span>
					</div>
					<h4>
						<a href="blog-single.html">双倍热量，双倍快乐</a>
					</h4>
				</div>
				<div class="single-blog">
					<div class="blog-img">
						<a href="blog-single.html"> <img
							src="AllStyle/assets/images/blog/b-2.jpg" alt=""></a>
						<div class="b-badge">
							<span class="date"><a href="#">周</a></span><br> <span
								class="month"><a href="#">六</a></span>
						</div>
					</div>
					<div class="blog-meta d-flex justify-content-between">
						<span><a href="#"><i class="fas fa-tags"></i> 披萨</a></span> <span><a
							href="#"><i class="fas fa-user-circle"></i> 闲暇节假日</a></span>
					</div>
					<h4>
						<a href="blog-single.html">美味披萨快来试试吧！</a>
					</h4>
				</div>
				<div class="single-blog">
					<div class="blog-img">
						<a href="blog-single.html"> <img
							src="AllStyle/assets/images/blog/b-3.jpg" alt=""></a>
						<div class="b-badge">
							<span class="date"><a href="#">周</a></span><br> <span
								class="month"><a href="#">日</a></span>
						</div>
					</div>
					<div class="blog-meta d-flex justify-content-between">
						<span><a href="#"><i class="fas fa-tags"></i> 羊肉汉堡</a></span> <span><a
							href="#"><i class="fas fa-user-circle"></i> 闲暇节假日</a></span>
					</div>
					<h4>
						<a href="blog-single.html">硬汉必备</a>
					</h4>
				</div>

			</div>
		</div>
	</section>

	<!-- footer area -->
	<footer class="padding-top-40 padding-bottom-40">
		<div class="fo-shapes">
			<span class="fs-1"><img
				src="AllStyle/assets/images/gallery/26.png" alt=""></span> <span
				class="fs-2 item-bounce"><img
				src="AllStyle/assets/images/shapes/25.png" alt=""></span> <span
				class="fs-3 item-bounce"><img
				src="AllStyle/assets/images/shapes/26.png" alt=""></span> <span
				class="fs-4 item-bounce"><img
				src="AllStyle/assets/images/shapes/27.png" alt=""></span> <span
				class="fs-5 item-animateTwo"><img
				src="AllStyle/assets/images/shapes/3.png" alt=""></span> <span
				class="fs-6"><img src="AllStyle/assets/images/shapes/22.png"
				alt=""></span> <span class="fs-7"><img
				src="AllStyle/assets/images/shapes/30.png" alt=""></span>
		</div>
		<div class="footer-top d-none d-md-block">
			<div class="container">
				<div
					class="row align-items-center justify-content-between padding-bottom-25">
					<div class="col-lg-3 col-md-3">
						<div class="f-logo">
							<a href="index.html"> <img
								src="AllStyle/assets/images/logo/logo.png" alt=""></a>
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
	<!-- <div class="loader-container" style="background-color: #1B1B1D;">
		<img src="img/6.gif">
	</div> -->

	<!-- Javascript Files -->
	<script src="AllStyle/assets/js/vendor/jquery-2.2.4.min.js"></script>
	<script src="AllStyle/assets/js/vendor/bootstrap.min.js"></script>
	<script src="AllStyle/assets/js/vendor/jquery.meanmenu.min.js"></script>
	<script src="AllStyle/assets/js/vendor/jquery.magnific-popup.min.js"></script>
	<script src="AllStyle/assets/js/vendor/slick.min.js"></script>
	<script src="AllStyle/assets/js/vendor/counterup.min.js"></script>
	<script src="AllStyle/assets/js/vendor/countdown.js"></script>
	<script src="AllStyle/assets/js/vendor/waypoints.min.js"></script>
	<script src="AllStyle/assets/js/vendor/jquery-ui.js"></script>
	<script src="AllStyle/assets/js/vendor/isotope.pkgd.min.js"></script>
	<script src="AllStyle/assets/js/vendor/easing.min.js"></script>
	<script src="AllStyle/assets/js/vendor/wow.min.js"></script>
	<script src="AllStyle/assets/js/main.js"></script>

	<script src="js/jquery-1.12.4.js" type="text/javascript"
		charset="utf-8"></script>
</body>
<script type="text/javascript">
	//初始化
	var docUrl = unescape(window.location.search);
	if (docUrl.indexOf("-") != -1) {
		var nodes = docUrl.substring(1).split("-");
		var img = nodes[0];
		document.getElementById("Clien_Name").innerHTML = img;

	}
</script>
<script type="text/javascript">
	//获取载入本页面的url
	//alert(${cus.userName});
	var urlp = document.referrer;
	if (urlp == "") {
		//alert("您当前未登录！进入游客模式！");
		setTimeout(function() {
			swal("您当前未登录！进入游客模式！", "", "error");
		}, 100);
		document.getElementById("loginbtn").style.visibility = "visible";
		document.getElementById("Clien_Name").style.visibility = "hidden";
		document.getElementById("Clien_Name").innerHTML = "";
		document.getElementById("nihao").innerHTML = "";
		document.getElementById("nihao").style.visibility = "hidden";

	} else {
		/* document.getElementById("infoSSS").innerHTML = "您好!"; */
		document.getElementById("loginbtn").style.visibility = "hidden";
		document.getElementById("Clien_Name").style.visibility = "visible";
	}
	//使用setTime()等待~秒
</script>
<script type="text/javascript">
	function loader() {
		document.querySelector('.loader-container').classList.add('fade-out');
	}

	function fadeOut() {
		setInterval(loader, 3000);
	}

	window.onload = fadeOut();
</script>
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
</html>

