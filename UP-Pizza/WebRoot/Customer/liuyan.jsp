<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title></title>
		<link rel="stylesheet" type="text/css" href="css/liuyan.css" />
		<link rel="stylesheet" type="text/css" href="pict/jquery.hislide.min.css" />
		<style type="text/css">
			body {
				font-family: 'Roboto Condensed', sans-serif;
				overflow-x: hidden;

				body {
					background-image: url(ur.jpg);
				}

				h1 {
					margin: 150px auto 30px auto;
					text-align: center;
					color: #fff;
				}

				.hi-slide {
					position: relative;
					width: 754px;
					height: 292px;
					margin: 115px auto 0;
				}

				.hi-slide .hi-next,
				.hi-slide .hi-prev {
					position: absolute;
					top: 50%;
					width: 40px;
					height: 40px;
					margin-top: -20px;
					border-radius: 50px;

					line-height: 40px;
					text-align: center;
					cursor: pointer;
					background-color: #fff;
					color: black;
					transition: all 0.6s;
					font-size: 20px;
					font-weight: bold;
				}

				.hi-slide .hi-next:hover,
				.hi-slide .hi-prev:hover {
					opacity: 1;
					background-color: #fff;
				}

				.hi-slide .hi-prev {
					left: -60px;
				}

				.hi-slide .hi-prev::before {
					content: '<';
				}

				.hi-slide .hi-next {
					right: -60px;
				}

				.hi-slide .hi-next::before {
					content: '>';
				}

				.hi-slide>ul {
					list-style: none;
					position: relative;
					width: 754px;
					height: 292px;
					margin: 0;
					padding: 0;
				}


				.hi-slide>ul>li {
					overflow: hidden;
					position: absolute;
					z-index: 0;
					left: 377px;
					top: 146px;
					width: 0;
					height: 0;
					margin: 0;
					padding: 0;
					border: 3px solid #fff;
					background-color: #333;
					cursor: pointer;
				}

				.hi-slide>ul>li>img {
					width: 100%;
					height: 100%;
					background-position: center;
				}
		</style>
	</head>
	<body>
		<div id="all">
			<!-- 头部 -->
			<header class="mui-bar mui-bar-nav">
				<div id="header">
					<ul>
						<!-- <li id="span1"><span>Phone:888-8888-888</span>&nbsp;&nbsp;&nbsp;<span>Email:support@163.com</span></li> -->
						<li><img src="images/logo/logo3.png" id="img5"></li>
						<div id="fasfa-angle-down">
							<ul class="main-menu">
								<li class="fasfa-angle-down"><a href="index.jsp">主页</a>
									<ul class="submenu">
										<li><a href="index.html">主页-1</a></li>
										<li><a href="homepage2.html">主页-2</a></li>

									</ul>
								</li>
								<li><a href="/UP-Pizza/CustomerChowPictureServlet">菜单</a>
								<li><a href="Boke.jsp">博客</a></li>
								<li class="fasfa-angle-down"><a href="/UP-Pizza/CustomerCartServlet">购物车</a>
									<ul class="submenu">
										<li><a href="blog.html">博客</a></li>
										<li><a href="blog-single.html">单一博客</a></li>
									</ul>
								</li>
								<li class="fasfa-angle-down"><a href="/UP-Pizza/CustomerdgShowAllServlet">我的订单</a>
									<ul class="submenu">
										<li><a href="checkout.html">结算</a></li>
										<li><a href="single-dish.html">单一预览</a></li>
										<li><a href="404.html">副页</a></li>
										<li><a href="food-page.html">食品页</a></li>
										<li><a href="food-page2.html">食品页2</a></li>
										<li><a href="shopping-cart.html">购物车</a></li>
										<li><a href="single-food.html">商品详情</a></li>
										<li><a href="gallery.html">食物选择页</a></li>
									</ul>
								</li>
								<li><a href="Kefu.jsp ">联系我们</a></li>
							</ul>
						</div>
					</ul>
					<img src="images/shapes/27.png" id="img9">
					<div id="txtinfo">
						<marquee style="position: relative;top: -50px;width: 1700px;">
							<h3>🔊请把您的建议或留言请尽管告诉我们吧!我们会竭尽全力改善!非常感谢您的留言!期待您的每一次光临!祝您有美好的一天！么么哒~~~</h3>
						</marquee>
						<h1 id="h1_txt">Tell We</h1><br>
						<h5 id="h5_txt"><span>主页&nbsp;/&nbsp;</span><span>浏览&nbsp;/&nbsp;</span><span>菜单</span></h5>
					</div>

					<img src="images/shapes/Leaf.png" id="img50">
					<img src="images/shapes/bbr.png" id="img10">
					<!-- <input type="button" name="" id="btn1" value="Login" /> -->

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
			<!-- <div id="div_img">
				<img src="meau_img/2359.png" id="img40">
				<img src="meau_img/2429.png" id="img41">
				<img src="meau_img/2441.png" id="img42">
				<img src="meau_img/2454.png" id="img43">
			</div> -->


			<!-- 轮播图 -->
			<div id="lunbo">
				<div class="slide hi-slide">
					<div class="hi-prev "></div>
					<div class="hi-next "></div>
					<ul>
						<li><img src="images/blog/blog1.jpg"></li>
						<li><img src="images/blog/blog3.jpg"></li>
						<li><img src="images/blog/b-2.jpg"></li>
						<li><img src="images/blog/b-1.jpg"></li>
						<li><img src="images/blog/blog4.jpg"></li>
						<li><img src="images/g-1.jpg"></li>
						<li><img src="images/blog/blog5.jpg"></li>
						<li><img src="images/blog/blog7.jpg"></li>

					</ul>
				</div>
			</div>

			<div id="Client">
				<ul>
					<li>
						<h1><span id="topic">Testimonial</span></h1>
					</li>
					<li>
						<h3><span id="topic2">客户留言</span></h3>
					</li>
				</ul>

				<div id="foot">
					<div id="Client_img">
						<img src="imgs/1222.png" id="img60">
						<!-- <img src="imgs/屏幕截图%202021-07-01%20141234.png" id="img61">
						<img src="imgs/lll111.png" id="img62"> -->
						<ul>
							<li>1</li>
							<li>2</li>
							<li>3</li>
						</ul>
					</div>
					<div class="bbs">
						<header id="header2"><span onclick="post()" id="out">点击这里发布帖子吧！</span></header>
						<section>
							<ul id="postList"></ul>
						</section>
						<div class="post" id="post">
							<input class="title" placeholder="请输入标题（1-50个字符）" id="title">
							所属版块：<select id="sec">
								<option>请选择版块</option>
								<option>美食探讨</option>
								<option>改善建议</option>
								<option>吃法合集</option>
								<option>日常分享</option>
							</select>
							<textarea class="content" id="content"></textarea>
							<input class="btn" value="发布" onclick="postSuccess()">
						</div>
					</div>

				</div>

			</div>
			<div class="write_txt">
				<ul>
					<li id="write_txtli">在这里给我私信吧！</li>
					<input type="text" name="" id="" value="" placeholder="Name:" />
					<input type="text" name="" id="" value="" placeholder="Eamil:" />
					<input type="text" name="" id="" value="" placeholder="Phone:" />
					<!-- <input type="text" name="" id="" value="" placeholder="内容"/> -->
					<textarea rows="" cols="" id="seec" placeholder="内容">

						</textarea>
					<input type="button" name="" id="out_info" value="发送!" />
				</ul>
			</div>

		</div>
		<div class="footer">
			<img src="imgs/12854.png" id="footer">
		</div>

		<!-- <div class="loader-container">
			<img src="img/111jpeg.gif" >
		</div> -->

		<!-- 留言js -->
		<script type="text/javascript">
			function post() {
				document.getElementById("post").style.display = "block";
			}
			var tou = new Array("a.jpg", "b.jpg", "d.jpg", "e.jpg", "f.jpg");

			function postSuccess() {
				var newLi = document.createElement("li"); //创建一个新的li节点元素
				var iNum = Math.floor(Math.random() * 4); //随机获取头像
				var touDiv = document.createElement("div"); //创建头像所在的div节点
				var touImg = document.createElement("img"); //创建头像节点
				touImg.setAttribute("src", "imgs/" + tou[iNum]); //增加头像路径
				touDiv.appendChild(touImg); //将头像放在div节点中

				var titleH1 = document.createElement("h1"); //创建标题所在的标签h1
				var title = document.getElementById("title").value; //获取标题
				titleH1.innerHTML = title; //将标题内容放在h1标签中

				var newP = document.createElement("p"); //创建一个新的p节点元素
				var secName = document.createElement("span");
				var secSelect = document.getElementById("sec").value; //获取版块
				secName.innerHTML = "版块：" + secSelect; //把版块内容放到span中

				var myDate = new Date();
				var currentDate = myDate.getFullYear() + "-" + parseInt(myDate.getMonth() + 1) + "-" + myDate.getDate() + " " +
					myDate.getHours() + ":" + myDate.getMinutes();
				var timeSpan = document.createElement("span");
				timeSpan.innerHTML = "发表时间：" + currentDate;
				newP.appendChild(secName); //在p节点中插入版块
				newP.appendChild(timeSpan); //在p节点中插入发布时间；

				newLi.appendChild(touDiv); //插入头像
				newLi.appendChild(titleH1); //插入标题
				newLi.appendChild(newP); //插入版块、时间内容
				var postList = document.getElementById("postList");
				postList.insertBefore(newLi, postList.firstChild); //把当前内容插入到列表最前面

				document.getElementById("title").value = ""; //标题设置为空
				document.getElementById("content").value = ""; //内容设置为空

				document.getElementById("post").style.display = "none";
			}
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
		<!-- 导入 -->
		<script src="js/jquery-1.12.4.js" type="text/javascript" charset="utf-8"></script>
		<script src="js/liuyan.js" type="text/javascript" charset="utf-8"></script>
		<script src="pict/jquery.hislide.js" type="text/javascript" charset="utf-8"></script>
		<script src="pict/jquery.hislide.min.js" type="text/javascript" charset="utf-8"></script>
	</body>
</html>
