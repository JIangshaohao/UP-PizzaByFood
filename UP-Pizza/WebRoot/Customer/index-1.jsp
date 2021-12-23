<%@page import="UP_Pizza_End_Entity.Food"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>早餐</title>
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1">
<link rel="stylesheet" href="Customer/css/style_1.css">
<link rel="stylesheet" href="Customer/css/colors/green.css" id="colors">
</head>

<body>

	<div id="wrapper">

		<header id="header">

			<!-- Container -->
			<div class="container">

				<!-- Logo / Mobile Menu -->
				<div class="three columns">
					<div id="logo">
						<h1>
							<a href="index.jsp"><img src="Customer/Food/logo.png"
								alt="Chow" /></a>
						</h1>
					</div>
				</div>

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
			<div class="twelve columns">

				<!-- Headline -->
				<h3 class="headline">健康早餐</h3>
				<span class="line rb margin-bottom-35"></span>
				<div class="clearfix"></div>

				<!-- Isotope -->
				<div class="isotope">


					<!-- Recipe #1 -->
					<c:forEach items="${food }" var="f" varStatus="vs">
						<c:choose>
							<c:when test="${f.tid==1}">
								<div class="four recipe-box columns food">

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

										<div class="rating five-stars">
											<div class="star-rating"></div>
											<div class="star-bg"></div>
										</div>

										<div class="recipe-meta">
											↗ 热销价：${f.xprice}￥<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
											<input type="button" onclick="buy(${f.id})" value="购买"
												style="color:#000;background-color: #FFFAE8;font-weight: bold;" />
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
									<a href="CustomerChowBreakfastServlet?pageNum=1"
										class="current-page">首页</a>
									<a href="CustomerChowBreakfastServlet?pageNum=${pageNum-1}">上一页</a>
								</c:if> <c:forEach var="i" begin="1" end="${pageCount }" step="1">
									<a href="CustomerChowBreakfastServlet?pageNum=${i}"
										<c:if test="${pageNum==i }">class="current-page"</c:if>>${i}</a>
								</c:forEach> <c:choose>
									<c:when test="${pageNum==pageCount }">
			下一页
			末页
			</c:when>
									<c:otherwise>
										<a href="CustomerChowBreakfastServlet?pageNum=${pageNum+1 }">下一页</a>
										<a href="CustomerChowBreakfastServlet?pageNum=${pageCount }"
											class="current-page">末页</a>
									</c:otherwise>
								</c:choose> 当前${pageNum }/${pageCount }页</li>
						</ul>
					</nav>

					<nav class="pagination-next-prev">
						<ul>
							<li><a
								href="CustomerChowBreakfastServlet?pageNum=${pageNum-1 }"
								class="prev">◀</a></li>
							<li><a
								href="CustomerChowBreakfastServlet?pageNum=${pageNum+1 }"
								class="next">▶</a></li>
						</ul>
					</nav>
				</div>
			</div>
			<%
				
			%>

			<script type="text/javascript" src="Customer/js/jquery-1.12.4.js"></script>
			<link rel="stylesheet" type="text/css"
				href="Customer/CSS_alert_JS/sweet-alert.css">
			<script src="Customer/CSS_alert_JS/sweet-alert.min.js"></script>
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
			<script type="text/javascript">
				//每个商品对应的商品详情
				function show(fids) {
					//alert(fids);
					window.location.href = "/UP-Pizza/CustomerShowXqServlet?fid="
							+ fids;

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
								<i onclick="seach()">GO</i>
							</button>
							<input class="search-field" type="text"
								placeholder="输入你想要了解食物信息吧！" id="foodinfo" value="" />
						</form>
					</nav>
					<div class="clearfix"></div>
				</div>

				<script type="text/javascript">
					function seach() {
						var info = $("#foodinfo").val();
						//alert(info);
						$.ajax({
							url : "CustomerSeachFoodServlet",
							type : "post",
							data : {
								"info" : info
							},
							dataType : "text",
							success : call
						});
						function call() {
							alert("回来了");
						}

					}
				</script>


				<!-- Author Box -->
				<div class="widget">
					<div class="author-box">
						<span class="title">作者</span> <span class="name">刚特 <br>
							欧迪姆
						</span> <span class="contact"><a href="2623537618@qq.com">2623537618@qq.com</a></span>
						<img src="Customer/Food/author-photo.png" alt="">
						<p>我是姜少豪，我在这里分享我的东西。我疯狂的爱上了这些食物，你会发现健康食谱，舒适食物和美味甜点之间的碰撞。</p>
					</div>
				</div>


				<!-- Popular Recipes -->
				<div class="widget">
					<h4 class="headline">最受欢迎的食物</h4>
					<span class="line margin-bottom-30"></span>
					<div class="clearfix"></div>

					<!-- Recipe #1 -->
					<a class="featured-recipe"> <img
						src="Customer/Food/featuredRecipe-01.jpg" alt="">

						<div class="featured-recipe-content">
							<h4>用绿茶奶油巧克力做的蛋糕</h4>

							<div class="rating five-stars">
								<div class="star-rating"></div>
								<div class="star-bg"></div>
							</div>
						</div>
						<div class="post-icon"></div>
					</a>

					<!-- Recipe #2 -->
					<a class="featured-recipe"> <img
						src="Customer/Food/featuredRecipe-02.jpg" alt="">

						<div class="featured-recipe-content">
							<h4>墨西哥烤玉米</h4>

							<div class="rating five-stars">
								<div class="star-rating"></div>
								<div class="star-bg"></div>
							</div>
						</div>
						<div class="post-icon"></div>
					</a>

					<!-- Recipe #3 -->
					<a class="featured-recipe"> <img
						src="Customer/Food/featuredRecipe-03.jpg" alt="">

						<div class="featured-recipe-content">
							<h4>Pollo Borracho 配自制玉米</h4>

							<div class="rating five-stars">
								<div class="star-rating"></div>
								<div class="star-bg"></div>
							</div>
						</div>
						<div class="post-icon"></div>
					</a>

					<div class="clearfix"></div>
				</div>


				<!-- Share -->
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
					<li><a href="#">2014.6</a></li>
					<li><a href="#">2014.7</a></li>
					<li><a href="#">2014.8</a></li>
					<li><a href="#">2014.9</a></li>
					<li><a href="#">2014.10</a></li>
				</ul>

			</div>

			<div class="three columns">

				<!-- Headline -->
				<h3 class="headline footer">食谱</h3>
				<span class="line"></span>
				<div class="clearfix"></div>

				<ul class="footer-links">
					<li><a href="browse-recipes.jsp">浏览食谱</a></li>
					<li><a href="recipe-page-1.jsp">配方页</a></li>
					<li><a href="submit-recipe.jsp">提交配方</a></li>
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
				<a href="#">UP集团责任有限公司</a>-----<a href="https://www.genban.org/">UP-Pizza</a>.
			</div>

		</div>

	</div>

	<div id="backtotop">
		<a href="#"></a>
	</div>

	<script type="text/javascript">
		$(function() {
			var a = $(".food").length;

			//alert($(".food").length);
			if (a < 9) {
				//window.location.href="CustomerChowBreakfastServlet";
			}

		})
	</script>

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