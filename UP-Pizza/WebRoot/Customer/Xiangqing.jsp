<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%><!--[if IE 8 ]><html class="ie ie8" lang="en"> <![endif]-->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title></title>
<link rel="stylesheet" type="text/css"
	href="Customer/CSS_alert_JS/sweet-alert.css">
<script src="Customer/CSS_alert_JS/sweet-alert.min.js"></script>

<style>
#fl——img {
	position: absolute;
	top: 0px;
	left: 380px;
}
</style>
</head>
<link rel="stylesheet" type="text/css" href="Customer/css/Xiangqing.css" />

<body>
	<div id="top">
		<div id="all">
			<!-- 头部 -->
			<header class="mui-bar mui-bar-nav">
				<div id="header">
					<ul>
						<!-- <li id="span1"><span>Phone:888-8888-888</span>&nbsp;&nbsp;&nbsp;<span>Email:support@163.com</span></li> -->
						<li><img src="Customer/imagess/logo/logo3.png" id="img5"></li>
						<div id="fasfa-angle-down">
							<ul class="main-menu">
								<li class="fasfa-angle-down"><a href="Customer/index.jsp"
									id="fasfa-angle-a">主页</a>

									<ul class="submenu">
										<li><a href="index.jsp">主页-1</a></li>
										<li><a href="homepage2.jsp">主页-2</a></li>

									</ul></li>
								<li><a href="/UP-Pizza/CustomerChowPictureServlet" class="subment1">菜单</a></li>
								<li><a href="Customer/Boke.jsp" class="subment2">博客</a></li>
								<li><a href="Customer/FoodInfo.jsp" class="subment2">美食秘密</a></li>
								<li class="fasfa-angle-down"><a href="/UP-Pizza/CustomerCartServlet">购物车</a>
									<ul class="submenu">
										<li><a href="blog.html">博客</a></li>
										<li><a href="blog-single.html">单一博客</a></li>
									</ul></li>
								<li class="fasfa-angle-down"><a href="Customer/liuyan.jsp">留言 </a>
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
								<li><a href="Customer/Kefu.jsp" class="subment">客服</a></li>
							</ul>

						</div>


					</ul>


					<img src="Customer/imagess/img/8.png" id="img8"> <img
						src="Customer/imagess/shapes/27.png" id="img9"> <!-- <input
						type="button" name="" id="btn1" value="Login"
						style="color: #FFFFFF;cursor: pointer;" /> --> <span id="boke">&nbsp;&nbsp;食品详情</span>

					<a id="boke-a"> <span>主页</span>&nbsp; <span>商店</span>&nbsp;&nbsp;
						<span>食品店</span>
					</a>
				</div>

			</header>
			<div id="">
				<ul>

					<li><img src="Customer/imagess/shapes/26.png" id="img4"></li>

				</ul>
			</div>
		</div>
	</div>
	<!--top-->
	<div id="fus">
		<div id="xfuig">
			<img src="Customer/imagess/cart.png">
		</div>
	</div>

	<div id="div_body">

		<div id="body_ys">
			<div id="ys_1">
				<div id="bck">
					<div id="mian_img">
						<div id="main_mgbckgcol">
							<div id="pridouc_img"
								style="position: absolute;top: 20px;left: 50px;">
								<input type="hidden" value="${food.id}" class="fidval" /> <img
									src="Customer/Food/${food.imageName}" width="450px"
									style="border-radius:50%">
								<!-- <img src="imagess/bg/delivery-img.png" width="500px"> -->
								<!-- <img src="imagess/img/br1.png" > -->
							</div>
						</div>

						<div id="fl——img">
							<img src="Customer/imagess/icons/pbadge.png">
						</div>

					</div>
				</div>
				<div id="pridouc_div">
					<div id="pridouc_row1">

						<c:forEach items="${fx}" var="f" begin="0" end="2">
							<div id="bk_pridoucimg1" class="pri"
								style="display:inline-block;">
								<div id="pridouc_bk">
									<div id="pridouc_div1_back" class="bk">
										<div id="pridouc_img1" class="pridoucimg">
											<img src="Customer/Food/${f.imageName}"
												style="width:70px;height:60px;border-radius:50%">
										</div>
									</div>
								</div>
							</div>
						</c:forEach>


					</div>
				</div>
			</div>

			<div class="col-lg-6 wow fadeInRight"
				style="visibility: visible; animation-name: fadeInRight;" id="wow">
				<div class="recipe-right">
					<h2>
						<font style="vertical-align: inherit;"> <input
							type="hidden" class="hiden" value="${food.typeId}" /> <font
							style="vertical-align: inherit;" id="uname">${food.name}</font>
						</font>
					</h2>

					<form method="get">
						<div
							class="chickens-inforbar d-flex justify-content-around align-items-center">
							<span class="cp"> <font style="vertical-align: inherit;"
								id="font1"> <font style="vertical-align: inherit;">
										<span>${food.xprice}</span> ￥
								</font>
							</font> <del>
									<font style="vertical-align: inherit;" id="font2"> <font
										style="vertical-align: inherit;"><span>${food.yprice}</span>
											￥</font>
									</font>
								</del>

							</span> <span class="rate"> <font
								style="vertical-align: inherit;"> <img
									src="Customer/imagess/3253.png">
							</font>
							</span> <span> <span class="colored"><i
									class="fas fa-comments"></i></span> <font
								style="vertical-align: inherit;"> <font
									style="vertical-align: inherit;"> 评论</font>
							</font>
							</span> <span> <span class="colored"><img
									src="Customer/imagess/3623.png"></span> <font
								style="vertical-align: inherit;"> <font
									style="vertical-align: inherit;" id="xh"> <span>200</span>+
										喜欢
								</font>
							</font>
							</span>
						</div>
						<p id="p_i1">
							<font style="vertical-align: inherit;"> <font
								style="vertical-align: inherit;">${food.info} </font>
							</font>
						</p>
						<div class="chickens-details d-flex justify-content-between"
							id="chickens">
							<span>数量: <input type="number" maxlength="3"
								placeholder="1" value="1" id="nuber"
								onkeypress='return( /[\d]/.test(String.fromCharCode(event.keyCode) ) )'></span><span
								id="spen"></span> <span> <label for="size"> <font
									style="vertical-align: inherit;"> <font
										style="vertical-align: inherit;">类型</font>
								</font>
							</label> <select name="#" id="size">
									<option value="#"><font
											style="vertical-align: inherit;"> <font
											style="vertical-align: inherit;">小</font>
										</font>
									</option>
									<option value="#"><font
											style="vertical-align: inherit;"> <font
											style="vertical-align: inherit;">中</font>
										</font>
									</option>
									<option value="#"><font
											style="vertical-align: inherit;"> <font
											style="vertical-align: inherit;">大</font>
										</font>
									</option>

							</select>
							</span>
							<!-- <span>
											<label for="stock">
												<font style="vertical-align: inherit;">
													<font style="vertical-align: inherit;">可用库存</font>
												</font>
											</label>
											<input id="stock" type="number" placeholder="60">
										</span> -->
						</div>
						<div class="chickens-meta">
							<ul class="d-flex justify-content-between">
								<li><font style="vertical-align: inherit;"> <font
										style="vertical-align: inherit;">标签 : SKU：</font>
								</font><span> <font style="vertical-align: inherit;"> <font
											style="vertical-align: inherit;">食品收藏</font>
									</font>
								</span></li>
								<li><font style="vertical-align: inherit;"> <font
										style="vertical-align: inherit;">类别：</font>
								</font><span> <font style="vertical-align: inherit;"> <font
											style="vertical-align: inherit;">${f.tyepid}</font>
									</font>
								</span></li>
							</ul>
						</div>

						<button type="button" class="btn" id="submit"
							onclick="buy(${food.id})">
							<font style="vertical-align: inherit;"> <font
								style="vertical-align: inherit;">添加到购物车</font>
							</font>
						</button>
					</form>
				</div>
			</div>

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
							swal("已加入购物车!", "", "success");

						} else {
							alert("老子出错了！");

						}

					}

				}
			</script>



			<div id="ys_3">
				<ul class="nav" id="myTab" role="tablist">
					<li class="nav-item"><a class="nav-link active" id="des-tab"
						data-toggle="tab" href="#des" role="tab" aria-controls="des"
						aria-selected="true"> <font style="vertical-align: inherit;">
								<font style="vertical-align: inherit;">描述</font>
						</font>
					</a></li>
					<li class="nav-item"><a class="nav-link" id="info-tab"
						data-toggle="tab" href="#info" role="tab" aria-controls="info"
						aria-selected="false"> <font style="vertical-align: inherit;">
								<font style="vertical-align: inherit;">附加信息 </font>
						</font>
					</a></li>
					<li class="nav-item"><a class="nav-link" id="reviews-tab"
						data-toggle="tab" href="#reviews" role="tab"
						aria-controls="reviews" aria-selected="false"> <font
							style="vertical-align: inherit;"> <font
								style="vertical-align: inherit;">评论</font>
						</font>
					</a></li>
				</ul>

				<div id="nav_img">
					<img src="Customer/imagess/2221.png">
				</div>

			</div>
			<div id="ys_4">
				<div class="rep">
					<h3>
						<font style="vertical-align: inherit;"> <font
							style="vertical-align: inherit;">相关</font>
						</font><span> <font style="vertical-align: inherit;"> <font
								style="vertical-align: inherit;">产品</font>
						</font>
						</span>
					</h3>

				</div>

				<c:forEach items="${fx}" begin="0" end="3" var="f">

					<div class="col-xl-3 col-lg-3 col-md-6">
						<div class="single-dishes">
							<div class="dish-img">
								<input type="hidden" value="${f.id}" class="fx" /> <img
									src="Customer/Food/${f.imageName}"
									style="width: 150px;;height:150px;    border-radius: 50%;"
									alt="">
							</div>
							<div class="dish-content">
								<h5>
									<a> <font style="vertical-align: inherit;"> <font
											style="vertical-align: inherit;">${f.name} </font>
									</font>
									</a>
								</h5>
								<p>
									<font style="vertical-align: inherit;"> <font
										style="vertical-align: inherit;">${f.info}</font>
									</font>
								</p>
								<span class="price"> <font
									style="vertical-align: inherit;"> <font
										style="vertical-align: inherit;">价格：${f.xprice}元</font>
								</font>
								</span>
							</div>
							<span class="badge"> <font
								style="vertical-align: inherit;"> <font
									style="vertical-align: inherit;">销售</font>
							</font>
							</span>
							<div class="cart-opt">
								<span> <a><i class="fas fa-heart"></i></a>
								</span> <span> <a><i class="fas fa-shopping-basket"></i></a>
								</span>
							</div>
						</div>
					</div>
				</c:forEach>
			</div>

		</div>

	</div>

	<img src="Customer/imagess/85339.png" width="100%">
	<script src="Customer/fly-master/src/requestAnimationFrame.js"
		type="text/javascript" charset="utf-8"></script>
	<script src="Customer/js/jquery-1.12.4.js" type="text/javascript"
		charset="utf-8"></script>
	<script src="Customer/js/Xiangqing.js" type="text/javascript"
		charset="utf-8"></script>
	<script src="Customer/fly-master/dist/jquery.fly.min.js"
		type="text/javascript" charset="utf-8"></script>
	<script src="https://cdn.staticfile.org/jquery/3.4.0/jquery.min.js"></script>
	<script
		src="https://cdn.staticfile.org/jquery-cookie/1.4.1/jquery.cookie.min.js"></script>
	<script type="text/javascript">
		var box = document.getElementById("submit");
		//onmousedown   当鼠标按住box之后，可以拖动元素
		box.onmousedown = function() {
			var disX = event.clientX - this.offsetLeft;
			var disY = event.clientY - this.offsetTop;
			// 复制一个跟box一样的div
			var clone = this.cloneNode();
			clone.removeAttribute('id');
			clone.style.opacity = 0.3;
			document.body.appendChild(clone);

			document.onmousemove = function() {
				clone.style.left = event.clientX - disX + "px";
				clone.style.top = event.clientY - disY + "px";
			}
			document.onmouseup = function() {
				document.onmousemove = null;
				box.style.left = clone.style.left;
				box.style.top = clone.style.top;
				document.body.removeChild(clone);
			}
		}

		$(function() {
			$.cookie("number", $.cookie("number") == null ? 1 : $
					.cookie("number"));
			$("#nuber").val($.cookie("number"));
			$("#nuber").change(function() {
				$.cookie("number", $(this).val());
				$(this).val($.cookie("number"));
			});

			$(".col-xl-3").click(function() {
				var fid = $(this).find(".fx").val();
			});
		});

		$(".pridoucimg img").hover(
				function() {

					var arr = new Array();
					var name = new Array();
					var yprice = new Array();
					var xprice = new Array();
					var info = new Array();
					var index = $(".pridoucimg img").index(this);
					$.ajax({
						url : "/UP-Pizza/CustomerShowXqServlet",
						type : "post",
						data : {
							"fg" : "123",
							"fid" : $(".fidval").val()
						},
						dataType : "text",
						success : callback
					});
					function callback(data) {
						var json = $.parseJSON(data);
						for (i in json) {
							var js = json[i];
							arr[i] = js.imageName;
							name[i] = js.name;
							yprice[i] = js.yprice;
							xprice[i] = js.xprice;
							info[i] = js.info;
						}
						$("#pridouc_img img").attr("src",
								"Customer/Food/" + arr[index]);
						$("#uname").text(name[index]);
						$("#font1").text(xprice[index] + "$");
						$("#font2").text(yprice[index] + "$");
						$("#p_i1 >font").text(info[index] + "$");
					}

				})

		.offsetLeft;
		var disY = event.clientY - this.offsetTop;
		// å¤å¶ä¸ä¸ªè·boxä¸æ ·çdiv
		var clone = this.cloneNode();
		clone.removeAttribute('id');
		clone.style.opacity = 0.3;
		document.body.appendChild(clone);

		document.onmousemove = function() {
			clone.style.left = event.clientX - disX + "px";
			clone.style.top = event.clientY - disY + "px";
		}
		document.onmouseup = function() {
			document.onmousemove = null;
			box.style.left = clone.style.left;
			box.style.top = clone.style.top;
			document.body.removeChild(clone);
		}
	</script>
</body>
</html>
