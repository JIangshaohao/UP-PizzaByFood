<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>图片切换</title>
<style>
.picture {
	position: relative;
	width: 1200px;
	height: 633px;
	margin: 0 auto;
	border: 2px solid rgb(231, 127, 217);
	overflow: hidden;
}

.radius {
	/* 圆点所在的p (容器)  */
	width: 100%;
	height: 10px;
	position: absolute;
	bottom: 30px;
	text-align: center;
}

.pg {
	position: absolute;
	margin: 0;
	width: 100%;
	height: 20px;
	background-color: rgba(0, 0, 0, .4);
	text-align: center;
	font-size: 16px;
	font-weight: 600;
	color: #fff;
}

.title {
	position: absolute;
	width: 100%;
	bottom: 0px;
	text-align: center;
	font-size: 16px;
	font-weight: 600;
	color: rgb(21, 223, 72);
}

span {
	display: inline-block;
	border: 10px solid yellow;
	border-radius: 20%;
}

.active {
	border: 10px solid #656466;
}

/* 左右箭头  */
.arrowhead-left,.arrowhead-right {
	position: absolute;
	width: 41px;
	height: 69px;
	font-size: 30px;
	line-height: 70px;
	text-align: center;
	color: #D6D8D4;
	background-color: rgba(0, 0, 0, .3);
}

.arrowhead-left {
	left: 0;
	top: 40%;
}

.arrowhead-right {
	right: 0;
	top: 40%;
}
</style>
</head>

<body>
	<div class="picture">
		<!-- 图片页码 -->
		<p class="pg"></p>
		<img src="images/屏幕截图%202021-06-27%20133653.png">

		<!-- 小圆点点
        <p class="radius"></p >
        <!-- 图片的下面标题 -->
		<p class="title">标题</p>

		<!-- 左右箭头 -->
		<div class="arrowhead-left" id="al"><</div>
		<div class="arrowhead-right" id="ar">></div>
	</div>

	<script>
		var address = [ "./images/123456.png",
				"./images/屏幕截图 2021-06-27 153132.png", "./images/322.png",
				"./images/屏幕截图 2021-06-27 153201.png",
				"./images/屏幕截图 2021-06-27 153234.png",
				"./images/屏幕截图 2021-06-27 153305.png" ];
		var imgs = document.querySelector("img");
		var len = address.length; //图片地址的数量为len
		var str = "";
		var pp = document.getElementsByTagName("p"); //获取的是p标签的集合
		//  var pp  = document.querySelector("p");    //获取的是一个元素
		var al = document.getElementById("al");
		var ar = document.getElementById("ar");
		var n = 0;

		//添加span标签（小圆点），个数为len个
		for (i = 0; i < len; i++) {
			str += ' <span></span>'
		}
		pp[1].innerHTML = str;

		var spans = pp[1].getElementsByTagName('span'); //获取p[1]里所有span标签
		spans[0].className = 'active'; //给第一个span标签添加样式 active

		for (i = 0; i < len; i++) {
			spans[i].index = i; //自定义索引值

			spans[i].onmouseover = function() { //鼠标指向圆点时的事件
				for (i = 0; i < len; i++) {
					spans[i].className = ""; //通过循环，清除所有圆点的类名
				}
				n = this.index;
				this.className = 'active'; //给鼠标移入的圆点添加类名
				imgs.src = address[this.index];
				pp[0].innerHTML = [ this.index + 1 ] + "/6";
				pp[2].innerHTML = "风光" + [ this.index + 1 ];

			}

		}

		ar.onclick = function() { //右侧箭头，点击一次图片向右换一张
			n++;
			if (n > 5) {
				n = 0;
			}
			for (i = 0; i < len; i++) {
				spans[i].className = "";
			}

			spans[n].className = "active";
			imgs.src = address[n];
			pp[0].innerHTML = (n + 1) + "/6";
			pp[2].innerHTML = "风光" + (n + 1);

		}

		al.onclick = function() { // //左侧箭头，点击一次图片向左换一张
			n--;
			if (n < 0) {
				n = (len - 1);
			}
			for (i = 0; i < len; i++) {
				spans[i].className = "";
			}
			spans[n].className = "active";
			imgs.src = address[n];
			pp[0].innerHTML = (n + 1) + "/6";
			pp[2].innerHTML = "风光" + (n + 1);
		}

		setInterval(ar.onclick, 3000); //添加定时器  setInterval（函数，间隔时间单位为毫秒）
		//此次添加的函数为点击右侧箭头，间隔为3秒
	</script>
</body>

</html>
