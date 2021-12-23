<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%><!--[if IE 8 ]><html class="ie ie8" lang="en"> <![endif]-->
<!--[if (gte IE 9)|!(IE)]><!-->
<html lang="en">
<!--<![endif]-->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<head>
<meta charset="utf-8">
<title></title>
<link rel="stylesheet" type="text/css"
	href="Customer/css/ShoppingCart.css" />
<link rel="stylesheet" type="text/css"
	href="Customer/CSS_alert_JS/sweet-alert.css">
<script src="Customer/CSS_alert_JS/sweet-alert.min.js"></script>
<style type="text/css">
* {
	-webkit-box-sizing: border-box;
	-moz-box-sizing: border-box;
	box-sizing: border-box;
}

html,body {
	margin: 0;
	padding: 0;;
	font-family: 'Microsoft YaHei', 'Lantinghei SC', 'Open Sans', Arial,
		'Hiragino Sans GB', 'STHeiti', 'WenQuanYi Micro Hei', 'SimSun',
		sans-serif;
}

h1 {
	position: absolute;
	top: 20%;
	left: 50%;
	-webkit-transform: translate(-50%, -50%);
	-ms-transform: translate(-50%, -50%);
	-o-transform: translate(-50%, -50%);
	transform: translate(-50%, -50%);
	padding: 1em;
	font-size: 2em;
	letter-spacing: .3em;
	color: #FFFFFF;
	text-align: center;
	border-top: 2px solid #E6EE9C;
	border-bottom: 2px solid #E6EE9C;
}

.contextmenu {
	display: none;
	position: absolute;
	width: 200px;
	margin: 0;
	padding: 0;
	background: #FFFFFF;
	border-radius: 5px;
	list-style: none;
	box-shadow: 0 15px 35px rgba(50, 50, 90, 0.1), 0 5px 15px
		rgba(0, 0, 0, 0.07);
	overflow: hidden;
	z-index: 999999;
}

.contextmenu li {
	border-left: 3px solid transparent;
	transition: ease .2s;
}

.contextmenu li a {
	display: block;
	padding: 10px;
	color: #B0BEC5;
	text-decoration: none;
	transition: ease .2s;
}

.contextmenu li:hover {
	background: #CE93D8;
	border-left: 3px solid #9C27B0;
}

.contextmenu li:hover a {
	color: #FFFFFF;
}

/* #det_showp {
	overflow-y: scroll !important;
} */
</style>
</style>
</head>
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
								<li><a href="/UP-Pizza/CustomerChowPictureServlet"
									class="subment1">菜单</a></li>
								<li><a href="Customer/Boke.jsp" class="subment2">博客</a></li>
								<li class="fasfa-angle-down"><a
									href="/UP-Pizza/CustomerdgShowAllServlet">我的订单</a>
									<ul class="submenu">
										<li><a href="blog.jsp">博客</a></li>
										<li><a href="blog-single.jsp">单一博客</a></li>
									</ul></li>
								<li class="fasfa-angle-down"><a href="Customer/liuyan.jsp">联系我们</a>
									<ul class="submenu">
										<li><a href="checkout.jsp">结算</a></li>
										<li><a href="single-dish.jsp">单一预览</a></li>
										<li><a href="404.jsp">副页</a></li>
										<li><a href="food-page.jsp">食品页</a></li>
										<li><a href="food-page2.jsp">食品页2</a></li>
										<li><a href="shopping-cart.jsp">购物车</a></li>
										<li><a href="single-food.jsp">商品详情</a></li>
										<li><a href="gallery.jsp">食物选择页</a></li>
									</ul></li>
								<li><a href="Customer/Kefu.jsp" class="subment">客服</a></li>
							</ul>

						</div>


					</ul>


					<img src="Customer/imagess/img/8.png" id="img8"> <img
						src="Customer/imagess/shapes/27.png" id="img9"> <!-- <input
						type="button" name="" id="btn1" value="Login"
						style="color: #FFFFFF;cursor: pointer;" /> --> <span id="boke">购物车</span>
					<a id="boke-a"><span>主页</span>&nbsp; <span>商店</span>&nbsp;/&nbsp;
						<span>购物车</span></a>
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

	<div class="loader-container" style="text-align: center;">
		<img
			src="Customer/imagess/src=http%20_hbimg.b0.upaiyun.com_c6621fa527e19fe57145bf0b64213a64c84ea62fac14-IasqtP_fw658&refer=http%20_hbimg.b0.upaiyun.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg.gif">
	</div>

	<div id="det_showp">
		<h2>最近删除</h2>
		<div class="reg">
			<div class="imgf">
				<img src="Customer/imagess/menu-item/burger.png"
					style="width:80px;heigth:100px" class="ige">
			</div>
			<a style="font-size: 20px;font-weight: 600; color: red;"> <font
				class="fonts">汉堡</font>
			</a> <input type="checkbox" class="chekds" />
			<p>
				数量:<span class="spendv">1</span>
			</p>
			<p>
				小计:<span class="dprice">11.99</span>
			</p>
		</div>
	</div>
	<ul class="contextmenu">

		<li><a>删除</a></li>

		<li><a href="#">全选</a></li>

		<li><a>撤回</a></li>

		<li><a href="#">修改</a></li>

		<li><a href="#"></a></li>

	</ul>

	<!--body-->


	<div id="body_div">
		<form action="#">
			<div id="input_yx">
				<input type="text" placeholder="输入优惠券" class="input_yhj"> <span><a
					class="btn0" href="#"> <font style="vertical-align: inherit;">
							<font style="vertical-align: inherit;"> 现在申请</font>
					</font>
				</a></span>
			</div>
			<div class="btn-t-right">
				<a class="btn btn1" style="cursor: pointer;"> <font
					style="vertical-align: inherit;"> <font
						style="vertical-align: inherit;">清空购物车</font>
				</font>
				</a> <a class="btn btn2 recently"> <font
					style="vertical-align: inherit;cursor: pointer;"> <font
						style="vertical-align: inherit;">最近删除</font>
				</font>
				</a>
			</div>
			<div id="qx">
				<font size="3px" color="#CC3333">全选</font> <input type="checkbox"
					id="chex" />
			</div>




			<!--购物车-->
			<div id="from-gwc" class="gwc">
				<table class="table-one">
					<thead class="table-one-head">
						<tr class="table-one-tr">
							<th class="table-one-th" style="width:646px"><font
								style="vertical-align: inherit;"> <font
									style="vertical-align: inherit;">产品名称</font>
							</font></th>
							<th class="table-one-th" style="width:155px"><font
								style="vertical-align: inherit;"> <font
									style="vertical-align: inherit;">价格</font>
							</font></th>
							<th class="table-one-th" style="width:130px"><font
								style="vertical-align: inherit;"> <font
									style="vertical-align: inherit;">数量</font>
							</font></th>
							<th class="table-one-th text-center"
								style="width:262px;text-align: left;"><font
								style="vertical-align: inherit;"> <font
									style="vertical-align: inherit;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;小计</font>
									<font style="vertical-align: inherit;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;删除</font>
							</font></th>
						</tr>
					</thead>
					<tbody>


						<!-- row 1 -->
						<c:forEach items="${items}" var="f">
							<tr>
								<td>
									<!--data-th="Product"-->
									<div class="d-flex align-items-center">
										<!--class="row"-->
										<input type="hidden" value="${f.f.id}" class="yibg" />
										<div class=" d-none d-md-block col-md-4">
											<div class="che">
												<input type="checkbox" value="${f.cid}" class="chebox" />
											</div>
											<div class="table-img">
												<img src="Manager/Food/${f.f.imageName}" alt="" width="80px"
													height="70px">
											</div>
											<div class="table_delete">
												<img src="Customer/imagess/85123.png">
											</div>
										</div>

										<div class="col-12 col-sm-12 col-md-8 clo-rex">
											<h5>
												<font style="vertical-align: inherit;"> <font
													style="vertical-align: inherit;cursor: pointer;">${f.f.name}</font>
												</font>
											</h5>
										</div>
									</div>
								</td>
								<td style="width: 200px;"><font
									style="vertical-align: inherit;"> <font
										tyle="vertical-align: inherit;"><span class="price">${f.f.xprice}</span>
											￥</font>
								</font></td>
								<!--data-th="Price"-->
								<td>
									<!-- data-th="Quantity"--> <input type="button" id="butn-"
									value="-" class="butnj"
									onclick="btn_resplis_j(this,${f.cid},0)"> <input
									type="text" disabled="disabled"
									class="form-control text-center" value="${f.qty}"
									onkeypress='return( /[\d]/.test(String.fromCharCode(event.keyCode) ) )'>
									<input type="button" id="butny" value="+" class="butny"
									onclick="btn_resplis_j(this,${f.cid},1)">



								</td>

								<td class="text-center xj"><font
									style="vertical-align: inherit;"> <font
										style="vertical-align: inherit;">1.99</font>
								</font></td>
								<!--data-th="Subtotal"  -->

							</tr>
						</c:forEach>


					</tbody>
				</table>
			</div>
			<div class="col-lg-5">
				<div class="lower-table">
					<h6>
						<font style="vertical-align: inherit;"> <font
							style="vertical-align: inherit;" id="gwc_js">进行结算</font>
						</font>
					</h6>

					<div class="lower-table-info">
						<ul class="d-flex justify-content-between">
							<li class="sub" id="meyli"><font
								style="vertical-align: inherit;"> <font
									style="vertical-align: inherit;">小计</font>
							</font></li>
							<li class="akak"><font style="vertical-align: inherit;">
									<font style="vertical-align: inherit;"><span>0</span> ￥</font>
							</font></li>
						</ul>
						<hr>
						<ul class="d-flex justify-content-between">
							<li><font style="vertical-align: inherit;"> <font
									style="vertical-align: inherit;">累计</font>
							</font></li>
							<li class="akak1 akak"><font
								style="vertical-align: inherit;"> <font
									style="vertical-align: inherit;"><span id="aaaaa">0</span>
										￥</font>
							</font></li>
						</ul>
						<button class="btnj" type="button" style="cursor:pointer;">
							<font style="vertical-align: inherit;"> <font
								style="vertical-align: inherit;" class="jss">进行结算</font>

							</font>
						</button>
					</div>
				</div>
			</div>
		</form>
	</div>
	<div id="bottmo">
		<img src="Customer/imagess/00303.png"
			width="100%">
	</div>
	<script type="text/javascript">
		
	</script>
	<!-- <script src='/UP-Pizza/Customer/js/layer.js' type='text/javascript'
		charset='utf-8'></script> -->

	<script src="Customer/js/jquery-1.8.3.min.js" type="text/javascript"
		charset="utf-8"></script>
	<script src="Customer/js/ShoppingCart.js" type="text/javascript"
		charset="utf-8"></script>
	<script type="text/javascript">
		//获取载入本页面的url
		/* var urlp = document.referrer;
		if (urlp == "") {
			alert("您当前还没有登录！3秒后跳转至首页！");
			setTimeout("location.href='index.html'", 3000);

		} */
		//使用setTime()等待~秒
	</script>

	<script type="text/javascript">
		$(document)
				.ready(
						function() {
							$(document)
									.contextmenu(
											function(e) {

												var winWidth = $(document)
														.width();

												var winHeight = $(document)
														.height();

												var posX = e.pageX;

												var posY = e.pageY;

												var menuWidth = $(".reg")
														.width();

												var menuHeight = $(".reg")
														.height();

												var secMargin = 10;

												if (posX + menuWidth
														+ secMargin >= winWidth

														&& posY + menuHeight
																+ secMargin >= winHeight) {

													posLeft = posX - menuWidth
															- secMargin + "px";

													posTop = posY - menuHeight
															- secMargin + "px";

												} else if (posX + menuWidth
														+ secMargin >= winWidth) {

													posLeft = posX - menuWidth
															- secMargin + "px";

													posTop = posY + secMargin
															+ "px";

												} else if (posY + menuHeight
														+ secMargin >= winHeight) {

													posLeft = posX + secMargin
															+ "px";

													posTop = posY - menuHeight
															- secMargin + "px";

												} else {

													posLeft = posX + secMargin
															+ "px";

													posTop = posY + secMargin
															+ "px";

												}
												;

												$(".contextmenu").css({

													"left" : posLeft,

													"top" : posTop

												}).show();

												return false;

											});

							$(document).click(function() {

								$(".contextmenu").hide();

							});

							var reg = $(".reg").clone(true);
							$(".recently")
									.click(

											function() {
												$
														.ajax({
															url : "/UP-Pizza/CustomerShowRecentlyServlet",
															type : "post",
															dataType : "text",
															success : callback2
														});
												function callback2(data) {
													$("#det_showp")
															.find(".reg")
															.remove();
													var json = $
															.parseJSON(data);
													for (i in json) {
														var js = json[i];
														reg.find(".fonts")
																.text(js.name);
														reg
																.find(".imgf")
																.find(".ige")
																.attr(
																		"src",
																		"Customer/Food/"
																				+ js.imageName);
														reg.find(".spendv")
																.text(js.qry);
														reg
																.find(".dprice")
																.text(
																		parseInt(js.price));
														reg.find(".chekds")
																.attr("value",
																		js.fid);
														$("#det_showp")
																.append(
																		"<div class='reg'>"
																				+ reg
																						.html()
																				+ "</div>");
													}
												}
											});

							/* 购物车清空 */
							var nods = $("#det_showp .reg:last-child").clone(
									true);
							var fs = false;
							$(".btn1")
									.click(
											function() {
												//var flag = confirm("确认清空购物车吗?");
												swal(
														{
															title : "确定操作吗？",
															//text : "你确定要清空购物车吗？",
															type : "warning",
															showCancelButton : true,
															confirmButtonColor : '#DD6B55',
															confirmButtonText : '确定'
														},
														function() {
															//alert("删除成功");
															//if (flag) {
															if ($("tbody tr").length == 0) {
																//alert("购物车尚未添加任何商品");
																//swal("购物车尚未添加任何商品！", "", "error");
																setTimeout(
																		function() {
																			swal(
																					"购物车尚未添加任何商品！",
																					"",
																					"error");
																		}, 300);
																return;
															}
															var fid = new Array();
															var cid = new Array();
															var fd = $(".yibg");
															var cd = $(".chebox");
															fd
																	.each(function(
																			i) {
																		fid[i] = $(
																				this)
																				.parents(
																						"tr")
																				.find(
																						".yibg")
																				.val();
																		cid[i] = $(
																				this)
																				.parents(
																						"tr")
																				.find(
																						".chebox")
																				.val();
																	});
															$
																	.ajax({
																		url : "/UP-Pizza/CustomerdeletesScartServlet",
																		type : "post",
																		data : {
																			uid : ${cus.id},
																			"fid" : fid,
																			"cid" : cid
																		},
																		dataType : "text",
																		traditional : true,
																		success : callback
																	});

															function callback(
																	result) {
																if (result == "true") {
																	$(
																			"tbody tr")
																			.remove();

																	$
																			.ajax({
																				url : "/UP-Pizza/CustomerShowRecentlyServlet",
																				type : "post",
																				dataType : "text",
																				success : callback3
																			});
																	function callback3(
																			data) {
																		$(
																				"#det_showp")
																				.slideUp();
																		$(
																				"#det_showp")
																				.find(
																						".reg")
																				.remove();
																		var json = $
																				.parseJSON(data);
																		for (i in json) {
																			var js = json[i];
																			reg
																					.find(
																							".fonts")
																					.text(
																							js.name);
																			reg
																					.find(
																							".imgf")
																					.find(
																							".ige")
																					.attr(
																							"src",
																							"Customer/Food/"
																									+ js.imageName);
																			reg
																					.find(
																							".spendv")
																					.text(
																							js.qry);
																			reg
																					.find(
																							".dprice")
																					.text(
																							parseInt(js.price));
																			reg
																					.find(
																							".chekds")
																					.attr(
																							"value",
																							js.fid);
																			$(
																					"#det_showp")
																					.append(
																							"<div class='reg'>"
																									+ reg
																											.html()
																									+ "</div>");
																		}
																		$(
																				"#det_showp")
																				.slideDown(
																						"normal",
																						function() {
																							$(
																									"#det_showp")
																									.css(
																											"overflow-y",
																											"auto");
																						});

																	}
																}
															}

															//}
														});

												$("#chex").prop("checked",
														false);
												if ($("tbody tr").length < 3) {
													$("#from-gwc").css(
															"overflow-y",
															"none");
												}

												super_Aount();
											});

						});

		function recentlyRemove(fid, uid) {
			$.ajax({
				url : "/UP-Pizza/CustomerRecentlyRemoveServlet",
				data : {
					"fid" : fid,
					"uid" : uid
				},
			});
		}

		function btn_resplis_j(obj, id, vue) {
			var qty = $(obj).parents("tr").find(".form-control").val();
			$.ajax({
				url : "/UP-Pizza/CustomerjServlet",
				type : "post",
				data : {
					"id" : id,
					"qty" : qty,
					"vue" : vue
				},
				dataType : "text"
			});

		}

		function btn_resplis_Remo(obj, id) {
			var fid = $(obj).parents("tr").find(".yibg").val();//fid id:cid
			$.ajax({
				url : "/UP-Pizza/CustomerScartRemoveServlet",
				type : "post",
				data : {
					"id" : id,
					"fid" : fid
				},
				dataType : "text",
				success : callback
			});
			function callback(result) {
				if (result == "true") {
					$(obj).parents("tr").remove();
				}
			}
		}

		var det = $(".table_delete");
		var nod = $("#det_showp .reg:last-child").clone(true);
		var fg = false;
		det.live('click', function() {
			var f = confirm("是否删除!");
			if (f) {
				btn_resplis_Remo(this, $(this).parents("tr").find(".chebox")
						.val());
				var $showp = $("#det_showp .reg:last").clone(true);

				if ($showp.length == 0) {
					$showp = nod;
					fg = true;
				}
				var index = $(this).parents("tr").index("tbody tr");
				$("tbody tr:eq(" + index + ")").remove();
				if ($("tbody tr").length == 0) {
					$("#chex").prop("checked", false);
				}

				var $lodg = $(this).parents("tr");
				var img = $lodg.find(".table-img img").attr("src");
				var uame = $lodg.find(".clo-rex font>font").text();
				var count = $lodg.find(".text-center").val();
				var sumt = $lodg.find(".xj").text();

				var fid = $(this).parents("tr").find(".yibg").val();
				var price = $(this).parents("tr").find(".price").text();
				var qty = $(this).parents("tr").find(".text-center").val();
				var checkfid = $(".chekds[value='" + fid + "']");
				$showp.find(".imgf img").attr("src", img);
				$showp.find(".imgf").next().first().text(uame);
				$showp.find(".chekds").val(fid);
				$showp.find(".imgf").next().next().next().find("span").text(
						count);

				$showp.find(".imgf").next().next().next().next().find("span")
						.text(sumt);
				$showp.find(".imgf").next().first().css("color", "red");
				/* $showp.css("border-bottom", "3px solid #2A435D"); */

				if (parseInt(checkfid.val()) == parseInt(fid)) {
					var cqty = parseInt(checkfid.parents(".reg")
							.find(".spendv").text())
							+ parseInt(qty);
					var ssum = cqty * price;
					checkfid.parents(".reg").find(".spendv").text(cqty);
					checkfid.parents(".reg").find(".dprice").text(ssum);
				} else {
					$showp.insertAfter("#det_showp h2");
				}

				/* if (fg = true) {
					$showp.insertAfter("#det_showp h2");
					fg = false;
				} */
				if ($("tbody tr").length <= 3) {
					$("#from-gwc").css("overflow-y", "none");
				}
				super_Aount();
			} else {
				return;
			}
		});
		function super_Aount() {
			var sum = 0;
			var $chk = $("tbody tr .chebox:checked");
			var $chks = $("tbody tr .chebox");
			$chks.each(function() {
				if ($(this).is(":checked")) {
					sum += parseFloat($(this).parents("tr").find(".xj").first()
							.text());
					$(".akak").first().find("span").text(sum.toFixed(2));
					$(".akak1").first().find("span").text(sum.toFixed(2));
				} else {

				}

			});

			if ($chk.length <= 0) {
				$(".akak").first().find("span").text("0");
				$(".akak1").first().find("span").text("0");
			}

		}
		/* $.ajax({url:"/UP-Pizza/CustomerScartBugServlet",type:"post",data:{"cid":cid,"fid":fid},dataType:"text",success:callback});
		function callback(result){
			var js = $.parseJSON(result);
			if(js.fid==$())
		} */
	</script>
</body>
</html>
