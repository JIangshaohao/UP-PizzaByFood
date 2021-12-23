<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title></title>
<link rel="stylesheet" type="text/css" href="Customer/css/Meau.css" />
<script src="Customer/js/js_351.js" type="text/javascript"
	charset="utf-8"></script>
<script src="Customer/js/liandongAddress.js"></script>
<link rel="stylesheet" href="Customer/css/infocon.css">
<link rel="stylesheet" type="text/css" href="Customer/css/demo.css" />
<link rel="stylesheet" href="Customer/css/sanji.css">

<link rel="stylesheet" type="text/css"
	href="Customer/CSS_alert_JS/sweet-alert.css">
<script src="Customer/CSS_alert_JS/sweet-alert.min.js"></script>
</head>
<body>
	<div id="all">
		<!-- 头部 -->
		<header class="mui-bar mui-bar-nav">
			<div id="header">
				<ul>
					<li id="span1"><span>Phone:888-8888-888</span>&nbsp;&nbsp;&nbsp;<span>Email:support@163.com</span></li>
					<li><img src="Customer/images/logo/logo3.png" id="img5"></li>
					<div id="fasfa-angle-down">
						<ul class="main-menu">
							<li class="fasfa-angle-down"><a href="index.jsp">主页</a>
								<ul class="submenu">
									<li><a href="index.html">主页-1</a></li>
									<li><a href="homepage2.html">主页-2</a></li>

								</ul></li>
							<li><a href="/UP-Pizza/CustomerChowPictureServlet">菜单</a></li>
							<li><a href="Boke.jsp">博客</a></li>
							<li class="fasfa-angle-down"><a href="/UP-Pizza/CustomerCartServlet">购物车</a>
								<ul class="submenu">
									<li><a href="blog.html">博客</a></li>
									<li><a href="blog-single.html">单一博客</a></li>
								</ul></li>
							<li class="fasfa-angle-down"><a href="liuyan.jsp">留言</a>
								<ul class="submenu">
									<li><a href="#">结算</a></li>
									<li><a href="#">单一预览</a></li>
									<li><a href="#">副页</a></li>
									<li><a href="#">食品页</a></li>
									<li><a href="#">食品页2</a></li>
									<li><a href="#">购物车</a></li>
									<li><a href="#">商品详情</a></li>
									<li><a href="#">食物选择页</a></li>
								</ul></li>
							<li><a href="Kefu.jsp">客服</a></li>
						</ul>
					</div>
				</ul>
				<img src="Customer/images/shapes/27.png" id="img9">
				<h1 id="h1_txt">CheckOut</h1>
				<br />
				<h5 id="h5_txt">
					<span>主页|</span><span>菜单|</span><span>购物车</span>
				</h5>
				<img src="Customer/images/shapes/Leaf.png" id="img50"> <img
					src="Customer/images/shapes/bbr.png" id="img10"> <input
					type="button" name="" id="btn1" value="Login" />

			</div>
		</header>

		<div id="">
			<ul>
				<li><img src="Customer/images/shapes/25.png" id="img2"></li>
				<li><img src="Customer/images/shapes/26.png" id="img4"></li>
				<li><img src="Customer/images/img/htleaf.png" id="img11"></li>

			</ul>
		</div>

	</div>
	<div id="hourhide">
		<div id="div_img">
			<img src="Customer/meau_img/屏幕截图%202021-06-29%20192359.png"
				id="img40"> <img
				src="Customer/meau_img/屏幕截图%202021-06-29%20192429.png" id="img41">
			<img src="Customer/meau_img/屏幕截图%202021-06-29%20192441.png"
				id="img42"> <img
				src="Customer/meau_img/屏幕截图%202021-06-29%20192454.png" id="img43">
		</div>
		<form method="post"
			action="/UP-Pizza/CustomerMeauServlet?uid=${cus.id }&qian=${mo}">
			<input type="hidden" name="did" value="">
			<div id="from_input">
				<span>
					<h1>Billing&nbsp;Details</h1>
				</span> <input type="text" name="" id="input_1" value=""
					placeholder="姓名(必填)" autocomplete="off" required autofocus /><span
					id="stars"> * </span>
					
					
					 <input type="email" name="" id="input_2"
					value="" placeholder="Email(必填)" autocomplete="off" required
					autofocus /><span id="stars"> * </span>
				<div id="bigOne">
					<div id="box">
						<span class="loadText text" id="loadText_text">请选择省/市/区</span> <span
							class="textProvince text" id="textProvince"></span> <span
							class="textCity text" id="textCity"></span> <span
							class="textArea text" id="textArea"></span> <span
							class="iconfont icon-arrow-down arrow"></span>
					</div>
					<input type="text" value="" id="totalConfirm" readonly="">
					<div id="content">
						<div class="chose-tab">
							<div id="province" class="chosePCA select">
								省份
								<ul class="province-list list">
								</ul>
							</div>
							<div id="city" class="chosePCA">
								城市
								<ul class="city-list list">
								</ul>
							</div>
							<div id="area" class="chosePCA">
								区县
								<ul class="area-list list">
								</ul>
							</div>
						</div>
					</div>
					<button class="reset btn" id="reset_btn">重置</button>
				</div>
				<button class="confirm btn" id="confirm_btn">确定</button>
				
				<input type="text" id="input_4" autocomplete="off" value=""
					placeholder="口味特点(可选填!)" /> 
					
					<input type="text" id="input_5"
					autocomplete="off" value="" placeholder="手机号码(必填)" required
					autofocus /><span id="stars1"> * </span> 
					
					<input type="text"
					id="input_6" autocomplete="off" value=""
					placeholder="额外收餐人姓名(可选填!)" /> 
					
					<input type="text" id="input_7"
					autocomplete="off" value="" placeholder="详细地址(门牌号)(必填)" required
					autofocus /><span id="stars"> * </span> <input type="text"
					id="input_8" autocomplete="off" value="" placeholder="下单备注(可选填!)" />
				<input type="text" id="input_9" value="" placeholder="ZIP(可选填!)" />
				<select name="select_info" id="select_info">
					<option value="1">选择您的外卖商家(默认美团)</option>
					<option value="1">美团</option>
					<option value="2">饿了么</option>
					<option value="3">百度</option>
				</select>
			</div>


			<div id="img_pay">

				<div id="spanInfo">
					<ul>
						<li>
							<h1>
								<span id="span10">您需支付:</span>
							</h1>
						</li>
						<li>
							<h3>
								<span id="span11">商品:</span>
							</h3>
							<h3>
								<span id="span12">小计:</span>
							</h3>
						</li>
					</ul>
				</div>
				<div id="Product_name_money" style="width:428px">
					<ul id="product_info_pay">
						<c:forEach items="${scartlist}" var="a">
							<li><span>${a.f.name}</span><i>${a.f.xprice*a.qty}￥</i></li>
						</c:forEach>

					</ul>
				</div>

				<script type="text/javascript">
					/* $(function() {
						alert(${scartlist});

					}) */
				</script>

				<div id="sum_sum">
					<span>小计</span> <i id="totall">${mo}￥</i>
					<!-- <input type="button" value="添加新的收餐地址" onclick="member_edit('21',this)" style=""> -->
				</div>


				<div id="Tz_box">
					<!--Tz_List start-->
					<ul id="Tz_List">
						<li><img src="Customer/time_img/0.png" alt="数字图片0" /><img
							src="Customer/time_img/0.png" /></li>
						<li><img src="Customer/time_img/0.png" alt="数字图片0" /><img
							src="Customer/time_img/0.png" /></li>
						<li><img src="Customer/time_img/d.png" alt="数字图片冒号" /></li>
						<li><img src="Customer/time_img/0.png" /><img
							src="Customer/time_img/0.png" /></li>
						<li><img src="Customer/time_img/0.png" /><img
							src="Customer/time_img/0.png" /></li>
						<li><img src="Customer/time_img/d.png" /></li>
						<li><img src="Customer/time_img/0.png" /><img
							src="Customer/time_img/0.png" /></li>
						<li><img src="Customer/time_img/0.png" /><img
							src="Customer/time_img/0.png" /></li>
					</ul>
					<!--Tz_List end-->
				</div>

				<marquee style="position: relative;top: 190px;">
					<div id="myclock"></div>
				</marquee>

				<input type="submit" name="" id="btn_pay" value="立即下单"
					style="cursor: pointer;" />
			</div>
		</form>
	</div>

	<div class="footer">
		<img src="Customer/imgs/屏幕截图%202021-06-29%20112854.png" id="footer">
	</div>

	<!--修改收货地址隐藏域-->
	<!-- <div class="add_menber" id="add_menber_style" style="display:none">

		<ul class=" page-content">
			<li><label class="label_name">图&nbsp;片&nbsp;名:&nbsp;：</label><span
				class="add_name"><input value="" name="picture" type="text"
					class="text_add title" id="title" /></span>
				<div class="prompt r_f"></div></li>

			<li><label class="label_name">图片Logo：</label><span
				class="add_name"><input type="file" id="imagefiles"
					onchange="getImage()" /> <br /> <img id="imgs" src=""
					width="120px" height="100px" /> <input type="hidden"
					id="imagename" name="imagename" class="imagename" /></span>
				<div class="prompt r_f"></div></li>

			<li><label class="label_name">图片Face：</label><span
				class="add_name"><input type="file" id="showFace"
					onchange="getImages()" /> <br /> <img id="Face" src=""
					width="120px" height="100px" /> <input type="hidden"
					id="HiddenFace" name="HiddenFace" class="HiddenFace" /></span>
				<div class="prompt r_f"></div></li>

			<li class="adderss"
				style="position: relative;left: 300px;bottom: -50px;"><label
				class="label_name">说明：</label><span class="add_name"><input
					name="imageInfo" type="text" class="text_add imageInfo"
					style=" width:350px" value="" id="imageInfo" /></span>
				<div class="prompt r_f"></div></li>

		</ul>
	</div> -->
	<script type="text/javascript">
		//初始化
		var docUrl = unescape(window.location.search);
		if (docUrl.indexOf("-") != -1) {
			var nodes = docUrl.substring(1).split("-");
			var img = nodes[0];
			document.getElementById("totall").innerHTML = "$" + img;

		}
	</script>
	<script type="text/javascript">
		function disptime() {
			var today = new Date(); //获取当前日期和时间
			var hh = today.getHours();
			var mm = today.getMinutes() + 5;
			var ss = today.getSeconds();
			document.getElementById("myclock").innerHTML = "您还有5分钟支付时间，页面将于："
					+ hh + ":" + mm + ":" + ss + "关闭!";

		}
		//每隔一秒调用一次disptime();
		disptime();
	</script>

	<script src="Customer/js/Move.js" type="text/javascript"
		charset="utf-8"></script>
	<script src="Customer/js/demo.js" type="text/javascript"
		charset="utf-8"></script>
	<script src="Customer/js/jquery-1.12.4.js" type="text/javascript"
		charset="utf-8"></script>
	<script src="Customer/js/meau.js" type="text/javascript"
		charset="utf-8"></script>
	<script src="Customer/js/sanjiliandong.js" type="text/javascript"
		charset="utf-8"></script>
	<script type="text/javascript">
		$("#input_2").blur(function() {
			checkEmail();
		});
		$("#input_7").blur(function() {
			checkAddress();
		});
		$("#input_5").blur(checkPhone);
		function checkPhone() {
			var myreg = /^(((13[0-9]{1})|(15[0-9]{1})|(18[0-9]{1})|(17[0-9]{1}))+\d{8})$/;
			var mo = $("#input_5").val(); //获取值
			if ($("#input_5").val() == "") {
				//alert('请输入有效的手机号码！');
				swal("提示!", "请输入有效的手机号码！", "warning");
				return false;
			} else if (myreg.test(mo) == false) {
				/* var a = alert("手机号码格式不正确!");
				if (a) {
					return false;
				} */
				swal("提示!", "手机号码格式不正确！", "warning");
				return false;
			} else {
				return true;

			}
		};

		//验证邮箱
		function checkEmail() {
			if ($("#input_2").val() == "") {
				//alert("请填写邮箱！");
				swal("提示!", "请填写邮箱！", "warning");
				return false;
			} else if ($("#input_2").val().indexOf("@") == -1
					|| $("#input_2").val().indexOf(".") == -1) {
				/* var c = alert("邮箱格式不正确！至少要包含“@” 和 “.” 符号");
				if (c) {
					return false;
				} */
				swal("邮箱格式不正确！", "至少要包含“@” 和 “.” 符号", "warning");
				return false;
			} else {

				return true;

			}

		};

		function checkAddress() {
			if ($("#input_7").val() == "") {
				/* var a = alert("请填写收餐详细地址！");
				if (a) {
					return false;
				} */
				swal("提示!", "请填写收餐详细地址！", "warning");
				return false;
			} else {
				return true;

			}
		};

		var strsvt = '';
		function nums() {
			var codeStrs = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789';
			// 用来生成随机整数
			function getRandoms(n, m) { // param: (Number, Number)
				n = Number(n);
				m = Number(m);
				// 确保 m 始终大于 n
				/* if (n > m||n<m) {
					var temp = n;
					n = m;
					m = temp;
				} */

				// 下有详细说明
				return Math.floor(Math.random() * 10);

			}
			// 将随机生成的整数下标对应的字母放入div中
			var str = '';

			function getCodes() {

				// 有几位就循环几次
				for (var i = 0; i < 9; i++) {
					var ran = getRandoms(0, 62);
					str += codeStrs.charAt(ran);
				}
				//oDivs.value = str;
				strsvt = str;
				//alert($("input[name='did']").length);
				$("input[name='did']").val(strsvt);
			}
			getCodes();

		}
		$(function() {
			nums();
		});
	</script>
	
</body>
</html>
