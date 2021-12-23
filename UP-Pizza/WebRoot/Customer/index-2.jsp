<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<!--[if IE 8 ]><html class="ie ie8" lang="en"> <![endif]-->
<!--[if (gte IE 9)|!(IE)]><!-->
<html lang="en">
<!--<![endif]-->
<head>

<!-- Basic Page Needs
================================================== -->
<meta charset="utf-8">
<title>甜点</title>

<!-- Mobile Specific Metas
================================================== -->
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1">

<!-- CSS
================================================== -->
<link rel="stylesheet" href="Customer/css/style_1.css">
<link rel="stylesheet" href="Customer/css/colors/green.css" id="colors">
<link rel="stylesheet" type="text/css"
	href="Customer/CSS_alert_JS/sweet-alert.css">
<script src="Customer/CSS_alert_JS/sweet-alert.min.js"></script>
<!--[if lt IE 9]>
	<script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
<![endif]-->

</head>

<body>

	<!-- Wrapper -->
	<div id="wrapper">


		<!-- Header
================================================== -->
		<header id="header">

			<!-- Container -->
			<div class="container">

				<!-- Logo / Mobile Menu -->
				<div class="three columns">
					<div id="logo">
						<h1>
							<a href="index.jsp"><img src="Customer/Food/images/logo.png"
								alt="Chow" /></a>
						</h1>
					</div>
				</div>


				<!-- Navigation
================================================== -->
				<div class="thirteen columns navigation">

					<nav id="navigation" class="menu nav-collapse">
						<ul>
							<li><a href="Customer/index.jsp" id="current">主页</a></li>

							<li><a href="#">菜单</a>
								<ul>
									<li><a href="/UP-Pizza/CustomerChowHanbaoServlet">美味汉堡</a></li>
									<li><a href="/UP-Pizza/CustomerChowSweetsServlet">回味甜点</a></li>
									<li><a href="/UP-Pizza/CustomerChowBreakfastServlet">健康早餐</a></li>
									<li><a href="/UP-Pizza/CustomerChowHanbaoServlet">美味披萨</a></li>
									<li><a href="/UP-Pizza/CustomerChowHanbaoServlet">可口冰淇淋</a></li>
									<li><a href="/UP-Pizza/CustomerChowHanbaoServlet">可口饮料</a></li>
								</ul></li>

							<li><a href="#">热卖美食</a>
								<ul>
									<li><a href="/UP-Pizza/CustomerChowHanbaoServlet">美味汉堡</a></li>
									<li><a href="/UP-Pizza/CustomerChowSweetsServlet">回味甜点</a></li>
									<li><a href="/UP-Pizza/CustomerChowBreakfastServlet">健康早餐</a></li>
								</ul></li>

							<li><a href="/UP-Pizza/CustomerChowHanbaoServlet">非常推荐</a></li>

							<li><a href="/UP-Pizza/CustomerCartServlet">购物车</a></li>

							<li><a href="Customer/Kefu.jsp">客服</a></li>
						</ul>
					</nav>

				</div>

			</div>
			<!-- Container / End -->
		</header>


		<!-- Slider
================================================== -->

		<div id="homeSlider" class="royalSlider rsDefaultInv">

			<!-- Slide #1 -->
			<div class="rsContent">
				<a class="rsImg" href="Customer/Food/sliderA_01.jpg"></a> <i
					class="rsTmb">墨西哥烤玉米 <br>
				</i>

				<div class="SlideTitleContainer rsABlock">
					<div class="CaptionAlignment">
						<div class="rsSlideTitle tags">
							<ul>
								<li>烘焙</li>
							</ul>
							<div class="clearfix"></div>
						</div>

						<h2 class="rsSlideTitle title">
							<a href="#">墨西哥烤玉米</a>回忆最深处的味道
						</h2>

						<div class="rsSlideTitle details">
							<ul>
								<li>4 种配方</li>
								<li>30 分钟</li>
								<li><a href="#">厨师：桑德拉-福延</a></li>
							</ul>
						</div>

						<a href="Customer/recipe-page-1.jsp" class="rsSlideTitle button">查看</a>
					</div>
				</div>

			</div>

			<!-- Slide #2 -->
			<div class="rsContent">
				<a class="rsImg" href="Customer/Food/sliderA_02.jpg"></a> <i
					class="rsTmb">柠檬烤鸡肉 <br>
				</i>

				<!-- Slide Caption -->
				<div class="SlideTitleContainer rsABlock">
					<div class="CaptionAlignment">
						<div class="rsSlideTitle tags">
							<ul>
								<li>咖喱</li>
							</ul>
							<div class="clearfix"></div>
						</div>

						<h2 class="rsSlideTitle title">
							<a href="#">柠檬烤鸡肉 <br></a>酸爽柠檬汁
						</h2>

						<div class="rsSlideTitle details">
							<ul>
								<li>4 种配方</li>
								<li>1 时 20 分钟</li>
								<li><a href="#">厨师：姜少豪</a></li>
							</ul>
						</div>

						<a href="Customer/recipe-page-1.jsp" class="rsSlideTitle button">查看</a>
					</div>
				</div>

			</div>

			<!-- Slide #3 -->
			<div class="rsContent">
				<a class="rsImg" href="Customer/Food/sliderA_03.jpg"></a> <i
					class="rsTmb">梨瓜沙拉<br></i>

				<!-- Slide Caption -->
				<div class="SlideTitleContainer rsABlock">
					<div class="CaptionAlignment">
						<div class="rsSlideTitle tags">
							<ul>
								<li>沙拉</li>
							</ul>
							<div class="clearfix"></div>
						</div>

						<h2 class="rsSlideTitle title">
							<a href="#">梨瓜沙拉</a>青柠解腻汁
						</h2>

						<div class="rsSlideTitle details">
							<ul>
								<li>1 种配方</li>
								<li>15 分钟</li>
								<li><a href="#">厨师：李佳兴</a></li>
							</ul>
						</div>

						<a href="Customer/recipe-page-1.jsp" class="rsSlideTitle button">查看</a>
					</div>
				</div>

			</div>

			<!-- Slide #4 -->
			<div class="rsContent">
				<a class="rsImg" href="Customer/Food/sliderA_04.jpg"></a> <i
					class="rsTmb">大块炖牛肉</i>

				<!-- Slide Caption -->
				<div class="SlideTitleContainer rsABlock">
					<div class="CaptionAlignment">
						<div class="rsSlideTitle tags">
							<ul>
								<li>牛肉</li>
							</ul>
							<div class="clearfix"></div>
						</div>

						<h2 class="rsSlideTitle title">
							<a href="#">大块炖牛肉</a>
						</h2>

						<div class="rsSlideTitle details">
							<ul>
								<li>4 种配方</li>
								<li>2 时 30 分钟</li>
								<li><a href="#">厨师：姜少豪</a></li>
							</ul>
						</div>

						<a href="Customer/recipe-page-1.jsp" class="rsSlideTitle button">查看</a>
					</div>
				</div>

			</div>

			<!-- Slide #5 -->
			<div class="rsContent">
				<a class="rsImg" href="Customer/Food/sliderA_05.jpg"></a> <i
					class="rsTmb">农家蔬菜 <br> 大麦汤
				</i>

				<!-- Slide Caption -->
				<div class="SlideTitleContainer rsABlock">
					<div class="CaptionAlignment">
						<div class="rsSlideTitle tags">
							<ul>
								<li>汤</li>
							</ul>
							<div class="clearfix"></div>
						</div>

						<h2 class="rsSlideTitle title">
							<a href="#">农家蔬菜和大麦汤</a>
						</h2>

						<div class="rsSlideTitle details">
							<ul>
								<li>4 种配方</li>
								<li>1 时 30 分钟</li>
								<li><a href="#">厨师：李佳兴</a></li>
							</ul>
						</div>

						<a href="Customer/recipe-page-1.jsp" class="rsSlideTitle button">查看</a>
					</div>
				</div>

			</div>

		</div>



		<!-- Content
================================================== -->
		<div class="container">

			<!-- Masonry -->
			<div class="twelve columns ">

				<!-- Headline -->
				<h3 class="headline">好心情甜点</h3>
				<span class="line rb margin-bottom-35"></span>
				<div class="clearfix"></div>

				<!-- Isotope -->
				<div class="list-style">

					<!-- Recipe #1 -->
					<c:forEach items="${food }" var="f" varStatus="vs">
						<c:choose>
							<c:when test="${f.tid==1}">
								<div class="four recipe-box columns">

									<!-- Thumbnail -->
									<div class="thumbnail-holder">
										<a> <img src="Customer/Food/${f.imageName }" alt="" />
											<div class="hover-cover"></div>
											<div class="hover-icon" onclick="show(${f.id})"
												style="cursor: pointer;">查看</div>
										</a>
									</div>

									<!-- Content -->
									<div class="recipe-box-content">
										<h3>
											<a>${f.name}</a>
										</h3>

										<p>${f.info }</p>

										<div class="rating five-stars">
											<div class="star-rating"></div>
											<div class="star-bg"></div>
										</div>

										<div class="meta-alignment">
											<div class="recipe-meta">
												热销价： <a href="#">${f.xprice }￥</a><br>
												&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input
													type="button" onclick="buy(${f.id})" value="购买"
													style="color:#000;background-color: #FFFAE8;font-weight: bold;" />
											</div>
											<div class="recipe-meta">30 分钟</div>
											<div class="recipe-meta">4 位烹饪厨师</div>
										</div>

										<div class="clearfix"></div>
									</div>
								</div>
							</c:when>
							<c:otherwise>

							</c:otherwise>

						</c:choose>

					</c:forEach>
				</div>

				<div class="clearfix"></div>

				<!-- Pagination -->
				<div class="pagination-container masonry">
					<nav class="pagination">
						<ul>
							<li id="hre"><c:if test="${pageNum==1 }">首页&nbsp;</c:if> <c:if
									test="${pageNum!=1 }">
									<a href="CustomerChowSweetsServlet?pageNum=1"
										class="current-page">首页</a>
									<a href="CustomerChowSweetsServlet?pageNum=${pageNum-1}">上一页</a>
								</c:if> <c:forEach var="i" begin="1" end="${pageCount }" step="1">
									<a href="CustomerChowSweetsServlet?pageNum=${i}"
										<c:if test="${pageNum==i }">class="current-page"</c:if>>${i}</a>
								</c:forEach> <c:choose>
									<c:when test="${pageNum==pageCount }">
			下一页
			末页
			</c:when>
									<c:otherwise>
										<a href="CustomerChowSweetsServlet?pageNum=${pageNum+1 }">下一页</a>
										<a href="CustomerChowSweetsServlet?pageNum=${pageCount }"
											class="current-page">末页</a>
									</c:otherwise>
								</c:choose> 当前${pageNum }/${pageCount }页</li>
						</ul>
					</nav>

					<nav class="pagination-next-prev">
						<ul>
							<li><a
								href="CustomerChowSweetsServlet?pageNum=${pageNum-1 }"
								class="prev">◀</a></li>
							<li><a
								href="CustomerChowSweetsServlet?pageNum=${pageNum+1 }"
								class="next">▶</a></li>
						</ul>
					</nav>
				</div>
			</div>

			<script type="text/javascript" src="Customer/js/jquery-1.12.4.js"></script>
			<script type="text/javascript">
				//每个商品对应的商品详情
				function show(fids) {
					//alert(fids);
					window.location.href = "/UP-Pizza/CustomerShowXqServlet?fid="
							+ fids;

				}
			</script>
			<script type="text/javascript">
				//实现加入购物车
				function buy(fid) {
					//判断是否登录
					if (${cus==null}) {
						window.location.href = "Customer/Login.jsp";
						return;
					}

					//如果已经登录了，Ajax方法传递fid
					$.ajax({
						url : "CustomerAddFoodByCartServlet",
						type : "get",
						data : {
							"fid" : fid
						},
						dataType : "text",//可以返回true或false
						success : callback

					});

					function callback(data) {
						if (data == "true") {
							//alert("+1");
							swal("已加入购物车!", "",
									"success");

						} else {
							alert("老子出错了！");

						}

					}

				}
			</script>

			<!-- Sidebar
================================================== -->
			<div class="four columns">

				<!-- Search Form -->
				<div class="widget search-form">
					<nav class="search">
						<form action="#" method="get">
							<button>
								<i class="fa fa-search"></i>
							</button>
							<input class="search-field" type="text"
								placeholder="Search for recipes" value="" />
						</form>
					</nav>
					<div class="clearfix"></div>
				</div>


				<!-- Categories -->
				<div class="widget">
					<h4 class="headline">菜单</h4>
					<span class="line margin-bottom-20"></span>
					<div class="clearfix"></div>

					<ul class="categories">
						<li><a href="#">中餐 <span>(2)</span></a></li>
						<li><a href="#">早餐 <span>(2)</span></a></li>
						<li><a href="#">汤 <span>(2)</span></a></li>
						<li><a href="#">沙拉 <span>(2)</span></a></li>
						<li><a href="#">牛肉 <span>(2)</span></a></li>
						<li><a href="#">素食 <span>(2)</span></a></li>
						<li><a href="#">西餐 <span>(2)</span></a></li>
						<li><a href="#">蔬菜 <span>(2)</span></a></li>
					</ul>
				</div>


				<!-- Popular Recipes -->
				<div class="widget">
					<h4 class="headline">分享</h4>
					<span class="line margin-bottom-30"></span>
					<div class="clearfix"></div>

					<ul class="share-buttons">
						<li class="facebook-share"><a href="#"> <span
								class="counter">1,234</span> <span class="counted">粉丝</span> <span
								class="action-button">喜欢</span>
						</a></li>

						<li class="twitter-share"><a href="#"> <span
								class="counter">863</span> <span class="counted">关注者</span> <span
								class="action-button">关注者</span>
						</a></li>

						<li class="google-plus-share"><a href="#"> <span
								class="counter">902</span> <span class="counted">关注者</span> <span
								class="action-button">关注者</span>
						</a></li>
					</ul>
					<div class="clearfix"></div>
				</div>

			</div>


		</div>
		<!-- Container / End -->

		<div class="margin-top-5"></div>


	</div>
	<!-- Wrapper / End -->


	<!-- Footer
================================================== -->
	<div id="footer">

		<!-- Container -->
		<div class="container">

			<div class="five columns">
				<!-- Headline -->
				<h3 class="headline footer">说明</h3>
				<span class="line"></span>
				<div class="clearfix"></div>
				<p>或许你看到这些图片就已经觉得很好吃了，没错!当真正到你嘴边的时候，绝对不会让你失望的！</p>
			</div>

			<div class="three columns">

				<!-- Headline -->
				<h3 class="headline footer">档案</h3>
				<span class="line"></span>
				<div class="clearfix"></div>

				<ul class="footer-links">
					<li><a href="#">6月 2014</a></li>
					<li><a href="#">7月 2014</a></li>
					<li><a href="#">8月 2014</a></li>
					<li><a href="#">9月 2014</a></li>
					<li><a href="#">10月 2014</a></li>
				</ul>

			</div>

			<div class="three columns">

				<!-- Headline -->
				<h3 class="headline footer">食谱</h3>
				<span class="line"></span>
				<div class="clearfix"></div>

				<ul class="footer-links">
					<li><a>浏览食谱</a></li>
					<li><a>配方页</a></li>
					<li><a>提交配方</a></li>
				</ul>

			</div>

			<div class="five columns">

				<!-- Headline -->
				<h3 class="headline footer">新闻稿</h3>
				<span class="line"></span>
				<div class="clearfix"></div>
				<p>注册以接受有关新产品公告，礼品创意，销售等方面的电子邮件更新。</p>

				<form action="#" method="get">
					<input class="newsletter" type="text" placeholder="邮箱" value="" />
					<button class="newsletter-btn" type="submit">订阅</button>

				</form>
			</div>

		</div>
		<!-- Container / End -->

	</div>
	<!-- Footer / End -->

	<!-- Footer Bottom / Start -->
	<div id="footer-bottom">

		<!-- Container -->
		<div class="container">

			<div class="eight columns">
				<a href="#">UP集团责任有限公司</a>-----<a href="i">UP-Pizza</a>.
				<iframe href="www.baidu.com"></iframe>
			</div>

		</div>
		<!-- Container / End -->

	</div>
	<!-- Footer Bottom / End -->

	<!-- Back To Top Button -->
	<div id="backtotop">
		<a href="#"></a>
	</div>



	<!-- Java Script
================================================== -->
	<script src="Customer/scripts/jquery-1.11.0.min.js"></script>
	<script src="Customer/scripts/jquery-migrate-1.2.1.min.js"></script>
	<script src="Customer/scripts/jquery.superfish.js"></script>
	<script src="Customer/scripts/jquery.royalslider.min.js"></script>
	<script src="Customer/scripts/responsive-nav.js"></script>
	<script src="Customer/scripts/hoverIntent.js"></script>
	<script src="Customer/scripts/isotope.pkgd.min.js"></script>
	<script src="Customer/scripts/chosen.jquery.min.js"></script>
	<script src="Customer/scripts/jquery.tooltips.min.js"></script>
	<script src="Customer/scripts/jquery.magnific-popup.min.js"></script>
	<script src="Customer/scripts/jquery.pricefilter.js"></script>
	<script src="Customer/scripts/custom.js"></script>


	<!-- Style Switcher
================================================== -->
	<script src="Customer/scripts/switcher.js"></script>

	<div id="style-switcher">
		<h2>
			换个皮肤，换种心情 <a href="#"></a>
		</h2>

		<div>
			<h3>选择</h3>
			<ul class="colors" id="color1">
				<li><a href="#" class="green" title="Green"></a></li>
				<li><a href="#" class="blue" title="Blue"></a></li>
				<li><a href="#" class="orange" title="Orange"></a></li>
				<li><a href="#" class="navy" title="Navy"></a></li>
				<li><a href="#" class="yellow" title="Yellow"></a></li>
				<li><a href="#" class="peach" title="Peach"></a></li>
				<li><a href="#" class="beige" title="Beige"></a></li>
				<li><a href="#" class="purple" title="Purple"></a></li>
				<li><a href="#" class="celadon" title="Celadon"></a></li>
				<li><a href="#" class="pink" title="Pink"></a></li>
				<li><a href="#" class="red" title="Red"></a></li>
				<li><a href="#" class="brown" title="Brown"></a></li>
				<li><a href="#" class="cherry" title="Cherry"></a></li>
				<li><a href="#" class="cyan" title="Cyan"></a></li>
				<li><a href="#" class="gray" title="Gray"></a></li>
				<li><a href="#" class="darkcol" title="Dark"></a></li>
			</ul>

		</div>

		<div id="reset">
			<a href="#" class="button color">Reset</a>
		</div>

	</div>


</body>
</html>