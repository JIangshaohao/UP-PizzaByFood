<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>菜单</title>
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1">
<link rel="stylesheet" href="css/style_1.css">
<link rel="stylesheet" href="css/colors/green.css" id="colors">
</head>

<body>

	<div id="wrapper">

		<header id="header">

			<div class="container">

				<div class="three columns">
					<div id="logo">
						<h1>
							<a href="index.html"><img src="images/logo.png" alt="Chow" /></a>
						</h1>
					</div>
				</div>

				<div class="thirteen columns navigation">

					<nav id="navigation" class="menu nav-collapse">
						<ul>
							<li><a href="index.jsp" id="current">主页</a></li>

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
									<li><a href="/UP-Pizza/CustomerChowHanbaoServlet">养胃早餐</a></li>
									<li><a href="/UP-Pizza/CustomerChowSweetsServlet">好心情甜点</a></li>
									<li><a href="/UP-Pizza/CustomerChowBreakfastServlet">充饥汉堡</a></li>
								</ul></li>

							<li><a href="/UP-Pizza/CustomerChowHanbaoServlet">非常推荐</a></li>

							<li><a href="/UP-Pizza/CustomerCartServlet">购物车</a></li>

							<li><a href="Customer/Kefu.jsp">客服</a></li>
						</ul>
					</nav>

				</div>

			</div>
		</header>

		<div class="recipeBackground">
			<img src="images/recipeBackground.jpg" alt="" />
		</div>
		<div class="container" itemscope itemtype="http://schema.org/Recipe">

			<!-- Recipe -->
			<div class="twelve columns">
				<div class="alignment">

					<!-- Header -->
					<section class="recipe-header">
						<div class="title-alignment">
							<h2>大块炖牛肉</h2>
							<div class="rating five-stars">
								<div class="star-rating"></div>
								<div class="star-bg"></div>
							</div>
							<span><a href="#reviews">(4 次浏览)</a></span>
						</div>
					</section>


					<!-- Slider -->
					<div class="recipeSlider rsDefault">
						<img itemprop="image" class="rsImg"
							src="images/recipePhoto-01.jpg" alt="" /> <img itemprop="image"
							class="rsImg" src="images/recipePhoto-02.jpg" alt="" />
					</div>


					<!-- Details -->
					<section class="recipe-details" itemprop="nutrition">
						<ul>
							<li>服务人数： <strong itemprop="recipeYield">4 人</strong></li>
							<li>准备时间 ：<strong itemprop="prepTime">30 分钟</strong></li>
							<li>烹饪： <strong itemprop="cookTime">2 小时</strong></li>
							<li>卡路里 <strong itemprop="calories">632 千卡</strong></li>
						</ul>
						<a href="#" class="print">点餐</a>
						<div class="clearfix"></div>
					</section>


					<!-- Text -->
					<p itemprop="description">这是一道非常基础的炖牛肉，它制作简单，美味，间隔低廉，虽然这种从传统的食谱有数百种做法，
					但很难改变它的美味和令人回味无穷的优点！
					</p>


					<!-- Ingredients -->
					<h3>配料</h3>
					<ul class="ingredients">
						<li><input id="check-1" type="checkbox" name="check"
							value="check-1"> <label itemprop="ingredients"
							for="check-1">2 磅牛肉丁炖肉</label></li>

						<li><input id="check-2" type="checkbox" name="check"
							value="check-2"> <label itemprop="ingredients"
							for="check-2">3 勺植物油</label></li>

						<li><input id="check-3" type="checkbox" name="check"
							value="check-3"> <label itemprop="ingredients"
							for="check-3">4 块碎牛肉汤</label></li>

						<li><input id="check-4" type="checkbox" name="check"
							value="check-4"> <label itemprop="ingredients"
							for="check-4">1 个切碎的大洋葱</label></li>

						<li><input id="check-5" type="checkbox" name="check"
							value="check-5"> <label itemprop="ingredients"
							for="check-5">1 茶匙迷迭香干</label></li>

						<li><input id="check-6" type="checkbox" name="check"
							value="check-6"> <label itemprop="ingredients"
							for="check-6">1/2  茶匙黑胡椒粉</label></li>

						<li><input id="check-7" type="checkbox" name="check"
							value="check-7"> <label itemprop="ingredients"
							for="check-7">3 个大土豆，去皮并切块 </label></li>

						<li><input id="check-8" type="checkbox" name="check"
							value="check-8"> <label itemprop="ingredients"
							for="check-8">4 个胡萝卜，切成1英寸的小块</label></li>

						<li><input id="check-9" type="checkbox" name="check"
							value="check-9"> <label itemprop="ingredients"
							for="check-9">4 斤芹菜，切成1英寸片</label></li>
					</ul>


					<!-- Directions -->
					<h3>烹饪步骤：</h3>
					<ol class="directions" itemprop="recipeInstructions">
						<li>在烤箱中，用中火将油加热至熟，但不要抽油烟机，用纸巾将肉擦干，然后分批将肉拍成棕色，完成后用开槽勺将肉转移到碗中</li>
						<li>在锅中剩余的油脂中，将洋葱煮至软化，大约5分钟。</li>
						<li>将肉和碗中的果汁一起放回锅里，加入番茄汁，辣椒，啤酒，牛肉汤，牛肚，孜然和乌斯特沙司。用盐和胡椒调味。</li>
						<li>烧开并减少热量。用文火煮2小时或直到肉变软</li>
					</ol>


					<!-- Share Post -->
					<ul class="share-post">
						<li><a href="#" class="facebook-share">脸书</a></li>
						<li><a href="#" class="twitter-share">推特</a></li>
						<li><a href="#" class="google-plus-share">谷歌</a></li>
						<li><a href="#" class="pinterest-share">底特律</a></li>
						<!-- <li><a href="#add-review" class="rate-recipe">Add Review</a></li> -->
					</ul>
					<div class="clearfix"></div>



					<div class="margin-bottom-40"></div>


					<!-- Headline -->
					<h3 class="headline">你可能也喜欢</h3>
					<span class="line margin-bottom-35"></span>
					<div class="clearfix"></div>

					<div class="related-posts">
						<!-- Recipe #1 -->
						<div class="four recipe-box columns">

							<!-- Thumbnail -->
							<div class="thumbnail-holder">
								<a href="#"> <img src="images/recipeThumb-01a.jpg" alt="" />
									<div class="hover-cover"></div>
									<div class="hover-icon">查看</div>
								</a>
							</div>

							<!-- Content -->
							<div class="recipe-box-content">
								<h3>
									<a href="#">墨西哥烤玉米</a>
								</h3>

								<div class="rating five-stars">
									<div class="star-rating"></div>
									<div class="star-bg"></div>
								</div>

								<div class="recipe-meta">
									<i class="fa fa-clock-o"></i> 30 分钟
								</div>

								<div class="clearfix"></div>
							</div>
						</div>

						<!-- Recipe #2 -->
						<div class="four recipe-box columns">

							<!-- Thumbnail -->
							<div class="thumbnail-holder">
								<a href="#"> <img src="images/recipeThumb-07a.jpg" alt="" />
									<div class="hover-cover"></div>
									<div class="hover-icon">查看</div>
								</a>
							</div>

							<!-- Content -->
							<div class="recipe-box-content">
								<h3>
									<a href="#">柠檬烤鸡肉</a>
								</h3>

								<div class="rating five-stars">
									<div class="star-rating"></div>
									<div class="star-bg"></div>
								</div>

								<div class="recipe-meta">
									<i class="fa fa-clock-o"></i> 1 小时 20 分钟
								</div>

								<div class="clearfix"></div>
							</div>
						</div>

						<div class="four recipe-box columns">

							<div class="thumbnail-holder">
								<a href="#"> <img src="images/recipeThumb-03a.jpg" alt="" />
									<div class="hover-cover"></div>
									<div class="hover-icon">查看</div>
								</a>
							</div>

							<!-- Content -->
							<div class="recipe-box-content">
								<h3>
									<a href="#">咖喱鸡汁+看不见的白米饭</a>
								</h3>

								<div class="rating five-stars">
									<div class="star-rating"></div>
									<div class="star-bg"></div>
								</div>

								<div class="recipe-meta">
									<i class="fa fa-clock-o"></i> 45 分钟
								</div>

								<div class="clearfix"></div>
							</div>
						</div>
					</div>
					<div class="clearfix"></div>


					<div class="margin-top-15"></div>


					<!-- Comments
		================================================== -->
					<h3 class="headline">
						评论 <span class="comments-amount">(4)</span>
					</h3>
					<span class="line"></span>
					<div class="clearfix"></div>

					<!-- Reviews -->
					<section class="comments" id="reviews">

						<ul>
							<li>
								<div class="avatar">
									<img
										src=""
										alt="" />
								</div>
								<div class="comment-content">
									<div class="arrow-comment"></div>
									<div class="comment-by">
										<strong>John Doe</strong><span class="date">7th,
											October 2014</span> <a href="#" class="reply"> 回复</a>
									</div>
									<p>非常推荐，色美味全。老鳖，这不得来一口？？！！</p>
									<div class="rating five-stars">
										<div class="star-rating"></div>
										<div class="star-bg"></div>
									</div>
								</div> <!-- Second Level -->
								<ul>
									<li>
										<div class="avatar">
											<img src="images/author-photo.png" alt="" />
										</div>
										<div class="comment-content">
											<div class="arrow-comment"></div>
											<div class="comment-by">
												<strong>叶奈法</strong><span class="date">7日,
													10月 2014</span> <a href="#" class="reply">回复</a>
											</div>
											<p>楼上说的没错，我也点了很多次了，看到这个做菜的时间，大家想必要提前点好，但是正是因为做的时间长，也证明来它是一道用心做的菜！</p>
										</div>
									</li>
								</ul>

							</li>

							<li>
								<div class="avatar">
									<img
										src=""
										alt="" />
								</div>
								<div class="comment-content">
									<div class="arrow-comment"></div>
									<div class="comment-by">
										<strong>特莉丝</strong><span class="date">12日,
											10月 2014</span> <a href="#" class="reply">回复</a>
									</div>
									<p>老板人很好，甚至对我图谋不轨，好色之徒！</p>
									<div class="rating ive-stars">
										<div class="star-rating"></div>
										<div class="star-bg"></div>
									</div>
								</div>
							</li>

							<li>
								<div class="avatar">
									<img
										src=""
										alt="" />
								</div>
								<div class="comment-content">
									<div class="arrow-comment"></div>
									<div class="comment-by">
										<strong>约翰</strong><span class="date">15日,
											10月 2014</span> <a href="#" class="reply">回复</a>
									</div>
									<p>我这个名字全球写作文都通用。但是我是忠实客户，支持老板姜先生！</p>
									<div class="rating four-stars">
										<div class="star-rating"></div>
										<div class="star-bg"></div>
									</div>
								</div>

							</li>
						</ul>

					</section>
					<div class="clearfix"></div>
					<br>


					<!-- Add Comment
		================================================== -->

					<h3 class="headline">发布评论</h3>
					<span class="line margin-bottom-35"></span>
					<div class="clearfix"></div>

					<!-- Add Comment Form -->
					<form id="add-review" class="add-comment">
						<fieldset>

							<div>
								<label>昵称:</label> <input type="text" value="" />
							</div>

							<div>
								<label>邮箱: <span>*</span></label> <input type="text" value="" />
							</div>

							<div>
								<label>推荐指数:</label> <span class="rate"> <span
									class="star"></span> <span class="star"></span> <span
									class="star"></span> <span class="star"></span> <span
									class="star"></span>
								</span>
							</div>
							<div class="clearfix"></div>

							<div>
								<label>内容: <span>*</span></label>
								<textarea cols="40" rows="3"></textarea>
							</div>

						</fieldset>

						<a href="#" class="button medium color">发布</a>
						<div class="clearfix"></div>

					</form>

				</div>
			</div>


			<!-- Sidebar
================================================== -->
			<div class="four columns">

				<!-- Search Form -->
				<div class="widget search-form">
					<nav class="search">
						<form action="#" method="get">
							<button>
								GO
							</button>
							<input class="search-field" type="text"
								placeholder="输入你想要食物信息吧！" value="" />
						</form>
					</nav>
					<div class="clearfix"></div>
				</div>


				<!-- Author Box -->
				<div class="widget">
					<div class="author-box">
						<span class="title">作者</span> <span class="name">刚特
							<br> 欧迪姆
						</span> <span class="contact"><a href="2623537618@qq.com">2623537618@qq.com</a></span>
						<img src="Food/author-photo.png" alt="">
						<p>我是姜少豪，我在这里分享我的东西。我疯狂的爱上了这些食物，你会发现健康食谱，舒适食物和美味甜点之间的碰撞。</p>
					</div>
				</div>


				<!-- Popular Recipes -->
				<div class="widget">
					<h4 class="headline">最受欢迎的食谱</h4>
					<span class="line margin-bottom-30"></span>
					<div class="clearfix"></div>

					<!-- Recipe #1 -->
					<a href="recipe-page-1.html" class="featured-recipe"> <img
						src="Food/featuredRecipe-01.jpg" alt="">

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
					<a href="recipe-page-1.html" class="featured-recipe"> <img
						src="Food/featuredRecipe-02.jpg" alt="">

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
					<a href="recipe-page-1.html" class="featured-recipe"> <img
						src="Food/featuredRecipe-03.jpg" alt="">

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
								class="counter">863</span> <span class="counted">关注者</span>
								<span class="action-button">关注者</span>
						</a></li>

						<li class="google-plus-share"><a href="#"> <span
								class="counter">902</span> <span class="counted">关注者</span>
								<span class="action-button">关注者</span>
						</a></li>


					</ul>
					<div class="clearfix"></div>
				</div>

			</div>


		</div>

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
					<li><a href="browse-recipes.html">浏览食谱</a></li>
					<li><a href="recipe-page-1.html">配方页</a></li>
					<li><a href="submit-recipe.html">提交配方</a></li>
				</ul>

			</div>

			<div class="five columns">

				<!-- Headline -->
				<h3 class="headline footer">新闻稿</h3>
				<span class="line"></span>
				<div class="clearfix"></div>
				<p>注册以接受有关新产品公告，礼品创意，销售等方面的电子邮件更新。</p>

				<form action="#" method="get">
					<input class="newsletter" type="text"
						placeholder="邮箱" value="" />
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
				 <a href="#">UP集团责任有限公司</a>-----<a
					href="https://www.genban.org/">UP-Pizza</a>.
			</div>

		</div>
		<!-- Container / End -->

	</div>
	<div id="backtotop">
		<a href="#"></a>
	</div>

	<script src="scripts/jquery-1.11.0.min.js"></script>
	<script src="scripts/jquery-migrate-1.2.1.min.js"></script>
	<script src="scripts/jquery.superfish.js"></script>
	<script src="scripts/jquery.royalslider.min.js"></script>
	<script src="scripts/responsive-nav.js"></script>
	<script src="scripts/hoverIntent.js"></script>
	<script src="scripts/isotope.pkgd.min.js"></script>
	<script src="scripts/chosen.jquery.min.js"></script>
	<script src="scripts/jquery.tooltips.min.js"></script>
	<script src="scripts/jquery.magnific-popup.min.js"></script>
	<script src="scripts/jquery.pricefilter.js"></script>
	<script src="scripts/custom.js"></script>


	<!-- Style Switcher
================================================== -->
	<script src="scripts/switcher.js"></script>

	<div id="style-switcher">
		<h2>
			Style Switcher <a href="#"></a>
		</h2>

		<div>
			<h3>Predefined Colors</h3>
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