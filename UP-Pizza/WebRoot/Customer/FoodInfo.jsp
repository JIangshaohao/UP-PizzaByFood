<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<!DOCTYPE HTML>
<html>
<head>
<title>美食秘密</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="" />
<script type="application/x-javascript">
	
			addEventListener("load", function() {
				setTimeout(hideURLbar, 0);
			}, false);

			function hideURLbar() {
				window.scrollTo(0, 1);
			}
		
</script>
<!-- Custom Theme files -->
<link href="BigStyle/css/bootstrap.css" rel="stylesheet" type="text/css"
	media="all" />
<link href="BigStyle/css/style.css" rel="stylesheet" type="text/css"
	media="all" />
<!-- js -->
<script src="BigStyle/js/jquery-1.11.1.min.js"></script>
<!-- //js -->
<!-- animation-effect -->
<link href="BigStyle/css/animate.min.css" rel="stylesheet">
<script src="BigStyle/js/wow.min.js"></script>
<script>
	new WOW().init();
</script>
<!-- //animation-effect -->
<link href='https://fonts.googleapis.com/css?family=Alex+Brush'
	rel='stylesheet' type='text/css'>
<link
	href='https://fonts.googleapis.com/css?family=Cabin:400,400italic,500,500italic,600,600italic,700,700italic'
	rel='stylesheet' type='text/css'>
</head>

<body>
	<!-- header -->
	<div class="header">
		<div class="container">
			<nav class="navbar navbar-default">
				<!-- Brand and toggle get grouped for better mobile display -->
				<div class="navbar-header">
					<button type="button" class="navbar-toggle collapsed"
						data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
						<span class="sr-only">Toggle navigation</span> <span
							class="icon-bar"></span> <span class="icon-bar"></span> <span
							class="icon-bar"></span>
					</button>
					<div class="logo">
						<a class="navbar-brand" href="index.jsp">UP-Pizza</a>
					</div>
				</div>

				<!-- Collect the nav links, forms, and other content for toggling -->
				<div class="collapse navbar-collapse nav-wil"
					id="bs-example-navbar-collapse-1">
					<nav class="cl-effect-13" id="cl-effect-13">
						<ul class="nav navbar-nav">
							<li><a href="index.jsp" class="active">主页</a></li>
							<li role="presentation" class="dropdown"><a
								class="dropdown-toggle" data-toggle="dropdown"
								href="/UP-Pizza/CustomerChowPictureServlet" role="button"
								aria-haspopup="true" aria-expanded="false"> 菜单 <span
									class="caret"></span>
							</a>
								<ul class="dropdown-menu">
									<li><a href="/UP-Pizza/CustomerChowHanbaoServlet">美味汉堡</a></li>
									<li><a href="/UP-Pizza/CustomerChowSweetsServlet">回味甜点</a></li>
									<li><a href="/UP-Pizza/CustomerChowBreakfastServlet">健康早餐</a></li>
									<li><a href="/UP-Pizza/CustomerChowHanbaoServlet">美味披萨</a></li>
									<li><a href="/UP-Pizza/CustomerChowHanbaoServlet">可口冰淇淋</a></li>
									<li><a href="/UP-Pizza/CustomerChowHanbaoServlet">可口饮料</a></li>
								</ul></li>
							<li><a href="Boke.jsp">博客</a></li>
							<li><a href="/UP-Pizza/CustomerCartServlet">购物车</a></li>
							<li><a href="/UP-Pizza/getAlsoCusServlet02">客服</a></li>
						</ul>
					</nav>
					<!-- <div class="social-icons">
						<ul>
							<li><a class="icon-link round facebook" href="#"></a></li>
							<li><a class="icon-link round p" href="#"></a></li>
							<li><a class="icon-link round twitter" href="#"></a></li>
							<li><a class="icon-link round dribble" href="#"></a></li>
						</ul>
					</div> -->
				</div>
				<!-- /.navbar-collapse -->
			</nav>
		</div>
	</div>
	<!-- header -->
	<!-- banner -->
	<div class="banner">
		<div class="container">
			<div class="banner-info">
				<h1 class="animated fadeInLeftBig" data-wow-duration="1000ms"
					data-wow-delay="300ms">
					非常感谢您对我们产品的支持！<span>我们会持续不断努力，不辜负大家的期望！</span>
				</h1>
				<div class="banner-info1 animated wow fadeInDown"
					data-wow-duration="1000ms" data-wow-delay="300ms">
					<ul id="flexiselDemo1">
						<li>
							<div class="banner-info1-grid">
								<img src="BigStyle/images/1.png" alt=" " class="img-responsive" />
								<h3>牛肉汉堡</h3>
								<p>干净又卫生啊！兄弟们</p>
							</div>
						</li>
						<li>
							<div class="banner-info1-grid">
								<img src="BigStyle/images/2.png" alt=" " class="img-responsive" />
								<h3>香辣鸡腿堡</h3>
								<p>配上可乐简直是人间一大享受！</p>
							</div>
						</li>
						<li>
							<div class="banner-info1-grid">
								<img src="BigStyle/images/3.png" alt=" " class="img-responsive" />
								<h3>美味早餐</h3>
								<p>不好好吃早餐怎么对得起自己的身体呢？</p>
							</div>
						</li>
					</ul>
					<script type="text/javascript">
						$(window).load(function() {
							$("#flexiselDemo1").flexisel({
								visibleItems : 3,
								animationSpeed : 1000,
								autoPlay : true,
								autoPlaySpeed : 3000,
								pauseOnHover : true,
								enableResponsiveBreakpoints : true,
								responsiveBreakpoints : {
									portrait : {
										changePoint : 480,
										visibleItems : 1
									},
									landscape : {
										changePoint : 640,
										visibleItems : 2
									},
									tablet : {
										changePoint : 768,
										visibleItems : 2
									}
								}
							});

						});
					</script>
					<script type="text/javascript" src="BigStyle/js/jquery.flexisel.js"></script>
					<div class="more wow fadeInUp" data-wow-duration="1000ms"
						data-wow-delay="300ms">
						<a href="/UP-Pizza/CustomerChowPictureServlet" class="hvr-curl-bottom-right">去菜单看看</a>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- //banner -->
	<!-- banner-bottom -->
	<div class="banner-bottom">
		<div class="container">
			<div class="banner-bottom-grids">
				<div class="col-md-5 banner-bottom-grid wow fadeInRightBig"
					data-wow-duration="1000ms" data-wow-delay="300ms">
					<h2>五谷坚果墙</h2>
					<p>"坚持食用坚果有利于身体的微量元素补充， 世上有三美，美景、美食、美人。愿携自己的美人，与其共赏天下美景，共品人间美食！</p>
					<div class="more">
						<a href="#" class="hvr-curl-bottom-right">点个赞！</a>
					</div>
				</div>
				<div class="col-md-7 banner-bottom-grid wow flipInY"
					data-wow-duration="1000ms" data-wow-delay="300ms">
					<div class="banner-bottom-grid1">
						<img src="BigStyle/images/1.jpg" alt=" " class="img-responsive" />
						<div class="banner-bottom-grid-pos">
							<div class="progress">
								<div class="progress-bar" role="progressbar" aria-valuenow="30"
									aria-valuemin="0" aria-valuemax="100" style="width: 30%;">
									<span class="sr-only">30% Complete</span>
								</div>
							</div>
							<div class="progress progress1">
								<div class="progress-bar" role="progressbar" aria-valuenow="20"
									aria-valuemin="0" aria-valuemax="100" style="width: 20%;">
									<span class="sr-only">20% Complete</span>
								</div>
							</div>
							<div class="progress progress2">
								<div class="progress-bar" role="progressbar" aria-valuenow="30"
									aria-valuemin="0" aria-valuemax="100" style="width: 30%;">
									<span class="sr-only">30% Complete</span>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="clearfix"></div>
			</div>
			<div class="banner-bottom-grids">
				<div class="col-md-6 banner-bottom-grid-1 wow flipInY"
					data-wow-duration="1000ms" data-wow-delay="300ms">
					<div class="banner-bottom-grid-11">
						<img src="BigStyle/images/2.jpg" alt=" " class="img-responsive" />
						<div class="banner-bottom-grid-11-pos">
							<p>西班牙海鲜饭是西餐三大名菜之一，与法国蜗牛，意大利面齐名。西班牙人对于海洋的热爱，除了曾经造就的无敌舰队，还有各种出神入化的海鲜料理。据说还救过哥伦布的命。源于西班牙鱼米之都华伦西亚，直译就是大锅炖饭。此饭是当地星期日与法耶火节（Falles）的食品。</p>
							<div class="more m1">
								<a href="#" class="hvr-curl-bottom-right">点个赞！</a>
							</div>
						</div>
					</div>
				</div>
				<div class="col-md-6 banner-bottom-grid-1 wow fadeInLeftBig"
					data-wow-duration="1500ms" data-wow-delay="100ms">
					<h3>栗子甜炒核桃</h3>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
	</div>
	<!-- //banner-bottom -->
	<!-- newsletter -->
	<div class="newsletter">
		<div class="container">
			<div class="newsletter-info">
				<h3 class="wow fadeInUp" data-wow-duration="1000ms"
					data-wow-delay="300ms">新品</h3>
				<p class="wow fadeInUp" data-wow-duration="1000ms"
					data-wow-delay="300ms">或您的好奇心非常强烈，那么建议您尝试一下我们的新品</p>
				<form class="wow fadeInLeftBig" data-wow-duration="1000ms"
					data-wow-delay="300ms">
					<input type="mail" value="输入您的邮箱地址!" onfocus="this.value = '';"
						onblur="if (this.value == '') {this.value = 'Enter Your Email';}"
						required=""> <input type="submit" value="提交">
				</form>
			</div>
		</div>
	</div>
	<!-- //newsletter -->
	<!-- newsletter-bottom -->
	<div class="newsletter-bottom">
		<div class="container">
			<div class="newsletter-bottom-grids">
				<div class="col-md-6 newsletter-bottom-grid wow fadeInLeftBig"
					data-wow-duration="1000ms" data-wow-delay="300ms">
					<h3>无敌牛肉巨无霸汉堡</h3>
					<p>我们的平台每周都有挑战赛，或是能在8分钟吃完这个汉堡，那么就可以免单，若是不行，那么就双倍支付。 您敢来挑战吗？</p>
					<div class="more">
						<a href="#" class="hvr-curl-bottom-right">点个赞！</a>
					</div>
				</div>
				<div class="col-md-6 newsletter-bottom-grid wow flipInY"
					data-wow-duration="1000ms" data-wow-delay="300ms">
					<img src="BigStyle/images/4.jpg" alt=" " class="img-responsive" />
				</div>
				<div class="clearfix"></div>
			</div>
			<div class="newsletter-bottom-grids">
				<div class="col-md-6 newsletter-bottom-grid wow flipInY"
					data-wow-duration="1000ms" data-wow-delay="300ms">
					<img src="BigStyle/images/5.jpg" alt=" " class="img-responsive" />
				</div>
				<div class="col-md-6 newsletter-bottom-grid  wow fadeInLeftBig"
					data-wow-duration="1000ms" data-wow-delay="300ms">
					<h3>香辣烤肉披萨</h3>
					<p>这绝对是肉食者的福音呀！满满的烤肉与鸡汁，浓厚的香味，如果您有节食的状况，那么我建议您试试。
						据说再没有胃口的小可爱，看到这款产品和闻到香味都会忍不住尝一口！</p>
					<div class="more">
						<a href="#" class="hvr-curl-bottom-right">点个赞！</a>
					</div>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
	</div>
	<!-- //newsletter-bottom -->
	<!-- footer -->
	<div class="footer">
		<div class="container">
			<div class="footer-grids">
				<div class="col-md-3 footer-grid wow fadeInUp"
					data-wow-duration="1000ms" data-wow-delay="300ms">
					<h3>我们的大厨</h3>
					<div class="footer-grd-left">
						<img src="BigStyle/images/6.jpg" class="img-responsive" alt=" " />
					</div>
					<div class="footer-grd-left">
						<p>这是我们的洋鬼子，虽然总是喜欢放洋屁，但是我们都很喜欢他————他做的菜，要是他连做菜都不好吃，那么他早就滚蛋了！</p>
					</div>
					<div class="clearfix"></div>
				</div>
				<div class="col-md-3 footer-grid wow fadeInUp"
					data-wow-duration="1000ms" data-wow-delay="300ms">
					<h3>合作伙伴</h3>
					<ul>
						<li><a href="#">美团</a></li>
						<li><a href="#">饿了么</a></li>
						<li><a href="#">百度外卖</a></li>
						<li><a href="#">饿死了么</a></li>
						<li><a href="#">洋葱</a></li>
						<li><a href="#">莫妮卡</a></li>
					</ul>
				</div>
				<div class="col-md-3 footer-grid wow fadeInUp"
					data-wow-duration="1000ms" data-wow-delay="300ms">
					<h3>我们的福利</h3>
					<ul>
						<li><a href="#">喜欢坑钱</a></li>
						<li><a href="#">如果你钱多就来</a></li>
						<li><a href="#">杆菌又微生</a></li>
						<li><a href="#">我们公司妹子多</a></li>
						<li><a href="#">我们喜欢放洋屁的大厨————的菜</a></li>
						<li><a href="#">实在想不到其他恶搞词了</a></li>
					</ul>
				</div>
				<div class="col-md-3 footer-grid wow fadeInUp"
					data-wow-duration="1000ms" data-wow-delay="300ms">
					<h3>推荐食物</h3>
					<div class="footer-grd">
						<a href="#"><img src="BigStyle/images/7.jpg"
							class="img-responsive" alt=" " /></a>
					</div>
					<div class="footer-grd">
						<a href="#"><img src="BigStyle/images/8.jpg"
							class="img-responsive" alt=" " /></a>
					</div>
					<div class="footer-grd">
						<a href="#"><img src="BigStyle/images/7.jpg"
							class="img-responsive" alt=" " /></a>
					</div>
					<div class="clearfix"></div>
					<div class="footer-grd">
						<a href="#"><img src="BigStyle/images/8.jpg"
							class="img-responsive" alt=" " /></a>
					</div>
					<div class="footer-grd">
						<a href="#"><img src="BigStyle/images/7.jpg"
							class="img-responsive" alt=" " /></a>
					</div>
					<div class="footer-grd">
						<a href="#"><img src="BigStyle/images/8.jpg"
							class="img-responsive" alt=" " /></a>
					</div>
					<div class="clearfix"></div>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
	</div>
	<!-- <div class="footer-bottom wow fadeInUp" data-wow-duration="1000ms" data-wow-delay="300ms">
			<div class="container">
				<p>Copyright &copy; 2016.Company name All rights reserved.More Templates <a href="http://www.baisheng999.com/"
					 target="_blank" title="网站模板库">网站模板库</a> - Collect from <a href="http://www.baisheng999.com/" title="网页模板" target="_blank">网页模板</a></p>
			</div>
		</div> -->
	<!-- //footer -->
	<!-- for bootstrap working -->
	<script src="BigStyle/js/bootstrap.js"></script>
	<!-- //for bootstrap working -->
</body>
</html>

