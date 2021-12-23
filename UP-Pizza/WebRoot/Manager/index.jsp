<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<html lang="en">

	<head>
		<meta charset="utf-8">

		<title>UP-Pizza管理系统</title>

		<link rel="stylesheet" href="css/index.css">
	</head>

	<body>

		<div class="meny">
			<h2>UP-Pizza管理系统</h2>
			<ul>
				<li><a href="#">首页</a></li>
				<li><a href="#">商品详情</a></li>
				<li><a href="#">上/下架-商品信息</a></li>
				<li><a href="#">库存信息</a></li>
				<li><a href="#">客户资料</a></li>
				<li><a href="#">员工资料</a></li>
				<li><a href="#">公司介绍</a></li>
				<li><a href="#">合作伙伴</a></li>
				<li><a href="#">音乐</a></li>
				<li><a href="#">留言</a></li>
			</ul>
		</div>

		<div class="meny-arrow"></div>

		<div class="contents">
			<article>
				<h1>Meny</h1>
				<!-- <p>&#x9002;&#x7528;&#x6D4F;&#x89C8;&#x5668;&#xFF1A;FireFox&#x3001;Chrome&#x3001;Safari&#x3001;Opera&#x3001;&#x50B2;&#x6E38;&#x3001;&#x641C;&#x72D7;. &#x4E0D;&#x652F;&#x6301;IE8&#x3001;360&#x3001;&#x4E16;&#x754C;&#x4E4B;&#x7A97;&#x3002;
				</p>

				<small>&#x6765;&#x6E90;&#xFF1A;<a href="#" target="_blank">&#x7AD9;&#x957F;&#x7D20;&#x6750;</a></small> -->
			</article>

		</div>

		<script src="js/meny.min.js"></script>
		<script>
			// Create an instance of Meny
			var meny = Meny.create({

				menuElement: document.querySelector('.meny'),

				contentsElement: document.querySelector('.contents'),
				
				position: Meny.getQuery().p || 'left',

				height: 200,

				width: 260,

				threshold: 40
			});

			if (Meny.getQuery().u && Meny.getQuery().u.match(/^http/gi)) {
				var contents = document.querySelector('.contents');
				contents.style.padding = '0px';
				contents.innerHTML = '<div class="cover"></div><iframe src="' + Meny.getQuery().u +
					'" style="width: 100%; height: 100%; border: 0; position: absolute;"></iframe>';
			}
		</script>

	</body>
</html>
