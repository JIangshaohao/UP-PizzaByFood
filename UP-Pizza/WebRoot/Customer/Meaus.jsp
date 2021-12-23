<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>菜单展示</title>
<link rel="stylesheet" type="text/css" href="Customer/css/css1.css" />

</head>
<body>

	<!-- header section starts  -->

	<header>

		<a href="#" class="logo"><i class="fas fa-utensils"></i>food</a>

		<div id="menu-bar" class="fas fa-bars"></div>

		<nav class="navbar">
			<a href="Customer/index.jsp">主页</a> <a href="#speciality">特色</a> <a
				href="#popular">最受欢迎</a> <a href="/UP-Pizza/CustomerCartServlet">购物车</a> <a href="#review">回顾</a>
			<a href="/UP-Pizza/CustomerdgShowAllServlet">我的订单</a>
		</nav>

	</header>

	<!-- header section ends -->

	<!-- home section starts  -->

	<section class="home" id="home">

		<div class="content">
			<h3>用爱做的食物</h3>
			<p>来到这里，绝对是你这个吃货的天堂！哈哈哈哈哈哈哈哈哈！</p>
			<a href="#" class="btn">立即订购</a>
		</div>

		<div class="image">
			<img src="Customer/images/home-img.png" alt="">
		</div>

	</section>

	<!-- home section ends -->

	<!-- speciality section starts  -->

	<section class="speciality" id="speciality">

		<h1 class="heading">
			our <span>speciality</span>
		</h1>

		<div class="box-container">
			<c:forEach items="${listas}" var="fas" varStatus="vs">
				<div class="box">
					<img class="image" src="Customer/Food/${fas.picture }" alt="">
					<div class="content">
						<img src="Customer/Food/${fas.face }" alt="">
						<h3>${fas.title }</h3>
						<p>${fas.info }</p>
					</div>
				</div>
			</c:forEach>
		</div>

	</section>

	<!-- speciality section ends -->

	<!-- popular section starts  -->

	<section class="popular" id="popular">

		<h1 class="heading">
			最受 <span>欢迎的</span> 食物
		</h1>

		<div class="box-container">

			<div class="box">
				<span class="price"> $5 - $20 </span> <img src="Customer/images/p-1.jpg"
					alt="">
				<h3>美味汉堡</h3>
				<div class="stars">
					<i class="fas fa-star"></i> <i class="fas fa-star"></i> <i
						class="fas fa-star"></i> <i class="fas fa-star"></i> <i
						class="far fa-star"></i>
				</div>
				<a href="/UP-Pizza/CustomerChowHanbaoServlet" class="btn">立即查看</a>
			</div>
			<div class="box">
				<span class="price"> $5 - $20 </span> <img src="Customer/images/p-2.jpg"
					alt="">
				<h3>美味蛋糕</h3>
				<div class="stars">
					<i class="fas fa-star"></i> <i class="fas fa-star"></i> <i
						class="fas fa-star"></i> <i class="fas fa-star"></i> <i
						class="far fa-star"></i>
				</div>
				<a href="/UP-Pizza/CustomerChowSweetsServlet" class="btn">立即查看</a>
			</div>
			<div class="box">
				<span class="price"> $5 - $20 </span> <img src="Customer/images/p-3.jpg"
					alt="">
				<h3>回味甜点</h3>
				<div class="stars">
					<i class="fas fa-star"></i> <i class="fas fa-star"></i> <i
						class="fas fa-star"></i> <i class="fas fa-star"></i> <i
						class="far fa-star"></i>
				</div>
				<a href="/UP-Pizza/CustomerChowSweetsServlet" class="btn">立即查看</a>
			</div>
			<div class="box">
				<span class="price"> $5 - $20 </span> <img src="Customer/images/p-4.jpg"
					alt="">
				<h3>美味早餐</h3>
				<div class="stars">
					<i class="fas fa-star"></i> <i class="fas fa-star"></i> <i
						class="fas fa-star"></i> <i class="fas fa-star"></i> <i
						class="far fa-star"></i>
				</div>
				<a href="/UP-Pizza/CustomerChowBreakfastServlet" class="btn">立即查看</a>
			</div>
			<div class="box">
				<span class="price"> $5 - $20 </span> <img src="Customer/images/p-5.jpg"
					alt="">
				<h3>可口饮料</h3>
				<div class="stars">
					<i class="fas fa-star"></i> <i class="fas fa-star"></i> <i
						class="fas fa-star"></i> <i class="fas fa-star"></i> <i
						class="far fa-star"></i>
				</div>
				<a href="#" class="btn">立即查看</a>
			</div>
			<div class="box">
				<span class="price"> $5 - $20 </span> <img src="Customer/images/p-6.jpg"
					alt="">
				<h3>美味冰淇凌</h3>
				<div class="stars">
					<i class="fas fa-star"></i> <i class="fas fa-star"></i> <i
						class="fas fa-star"></i> <i class="fas fa-star"></i> <i
						class="far fa-star"></i>
				</div>
				<a href="#" class="btn">立即查看</a>
			</div>

		</div>

	</section>

	<!-- popular section ends -->

	<!-- steps section starts  -->

	<div class="step-container">

		<h1 class="heading">
			how it <span>works</span>
		</h1>

		<section class="steps">

			<div class="box">
				<img src="Customer/images/step-1.jpg" alt="">
				<h3>选择您最喜欢的食物</h3>
			</div>
			<div class="box">
				<img src="Customer/images/step-2.jpg" alt="">
				<h3>免费快速送货</h3>
			</div>
			<div class="box">
				<img src="Customer/images/step-3.jpg" alt="">
				<h3>便捷的支付方式</h3>
			</div>
			<div class="box">
				<img src="Customer/images/step-4.jpg" alt="">
				<h3>最后，享受你的食物</h3>
			</div>

		</section>

	</div>

	<!-- steps section ends -->

	<!-- gallery section starts  -->

	<section class="gallery" id="gallery">

		<h1 class="heading">
			我们的食品 <span> 展示 </span>
		</h1>

		<div class="box-container">

			<div class="box">
				<img src="Customer/images/g-1.jpg" alt="">
				<div class="content">
					<h3>美味食物</h3>
					<p>用心做好每一口</p>
					<a href="/UP-Pizza/CustomerChowHanbaoServlet" class="btn">立即订购</a>
				</div>
			</div>
			<div class="box">
				<img src="Customer/images/g-2.jpg" alt="">
				<div class="content">
					<h3>美味的食物</h3>
					<p>用心做好每一口</p>
					<a href="/UP-Pizza/CustomerChowBreakfastServlet" class="btn">立即订购</a>
				</div>
			</div>
			<div class="box">
				<img src="Customer/images/g-3.jpg" alt="">
				<div class="content">
					<h3>美味的食物</h3>
					<p>用心做好每一口</p>
					<a href="/UP-Pizza/CustomerChowBreakfastServlet" class="btn">立即订购</a>
				</div>
			</div>
			<div class="box">
				<img src="Customer/images/g-4.jpg" alt="">
				<div class="content">
					<h3>美味的食物</h3>
					<p>用心做好每一口</p>
					<a href="/UP-Pizza/CustomerChowSweetsServlet" class="btn">立即订购</a>
				</div>
			</div>
			<div class="box">
				<img src="Customer/images/g-5.jpg" alt="">
				<div class="content">
					<h3>美味的食物</h3>
					<p>用心做好每一口</p>
					<a href="/UP-Pizza/CustomerChowSweetsServlet" class="btn">立即订购</a>
				</div>
			</div>
			<div class="box">
				<img src="Customer/images/g-6.jpg" alt="">
				<div class="content">
					<h3>美味的食物</h3>
					<p>用心做好每一口</p>
					<a href="/UP-Pizza/CustomerChowHanbaoServlet" class="btn">立即订购</a>
				</div>
			</div>
			<div class="box">
				<img src="Customer/images/g-7.jpg" alt="">
				<div class="content">
					<h3>美味的食物</h3>
					<p>用心做好每一口</p>
					<a href="/UP-Pizza/CustomerChowBreakfastServlet" class="btn">立即订购</a>
				</div>
			</div>
			<div class="box">
				<img src="Customer/images/g-8.jpg" alt="">
				<div class="content">
					<h3>美味的食物</h3>
					<p>用心做好每一口</p>
					<a href="/UP-Pizza/CustomerChowSweetsServlet" class="btn">立即订购</a>
				</div>
			</div>
			<div class="box">
				<img src="Customer/images/g-9.jpg" alt="">
				<div class="content">
					<h3>美味的食物</h3>
					<p>用心做好每一口</p>
					<a href="/UP-Pizza/CustomerChowSweetsServlet" class="btn">立即订购</a>
				</div>
			</div>

		</div>

	</section>

	<!-- gallery section ends -->

	<!-- review section starts  -->

	<section class="review" id="review">

		<h1 class="heading">
			我们最忠实的 <span>顾客</span>
		</h1>

		<div class="box-container">

			<div class="box">
				<img src="Customer/images/pic1.png" alt="">
				<h3>john deo</h3>
				<div class="stars">
					<i class="fas fa-star"></i> <i class="fas fa-star"></i> <i
						class="fas fa-star"></i> <i class="fas fa-star"></i> <i
						class="far fa-star"></i>
				</div>
				<p>用心最好食物，以食为乐。</p>
			</div>
			<div class="box">
				<img src="Customer/images/pic2.png" alt="">
				<h3>john deo</h3>
				<div class="stars">
					<i class="fas fa-star"></i> <i class="fas fa-star"></i> <i
						class="fas fa-star"></i> <i class="fas fa-star"></i> <i
						class="far fa-star"></i>
				</div>
				<p>用心最好食物，以食为乐。</p>
			</div>
			<div class="box">
				<img src="Customer/images/pic3.png" alt="">
				<h3>john deo</h3>
				<div class="stars">
					<i class="fas fa-star"></i> <i class="fas fa-star"></i> <i
						class="fas fa-star"></i> <i class="fas fa-star"></i> <i
						class="far fa-star"></i>
				</div>
				<p>用心最好食物，以食为乐。</p>
			</div>

		</div>

	</section>

	<!-- review section ends -->

	<!-- order section starts  -->

	<section class="order" id="order">

		<h1 class="heading">
			<span>立即</span> 下单
		</h1>

		<div class="row">

			<div class="image">
				<img src="Customer/images/order-img.jpg" alt="">
			</div>

			<form action="">

				<div class="inputBox">
					<input type="text" placeholder="name"> <input type="email"
						placeholder="email">
				</div>

				<div class="inputBox">
					<input type="number" placeholder="number"> <input
						type="text" placeholder="food name">
				</div>

				<textarea placeholder="address" name="" id="" cols="30" rows="10"></textarea>

				<input type="submit" value="立即订购" class="btn">

			</form>

		</div>

	</section>

	<!-- order section ends -->

	<!-- footer section  -->

	<section class="footer">

		<div class="share">
			<a href="#" class="btn">facebook</a> <a href="#" class="btn">twitter</a>
			<a href="#" class="btn">instagram</a> <a href="#" class="btn">pinterest</a>
			<a href="#" class="btn">linkedin</a>
		</div>

		<h1 class="credit">
			created by <span> mr. web designer </span> | all rights reserved!
		</h1>

	</section>

	<!-- scroll top button  -->
	<a href="#home" class="fas fa-angle-up" id="scroll-top"></a>

	<!-- loader  -->
	<div class="loader-container">
		<img src="Customer/images/loader.gif" alt="">
	</div>
	<!-- custom js file link  -->
	<script src="Customer/js/jquery-1.12.4.js" type="text/javascript"
		charset="utf-8"></script>
	<script src="Customer/js/js2.js" type="text/javascript" charset="utf-8"></script>

</body>
</html>
