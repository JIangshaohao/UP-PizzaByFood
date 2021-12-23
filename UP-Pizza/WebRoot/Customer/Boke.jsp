<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title></title>
<link rel="stylesheet" type="text/css" href="css/Boke.css" />
<script src="js/Boke.js" type="text/javascript" charset="utf-8"></script>
<script src="js/jquery-1.12.4.js" type="text/javascript" charset="utf-8"></script>

<!-- <link rel="stylesheet" href="css/style_Move.css" type="text/css" />
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
</script> -->

<script type="text/javascript">
	$(document).ready(function() {
		$("#fasfa-angle-down li>a").css("color", "#ffffff")
		$("#fasfa-angle-down li>a").css("font-weight", "bold")

		$(".fasfa-angle-down").hover(function() {
			var index = $(".fasfa-angle-down").index(this);
			$(".fasfa-angle-down:eq(" + index + ") a").css("color", "#CC3333");
		}, function() {
			var index = $(".fasfa-angle-down").index(this);
			$(".fasfa-angle-down:eq(" + index + ") a").css("color", "#ffffff")
		});

		$("#boke-a span").hover(function() {
			$(this).css("color", "#CC3333");
		}, function() {

			$(this).css("color", "#ffffff");
		});

		$(".subment2").hover(function() {

			$(this).css("color", "#CC3333");
		}, function() {

			$(this).css("color", "#ffffff");
		});

		$(".subment1").hover(function() {

			$(this).css("color", "#CC3333");
		}, function() {

			$(this).css("color", "#ffffff");
		});

		$(".subment").hover(function() {

			$(this).css("color", "#CC3333");
		}, function() {

			$(this).css("color", "#ffffff");
		});

		$("#bg-ulli ul>li").hover(function() {
			$(this).css("background", "orange");
			$(this).first().css("color", "#ffffff");
		}, function() {
			$(this).css("background", "");
			$(this).first().css("color", "#cc3333");
		})

		$("#btn1").hover(function() {
			$(this).css({
				"background" : "#131313",
				"color" : "#cc3333"
			});
			$(this).css("boder", "1px solid red")

		}, function() {
			$(this).css("background", "");
			$(this).css("color", "#ffffff")
		});

		$("#img-1").hover(function() {
			$(this).css({
				"overflow" : "hidden"
			});
			$("#img-1 img").css({
				"display" : "block",
				"transition" : "all 1s",
				"transform" : "scale(1.4)"
			});

		}, function() {
			$("#img-1 img").removeAttr("style");
		});

		$("#img-2-a1 span").mouseover(function() {
			$(this).css("color", "#cc3333");
		});
		$("#img-2-a1 span").mouseout(function() {
			$(this).css("color", "");
		});

		$(".spandars").hover(function() {
			$(this).css("color", "#cc3333");
		}, function() {
			$(this).css("color", "");
		});

		$("#a #img-btn").hover(function() {
			$(this).css("background", "#ffffff")
			$(this).css("color", "#2A435D")
		}, function() {
			$(this).css("background", "");
			$(this).css("color", "#ffffff")
		});
		var time;
		$("#blog-ig2").hover(function() {
			$("#rglt").fadeIn(300);
			clearInterval(time)
		}, function() {
			$("#rglt").fadeOut(300);

			var i = 0;
			time = setInterval(function() {
				var img = [ "blog1.jpg", "blog2.jpg", "blog3.jpg" ];
				$("#leftrgt").attr("src", "imagess/blog/" + img[i] + "");
				i++;
				if (i > 2) {
					i = 0;
				}
				if (i < 0) {
					i = 2;
				}

			}, 3000)
		});

		$("#leftrgt").attr("src", "imagess/blog/blog2.jpg")
		var index = 0;
		$("#ig1-left").click(function() {

			index--;

			if (index < 0) {
				index = 0;

			}
			var img = [ "blog1.jpg", "blog2.jpg", "blog3.jpg" ];
			$("#leftrgt").attr("src", "imagess/blog/" + img[index] + "");

		});
		$("#ig1-right").click(function() {
			index++;
			if (index > 2) {
				index = 2;

			}
			var img = [ "blog1.jpg", "blog2.jpg", "blog3.jpg" ];
			$("#leftrgt").attr("src", "imagess/blog/" + img[index] + "");

		});

		var i = 0;
		time = setInterval(function() {
			var img = [ "blog1.jpg", "blog2.jpg", "blog3.jpg" ];
			$("#leftrgt").attr("src", "imagess/blog/" + img[i] + "");
			i++;
			if (i > 2) {
				i = 0;
			}
			if (i < 0) {
				i = 2;
			}

		}, 3000)

		$("#btnsub").hover(function() {
			$(this).css("background", "#cc3333");
			$(this).css("color", "#ffffff")
		}, function() {
			$(this).css("background", "")
			$(this).css("color", "#cc3333")
		})

	});
</script>
</head>
<body>
<!-- <div class="side">
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
	</div> -->

	<div id="div">
		<div id="top">
			<div id="all">
				<!-- 头部 -->
				<header class="mui-bar mui-bar-nav">
					<div id="header">
						<ul>
							<!-- <li id="span1"><span>Phone:888-8888-888</span>&nbsp;&nbsp;&nbsp;<span>Email:support@163.com</span></li> -->
							<li><img src="imagess/logo/logo3.png" id="img5"></li>
							<div id="fasfa-angle-down">
								<ul class="main-menu" style="position:relative;left:70px">
									<li class="fasfa-angle-down"><a href="index.jsp"
										id="fasfa-angle-a">主页</a>
										<ul class="submenu">
											<li><a href="index.html">主页-1</a></li>
											<li><a href="homepage2.html">主页-2</a></li>

										</ul></li>
									<li><a href="/UP-Pizza/CustomerChowPictureServlet"
										class="subment1">菜单</a></li>
										<li><a href="FoodInfo.jsp"
										class="subment1">美食秘密</a></li>
									<!-- <li><a href="Boke.html" class="subment2">博客</a></li> -->
									<li class="fasfa-angle-down"><a
										href="/UP-Pizza/CustomerCartServlet">购物车</a>
										<ul class="submenu">
											<li><a href="blog.html">博客</a></li>
											<li><a href="blog-single.html">单一博客</a></li>
										</ul></li>

									<li class="fasfa-angle-down"><a href="liuyan.jsp">留言 </a>
										<ul class="submenu">
											<li><a href="checkout.html">结算</a></li>
											<li><a href="single-dish.html">单一预览</a></li>
											<li><a href="404.html">副页</a></li>
											<li><a href="food-page.html">食品页</a></li>
											<li><a href="food-page2.html">食品页2</a></li>
											<li><a href="shopping-cart.html">购物车</a></li>
											<li><a href="single-food.html">商品详情</a></li>
											<li><a href="gallery.html">食物选择页</a></li>
										</ul></li>
									<li><a href="Kefu.jsp" class="subment">客服</a></li>
								</ul>

							</div>


						</ul>


						<img src="imagess/img/8.png" id="img8"> <img
							src="imagess/shapes/27.png" id="img9"> <!-- <input type="button"
							name="" id="btn1" value="Login" style="color: #FFFFFF;" /> --> <span
							id="boke">博客</span> <a id="boke-a"><span>主页</span>&nbsp; <span>页面</span>
							&nbsp;/&nbsp; <span>博客页面</span></a>
					</div>

				</header>
				<div id="">
					<ul>
						<li><img src="imagess/shapes/25.png" id="img2"></li>
						<li><img src="imagess/shapes/26.png" id="img4"></li>

					</ul>
				</div>
			</div>
		</div>
		<div id="img">


			<div id="blog-ig1">

				<div id="img-1">

					<img src="imagess/blog/blog1.jpg" style="cursor: pointer;">

				</div>
				<div id="img-2">

					<img src="imagess/blog/b-shape.png">

					<p>
						&nbsp 02 <br> 十二月
					</p>
				</div>

			</div>
			<div id="img-2a">
				<div id="img-2-a1">
					<a href="#"><span>鸡肉汉堡</span><a /> <a href="#"><span>宫古王子</span><a />
							<a href="#"><span>120+评论</span><a />
				</div>
				<div id="img-2-a2">
					<p>
						<span><a href="#" class="spandars"
							style="font-size: 33px;font-weight: bolder;color: #2A435D;">自制游戏日汉堡<a></span>
						<br /> <br /> 行业正在整合，商业模式不断涌现，新技术正在开发，消费者行为也在不断演变。
					</p>
				</div>
				<a href="#" id="a"><input type="submit" id="img-btn"
					class="btns" value="阅读更多" /></a>
			</div>
			<div id="img-user">
				<a href="#"><img src="imagess/blog/user.jpg"><a>

						<div id="img-ps">

							<a>&nbsp &nbsp &nbsp &nbsp &nbsp &nbsp宫古王子</a>
							<p>
								你好!我是这篇文章的作者<br /> 阅读我的帖子 跟上潮流
							</p>
							<ul id="img-ul">
								<li><a href="#"><span id="i1"><img
											src="./imagess/icons/facebook.png" style="color: #E6E6E6;"></span><a></li>
								<li><a href="#"><span id="i1"><img
											src="./imagess/icons/twitter.png" style="color: #E6E6E6;"></span><a></li>
								<li><a href="#"><span id="i1"><img
											src="./imagess/icons/inst.png" style="color: #E6E6E6;"></span><a></li>
								<li><a href="#"><span id="i1"><img
											src="./imagess/icons/linkdin.png" style="color: #E6E6E6;"></span><a></li>
							</ul>



						</div>


						<div id="img-from1">
							<form>
								<input type="text" id="input-scrpos" placeholder="搜索" /> <input
									type="submit" id="input-btn1">

							</form>
						</div>
			</div>
			<div id="img1">
				<div id="blog-ig2">


					<img src="" width="842px" height="400px" id="leftrgt"
						style="cursor: pointer;">

					<p class="radius"></p>

					<div id="rglt">
						<div id="left">
							<span id="ig1-left"><img
								src="imagess/00117.png" width="30px"
								height="30px"></span>
						</div>
						<div id="right">
							<span id="ig1-right"><img
								src="imagess/0048.png" width="30px"
								height="30px"></span>
						</div>
					</div>



					<div id="img1-log">
						<div id="img-log1">

							<img src="imagess/blog/b-shape1.png">

						</div>
					</div>
					<div id="img1-p">
						<p>
							&nbsp 02 <br> 十二月
						</p>
					</div>
				</div>
				<div id="img-3a">
					<div id="img-3-a1">
						<a href="#"><span>鸡肉汉堡</span><a /> <a href="#"><span>宫古王子</span><a />
								<a href="#"><span>120+评论</span><a />
					</div>
					<div id="img-2-a2">
						<p>
							<span><a href="#" class="spandars"
								style="font-size: 33px;font-weight: bolder;color: #2A435D;">值得在
									Upland 担任总统的汉堡<a></span> <br /> <br />
							当今的组织处于不断变化之中行业正在整合，商业模式不断涌现，新技术正在开发，消费者行为也在不断演变。
						</p>
					</div>
					<a href="#" id="a"><input type="submit" id="img-btn"
						class="btns" value="阅读更多" /></a>
				</div>

				<div id="img1-1">
					<br /> <span>&nbsp热销产品</span>
					<div id="reX-img1">
						<a><img src="imagess/menu-item/pd6.png"></a>
					</div>
					<div id="rex-info1">
						<a href="#">炸鸡食谱</a>
						<p>10.00&nbsp;美元</p>
						<a><img src="./imagess/blog/0940.png"></a>

					</div>

					<hr / width="230px" style="position: relative;top: -80px;">
					<div id="img-infomation">
						<div id="reX-img2">
							<a><img src="imagess/menu-item/pd4.png"></a>
						</div>
						<div id="rex-info2">
							<a href="#">鸡汤Rejala</a>
							<p>20.00&nbsp;美元</p>
							<a><img src="./imagess/blog/0940.png"></a>
						</div>
					</div>
					<hr / width="230px" style="position: relative;top: -160px;">
					<div id="reX-infomation-2">
						<div id="reX-img3">
							<a><img src="imagess/menu-item/pd7.png"></a>
						</div>
						<div id="rex-info3">
							<a href="#">最佳黑框</a>
							<p>80.00&nbsp;美元</p>
							<a><img src="./imagess/blog/0940.png"></a>
						</div>
					</div>
					<hr / width="230px" style="position: relative;top: -240px;">
					<div id="reX-infomation-3">
						<div id="reX-img4">
							<a><img src="imagess/menu-item/pd8.png"></a>
						</div>
						<div id="rex-info4">
							<a href="#">最佳黑框</a>
							<p>80.00&nbsp;美元</p>
							<a><img src="./imagess/blog/0940.png"></a>
						</div>
					</div>
				</div>
				<div id="img-bq-1">
					<div id="bg-title">
						<h2>标签</h2>
					</div>
					<div id="bg-ulli">
						<ul>
							<li id="hli"><a>烧烤</a></li>
							<li><a>提卡</a></li>
							<li><a>比萨</a></li>
							<li id="bg-ulli1" style="width:107px ;"><a>鸡肉沙玛</a></li>
							<li style="width: 107px;"><a>达赫汉堡</a></li>
							<li style="width: 90px;"><a>三明治</a></li>
							<li><a>鸡汤</a></li>

						</ul>
					</div>
				</div>
			</div>
			<div id="img3">
				<div id="img3-img">
					<a href="#"><img src="./imagess/blog/blog3.jpg"></a>
				</div>
				<div id="img-4a">
					<div id="img-4-a1">
						<a href="#"><span>鸡肉汉堡</span><a /> <a href="#"><span>宫古王子</span><a />
								<a href="#"><span>120+评论</span><a />
					</div>
					<div id="img-4-a2">
						<p>
							<span><a href="#" class="spandars"
								style="font-size: 33px;font-weight: bolder;color: #2A435D;">如何像那不勒斯大师一样制作比萨饼<a></span>
							<br /> 当今的组织处于不断变化之中。行业正在整合，商业模式不断涌现，新技术正在开发，消费者行为也在不断演变。
						</p>
					</div>
					<a href="#" id="a"><input type="submit" id="img-btn"
						value="阅读更多" /></a>
				</div>
				<div id="img3-dhl">
					<br />
					<h3 id="dhl-h3">&nbsp;按菜单过滤</h3>

					<div id="dhl-img1">
						&nbsp;<img src="imagess/menu-item/fm1.png">
					</div>
					<div id="dhl-inner1">
						<h5>
							<a href="#">汉堡食品&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;20</a>

						</h5>

					</div>

					<div id="imginner2">
						<div id="dhl-img2">
							&nbsp;<img src="imagess/menu-item/pd2.png" width="49.9"
								height="49.9">
						</div>
						<div id="dhl-inner2">
							<h5>
								<a href="#">炸鸡&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;50</a>

							</h5>

						</div>
					</div>

					<div id="imginner3">
						<div id="dhl-img3">
							&nbsp;<img src="imagess/menu-item/pd5.png" width="49.9"
								height="49.9">
						</div>
						<div id="dhl-inner3">

							<h5>
								<a href="#">披萨&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;20</a>

							</h5>

						</div>
					</div>

					<div id="imginner4">
						<div id="dhl-img4">
							&nbsp;<img src="imagess/menu-item/fm2.png" width="49.9"
								height="49.9">
						</div>
						<div id="dhl-inner4">
							<h5>
								<a href="#">炸鸡&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;50</a>

							</h5>

						</div>
					</div>
				</div>

			</div>
			<div id="bolg-img4">
				<div id="img4-div">
					<div id="blog-img1">
						<img src="imagess/blog/b-shape.png">
					</div>
					<div id="blog-inner1">
						<p>
							&nbsp;02<br /> 十二月
						</p>
					</div>
					<div id="blog-div-a">
						<div id="img-5a">
							<div id="img-5-a1">
								<a href="#"><span>鸡肉汉堡</span><a /> <a href="#"><span>宫古王子</span><a />
										<a href="#"><span>120+评论</span><a />
							</div>
							<div id="img-5-a2">
								<p>
									<span><a href="#" class="spandars"
										style="font-size: 33px;font-weight: bolder;color: #2A435D;">如何像那不勒斯大师一样制作比萨饼<a></span>
									<br /> 当今的组织处于不断变化之中。行业正在整合，商业模式不断涌现，新技术正在开发，消费者行为也在不断演变。
								</p>
							</div>

							<a href="#" id="a" style="cursor: pointer;"><input
								type="submit" id="img-btn" value="阅读更多" /></a>
						</div>
					</div>
				</div>
				<div id="img4-right-img">
					<h5>
						<font style="vertical-align: inherit;"> &nbsp;&nbsp;超级汉堡组合
						</font> <a href="#"><input type="submit" id="btnsub" value="现在下单" /></a>
						<img src="imagess/gallery/25.png" id="galle">
						<div id="greeall">
							<div id="galleyimg"
								style="position: absolute;top: 0px;left: 0px;clip: rect(0px 250px 300px 0px);">
								<img src="imagess/gallery/22.png" width="382" height="289">
							</div>
						</div>

					</h5>

				</div>

				<div id="weetimg">
					<img src="imagess/blog/32124.png" width=842
						"height="350px">

				</div>

			</div>
		</div>
		<div id="botmmn">

			<img src="imagess/85339.png" width="100%"
				height: 499px; id="topx">

		</div>
	</div>

</body>

</html>
