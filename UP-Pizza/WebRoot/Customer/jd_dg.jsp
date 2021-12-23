<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<!-- saved from url=(0039)https://order.jd.com/center/list.action -->
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<html xmlns="http://www.w3.org/1999/xhtml" class="root61">
<head>
<base href="<%=basePath%>">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>我的京东--我的订单</title>

<meta name="format-detection" content="telephone=no">

<link type="text/css" rel="stylesheet"
	href="Customer/css/saved_resource(1).css">
<link type="text/css" rel="stylesheet"
	href="Customer/css/saved_resource(2).css" source="combo">
<script src="Customer/js/jquery-1.8.3.min.js"></script>
<script src="Customer/js/xlPaging.js"></script>

<style>
#page {
	margin: 20px auto;
	color: #666;
	display: block;
	text-align: center;
}

#page li {
	display: inline-block;
	min-width: 30px;
	height: 28px;
	cursor: pointer;
	color: #666;
	font-size: 13px;
	line-height: 28px;
	background-color: #f9f9f9;
	border: 1px solid #dce0e0;
	text-align: center;
	margin: 0 4px;
	-webkit-appearance: none;
	-moz-appearance: none;
	appearance: none;
}

.xl-nextPage,.xl-prevPage {
	width: 60px;
	color: #0073A9;
	height: 28px;
}

#page li.xl-disabled {
	opacity: .5;
	cursor: no-drop;
}

#page li.xl-disabled:hover {
	background-color: #f9f9f9 !important;
	border: 1px solid #dce0e0 !important;
	color: #666 !important;
}

#page li.xl-active {
	background-color: #0073A9;
	border-color: #0073A9;
	color: #FFF
}

#page li:hover {
	background-color: #0073A9 !important;
	border-color: #0073A9;
	color: #FFF
}

#page li.xl-jumpText {
	background-color: rgba(0, 0, 0, 0);
	border-color: rgba(0, 0, 0, 0);
	opacity: 1;
}

#page li.xl-jumpText:hover {
	background-color: rgba(0, 0, 0, 0) !important;
	border-color: rgba(0, 0, 0, 0) !important;
}

#page li.xl-jumpButton {
	padding: 0 5px;
}

#xlJumpNum {
	width: 35px;
	margin: 0 3px;
}

input::-webkit-outer-spin-button,input::-webkit-inner-spin-button {
	-webkit-appearance: none !important;
}

input[type="number"] {
	-moz-appearance: textfield;
}
</style>
</head>
<body myjd="_MYJD_ordercenter">
	<script>
		$(function() {

			$(".time-txt").hide();

			var tbody = $(".tbody").clone(true);
			$(".txt").click(
					function() {
						$(this).addClass("curr");
						if ($(this).text() == $(".txt").eq(0).text()) {
							$(".time-txt").hide();
						} else {
							$(".time-txt").show();
						}
						$(this).parents("li").siblings().not(".fore2").find(
								".txt").removeClass("curr");
						order_bytj(this, 1);

					});

			$(".curr").not(".curr:eq(0)").removeClass("curr");

			$(".time-txt").toggle(function() {
				$(".time-list").show();
			}, function() {
				$(".time-list").hide();
			});

			$(".time-list li").click(function() {
				$(this).addClass("datecheck");
				$(this).siblings().removeClass("datecheck");
				$(".time-txt").not("b").text($(this).text());
				order_bytj(this, 1);
				$(".time-list").hide();

			});
			order_bytj(null, 1);

			function order_bytj(obj, pageNum) {
				var search = $("#ip_keyword").val();
				if (search != "") {
					var curr = $(".curr").text();
					var check = $(".datecheck span").text();
					check = (check == "") ? "null" : check;
					if (curr == "全部订单") {
						$.ajax({
							url : "/UP-Pizza/CustomerdgShowAllServlet",
							type : "post",
							data : {
								"pageNum" : pageNum,
								"obj" : "obj",
								"date" : "null",
								"names" : search
							},
							dataType : "text",
							success : callback
						});
						return;
					} else {
						curr = (curr == "未出餐") ? 1 : 2;
						$.ajax({
							url : "/UP-Pizza/CustomerdgShowAllServlet",
							type : "post",
							data : {
								"tj" : curr,
								"date" : check,
								"pageNum" : pageNum,
								"obj" : "obj",
								"names" : search
							},
							dataType : "text",
							success : callback
						});
						return;
					}
				} else {

					var curr = $(".curr").text();
					var check = $(".datecheck span").text();

					if (curr == "全部订单") {
						$.ajax({
							url : "/UP-Pizza/CustomerdgShowAllServlet",
							type : "post",
							data : {
								"pageNum" : pageNum,
								"obj" : "obj",
								"date" : "null"
							},
							dataType : "text",
							success : callback
						});

					} else {
						check = (check == "") ? "null" : check;

						curr = (curr == "未出餐") ? 1 : 2;

						$.ajax({
							url : "/UP-Pizza/CustomerdgShowAllServlet",
							type : "post",
							data : {
								"tj" : curr,
								"date" : check,
								"pageNum" : pageNum,
								"obj" : "obj"
							},
							dataType : "text",
							success : callback
						});
					}

				}

				function callback(result) {
					$(".td-void").children("tbody").remove();
					var pageNum = result.substring(result.indexOf("$") + 1,
							result.lastIndexOf("/"));
					var pageCount = result
							.substring(result.lastIndexOf("/") + 1);
					var data1 = result.substring(0, result.indexOf("$"));
					var json = $.parseJSON(data1);
					for (i in json) {

						var g = json[i];
						tbody.find(".dealtime").text(g.jytime);
						tbody.find(".idUr").text(g.did);
						tbody.find(".p-img img").attr("src",
								"Customer/Food/" + g.fo.imageName);
						tbody.find(".a-link").text(g.fo.name);
						tbody.find(".txt").text(g.u.username);
						tbody.find(".goods-number").text("x" + g.qty);
						tbody.find(".amount span:eq(0)").text(g.price);
						tbody.find(".hiden").val(g.fo.id);
						tbody.find(".order-status").text(
								g.tid == 2 ? '已出餐' : '未出餐');
						$.ajax({
							url : "/UP-Pizza/CustomerdgCheckexistence",
							type : "post",
							data : {
								"did" : g.did,
								"fid" : g.fo.id
							},
							async : false,
							dataType : "text",
							success : callback2
						});
						function callback2(data) {
							//alert(result+" / i="+i);
							if (data == "null") {
								tbody.find(".btntk").children("span").text(
										"我要退款");
								tbody.find(".btntk").attr("style",
										"pointer-events:auto");
								//$("tbody:eq("+i+")").find(".btntk").children("span").text("我要退款1");
								//alert("不存在于退款表"+result)
							} else {
								var json = $.parseJSON(data);
								if (json.tktid == 1) {
									tbody.find(".btntk").children("span").text(
											"退款中");
									tbody.find(".btntk").attr("style",
											"pointer-events:none");
									//$("tbody:eq("+i+")").find(".btntk").children("span").text("退款中");
								} else {
									tbody.find(".btntk").children("span").text(
											"已退款");
									//$("tbody:eq("+i+")").find(".btntk").children("span").text("已退款");
									tbody.find(".btntk").attr("style",
											"pointer-events:none");
								}

							}
							//alert(tbody.find(".btntk").children("span").text());
							//$("#page").show();
						}
						//alert(tbody.find(".btntk").children("span").text());
						$(".td-void").append(
								"<tbody class='tbody'>" + tbody.html()
										+ "</tbody>");

					}
					let
					xlPaging = new Paging('page', {
						nowPage : parseInt(pageNum), // 现在的页码
						pageNum : pageCount, // Total number of paging
						buttonNum : 8, // 分页总次数
						showOne : 1,// 如果只有一个页面，您想显示分页吗?0 =没有显示,1 =显示(默认)
						callback : function(num) {
							order_bytj("this", num);
						}
					});

					if ($(".tbody").length == 0) {
						$("#order02").css("height", "1000px");
						$("#page").hide();
					} else {
						$("#page").show();
					}
				}
			}

			//搜索
			var f = true;
			$('#ip_keyword').on('compositionend', function() {
				f = true;
			});
			$('#ip_keyword').on('compositionstart', function() {
				f = false;
			});
			$('#ip_keyword').on('input', function() {
				setTimeout(function() {
					if (f) {
						order_bytj(this, 1);
					}
				}, 0);
			});

		});
	</script>

	<script>
		$(function() {
			$(".td-void.order-tb").on("click", ".btn-tk", function() {
				var flag = confirm("确认退款");
				var obj = $(this);
				if (flag) {
					var tk = prompt("请输入退款原因");
					var idur = $(this).parents("tbody").find(".idUr").text();
					var fid = $(this).parents("tbody").find(".hiden").val();
					$.ajax({
						url : "/UP-Pizza/CustomerdgtkServlet",
						type : "post",
						data : {
							"idur" : idur,
							"info" : tk,
							"fid" : fid
						},
						dataType : "text",
						success : callback
					});
					function callback(result) {
						if (result == "true") {
							$.ajax({
								url : "/UP-Pizza/CustomerdgCheckexistence",
								type : "post",
								data : {
									"did" : idur,
									"fid" : fid
								},
								dataType : "text",
								success : callback
							});
							function callback(result) {
								obj.children("span").text("退款中");
							}
						}
					}

				}
			});
		});
	</script>
	<!--shortcut start-->

	<div id="container">
		<div class="w">

			<div id="content"></div>
			<div id="main">
				<div id="chunjie" class="mb10"></div>
				<div class="mod-main mod-comm mod-order" id="order01">
					<div class="mt">
						<h3>我的订单</h3>
						<div class="extra-r"></div>
					</div>
				</div>
				<div class="safety-box hide"></div>

				<div class="mod-main mod-comm lefta-box" id="order02">
					<div class="mt">
						<ul class="extra-l">
							<li class="fore1"><a href="javascript:;" class="txt curr">全部订单</a>
								</lis>
								<li><a href="javascript:;" id="ordertoPay"
									clstag="click|keycount|orderinfo|waitPay" value="0" class="txt">未出餐</a></li>
								<li><a href="javascript:;" id="ordertoReceive"
									clstag="click|keycount|orderinfo|waitReceive" value="1"
									class="txt">已出餐</a></li>
								<li><a href="javascript:;" id="ordertoComment" class="txt"
									clstag="click|keycount|orderinfo|daipingjia">待评价</a></li>
								<li class="fore2 "><a href="javascript:;" id="ordertoBuy"
									clstag="click|keycount|orderinfo|changgoutab"><strong>我的常购商品</strong></a></li>

								<li class="fore2"><a href="/UP-Pizza/CustomerChowSweetsServlet"
									
									class="ftx-03" id="ordertoRecycle">菜单</a></li>
						</ul>
						<div class="extra-r">
							<div class="search">
								<input id="ip_keyword" placeholder="请输入商品名称" type="text"
									class="itxt" value="" style="color: rgb(204, 204, 204);">
								<a href="javascript:;" class="search-btn" id="search"
									clstag="click|keycount|orderinfo|search">搜索<b></b></a> <a
									href="https://order.jd.com/center/list.action#none"
									clstag="click|keycount|orderlist|gaoji"
									class="default-btn high-search">高级<b></b></a>
							</div>
						</div>
					</div>

					<div class="mc">


						<div class="top-search hide">
							<div class="dl">
								<span class="label">订单类型：</span>
								<div class="dd">
									<a
										href="https://order.jd.com/center/list.action?t=&amp;d=1&amp;s=4096"
										target="_self" clstag="click|keycount|orderlist|quanbuleixing"
										class="curr">全部类型</a> <a
										href="https://order.jd.com/center/list.action?t=0-6-8-9-10-11-13-15-16-17-18-19-21-22-23-24-25-32-33-41-42-49-54-56-112&amp;d=1&amp;s=4096"
										target="_self" clstag="click|keycount|orderlist|shiwushangpin">实物商品</a>
									<a
										href="https://order.jd.com/center/list.action?t=35-83&amp;d=1&amp;s=4096"
										target="_self" clstag="click|keycount|orderlist|jipiao">机票</a>
									<a
										href="https://order.jd.com/center/list.action?t=39-111&amp;d=1&amp;s=4096"
										target="_self" clstag="click|keycount|orderlist|jiudian">酒店</a>
									<a
										href="https://order.jd.com/center/list.action?t=45&amp;d=1&amp;s=4096"
										target="_self" clstag="click|keycount|orderlist|zuche">租车</a>
									<a
										href="https://order.jd.com/center/list.action?t=47&amp;d=1&amp;s=4096"
										target="_self" clstag="click|keycount|orderlist|dujia">度假</a>
									<a
										href="https://order.jd.com/center/list.action?t=44&amp;d=1&amp;s=4096"
										target="_self" clstag="click|keycount|orderlist|jingdian">门票</a>
									<a
										href="https://order.jd.com/center/list.action?t=46&amp;d=1&amp;s=4096"
										target="_self" clstag="click|keycount|orderlist|huoche">火车</a>
									<a
										href="https://order.jd.com/center/list.action?t=34-62&amp;d=1&amp;s=4096"
										target="_self" clstag="click|keycount|orderlist|youxi">游戏</a>
									<a
										href="https://order.jd.com/center/list.action?t=37&amp;d=1&amp;s=4096"
										target="_self"
										clstag="click|keycount|orderlist|shoujichongzhi">手机充值</a> <a
										href="https://order.jd.com/center/list.action?t=43&amp;d=1&amp;s=4096"
										target="_self" clstag="click|keycount|orderlist|dianyingpiao">电影票</a>
									<a
										href="https://order.jd.com/center/list.action?t=53&amp;d=1&amp;s=4096"
										target="_self" clstag="click|keycount|orderlist|yanchupiao">演出票</a>
									<a
										href="https://order.jd.com/center/list.action?t=38&amp;d=1&amp;s=4096"
										target="_self" clstag="click|keycount|orderlist|dianzishu">电子书</a>
									<a
										href="https://order.jd.com/center/list.action?t=58&amp;d=1&amp;s=4096"
										target="_self" clstag="click|keycount|orderlist|shuziyinyue">数字音乐</a>
									<a
										href="https://order.jd.com/center/list.action?t=57&amp;d=1&amp;s=4096"
										target="_self"
										clstag="click|keycount|orderlist|yingyongshangdian">应用商店</a> <a
										href="https://order.jd.com/center/list.action?t=48-64-65&amp;d=1&amp;s=4096"
										target="_self" clstag="click|keycount|orderlist|baoxian">保险</a>
									<a
										href="https://order.jd.com/center/list.action?t=2&amp;d=1&amp;s=4096"
										target="_self" clstag="click|keycount|orderlist|duobaodao">夺宝岛</a>
									<a
										href="https://order.jd.com/center/list.action?t=99&amp;d=1&amp;s=4096"
										target="_self" clstag="click|keycount|orderlist|jiayouka">加油卡</a>
									<a
										href="https://order.jd.com/center/list.action?t=98&amp;d=1&amp;s=4096"
										target="_self"
										clstag="click|keycount|orderlist|yiyuanqiangbao">一元抢宝</a>
								</div>
							</div>
							<div class="dl">
								<a href="https://order.jd.com/center/list.action#none"
									clstag="click|keycount|orderlist|fanhui" class="btn-9">返回</a>
							</div>
							<a href="https://order.jd.com/center/list.action#none"
								clstag="click|keycount|orderlist|closehighserach" class="ts-del"></a>
						</div>

						<table class="td-void order-tb">
							<colgroup>
								<col class="number-col">
								<col class="consignee-col">
								<col class="amount-col">
								<col class="status-col">
								<col class="operate-col">
							</colgroup>
							<thead>
								<tr>
									<th>
										<div class="ordertime-cont">
											<div class="time-txt">
												近三个月订单<b></b><span class="blank"></span>
											</div>
											<div class="time-list">
												<ul>

													<li><a href="javascript:;" _val="2&amp;s=4096"
														value="2021" clstag="click|keycount|orderlist|jinniannei"><b></b><span
															style="display:none">2021</span>今年内订单</a></li>
													<li><a href="javascript:;" _val="2020&amp;s=4096"
														value="2020" clstag="click|keycount|orderlist|2020"><b></b>
															<span>2020</span>年订单</a></li>
													<li><a href="javascript:;" _val="2019&amp;s=4096"
														value="2019" clstag="click|keycount|orderlist|2019"><b></b><span>2019</span>年订单</a></li>
													<li><a href="javascript:;" _val="2018&amp;s=4096"
														value="2018" clstag="click|keycount|orderlist|2018"><b></b><span>2018</span>年订单</a></li>
													<li><a href="javascript:;" _val="2017&amp;s=4096"
														value="2017" clstag="click|keycount|orderlist|2017"><b></b><span>2017</span>年订单</a></li>
													<li><a href="javascript:;" _val="2016&amp;s=4096"
														value="2016" clstag="click|keycount|orderlist|2016"><b></b><span>2016</span>年订单</a></li>
													<li><a href="javascript:;" _val="2015&amp;s=4096"
														value="2015" clstag="click|keycount|orderlist|2015"><b></b><span>2015</span>年订单</a></li>
													<li><a href="javascript:;" _val="2014&amp;s=4096"
														value="2014" clstag="click|keycount|orderlist|2014"><b></b><span>2014</span>年订单</a></li>
													<li><a href="javascript:;" _val="3&amp;s=4096"
														value="2013" clstag="click|keycount|orderlist|before_2014"><b></b><span>2013</span>年以前订单</a></li>
												</ul>
											</div>
										</div>
										<div class="order-detail-txt ac">订单详情</div>
									</th>
									<th>收货人</th>
									<th>金额</th>
									<th>
										<div class="deal-state-cont" id="orderState">
											<div class="state-txt">
												全部状态<b></b><span class="blank"></span>
											</div>
											<div class="state-list">
												<ul>
													<li value="4096"><a
														href="https://order.jd.com/center/list.action#none"
														clstag="click|keycount|orderlist|quanbuzhuangtai"
														class="curr"><b></b>全部状态</a></li>
													<li value="1"><a
														href="https://order.jd.com/center/list.action#none"
														clstag="click|keycount|orderlist|dengdaifukuan"><b></b>等待付款</a>
													</li>
													<li value="128"
														clstag="click|keycount|orderlist|dengdaishouhuo"><a
														href="https://order.jd.com/center/list.action#none"><b></b>等待收货</a>
													</li>
													<li value="1024"><a
														href="https://order.jd.com/center/list.action#none"
														clstag="click|keycount|orderlist|yiwancheng"><b></b>已完成</a>
													</li>
													<li value="-1"><a
														href="https://order.jd.com/center/list.action#none"
														clstag="click|keycount|orderlist|yiquxiao"><b></b>已取消</a>
													</li>
												</ul>
											</div>
										</div>
									</th>
									<th>操作</th>
								</tr>

							</thead>

							<c:forEach items="${dgitem}" var="f">
								<tbody class="tbody">
									<tr class="sep-row">
										<td colspan="5"></td>
									</tr>

									<tr class="tr-th">
										<td colspan="5"><span class="gap"></span> <span
											class="dealtime" title="2021-08-01 17:06:00">${f.jytime}</span>
											<input type="hidden" id="datasubmit-216120185097"
											value="2021-08-01 17:06:00"> <span class="number">
												订单号： <a name="orderIdLinks" id="idUrl216120185097"
												target="_blank" class="idUr"
												href="https://details.jd.com/normal/item.action?orderid=216120185097&amp;PassKey=3131125BC4D932489299BA8B57B66A00"
												clstag="click|keycount|orderinfo|order_num">${f.did}</a>
										</span>

											<div class="tr-operate">
												<span class="order-shop"> <a
													href="https://order.jd.com/center/list.action#none"
													target="_blank"
													class="shop-txt venderName10387860 venderSite"
													clstag="click|keycount|orderlist|vender"></a> <a
													class="btn-im venderChat10387860"
													href="https://order.jd.com/center/list.action#none"
													target="_blank" title="联系卖家"
													clstag="click|keycount|orderinfo|chatim"></a>
												</span> <span class="tel"> <i
													class="tel-icon venderTel10387860 venderSiteTel"></i>
												</span> <span class="order-tips"></span> <a
													href="https://order.jd.com/center/list.action#none"
													clstag="click|keycount|orderlist|dingdanshanchu"
													class="order-del" _orderid="216120185097"
													_passkey="C190104D64E2CD859211FD2F6DFFF02B" title="删除"
													style="display: none;"></a>

											</div></td>
									</tr>





									<tr class="tr-bd" id="track216120185097" oty="22,4,70" cxl="0">
										<td>
											<div class="goods-item p-69661667589">
												<div class="p-img">
													<a href="https://item.jd.com/69661667589.html"
														clstag="click|keycount|orderinfo|order_product"
														target="_blank"> <img class=""
														src="Customer/Food/${f.fo.imageName}"
														title="${f.fo.name}" data-lazy-img="done" width="60"
														height="60"></a>
												</div>
												<div class="p-msg">
													<div class="p-name">
														<a href="https://item.jd.com/69661667589.html"
															class="a-link"
															clstag="click|keycount|orderinfo|order_product"
															target="_blank" title="${f.fo.name}">${f.fo.name}</a>
														<input type="hidden" value="${f.fo.id}" class="hiden" />
													</div>
													<div class="p-extra">
														<ul class="o-info">
															<li><span class="o-match J-o-match"
																data-sku="69661667589"><i></i><em>找搭配</em></span></li>
														</ul>
													</div>

												</div>
											</div>
											<div class="goods-number">x${f.qty}</div>


											<div class="goods-repair">
												<a
													href="https://myjd.jd.com/repair/ordersearchlist.action?searchString=216120185097"
													target="_blank"
													clstag="click|keycount|orderinfo|order_repair"> 申请售后 </a>
											</div>
											<div class="clr"></div>
										</td>

										<td rowspan="1">
											<div class="consignee tooltip">
												<span class="txt">${f.u.userName}</span><b></b>
												<div class="prompt-01 prompt-02" style="display: none;">
													<div class="pc">
														<strong>${f.u.userName}</strong>
														<p>地址 表木有</p>
														<p>${f.u.tel}</p>
													</div>
													<div class="p-arrow p-arrow-left"></div>
												</div>
											</div>
										</td>
										<td rowspan="1">
											<div class="amount">
												<span>${f.price}</span> <br> <span class="ftx-13">在线支付</span>
											</div>
										</td>
										<td rowspan="1">
											<div class="status">
												<span class="order-status ftx-03">
													${f.tid==1?'已出餐':'未出餐'} </span> <br> <a
													href="https://details.jd.com/normal/item.action?orderid=216120185097&amp;PassKey=3131125BC4D932489299BA8B57B66A00"
													clstag="click|keycount|orderlist|dingdanxiangqing"
													target="_blank">订单详情</a>
											</div>
										</td>
										<td rowspan="1" id="operate216120185097">
											<div class="operate">


												<div id="pay-button-216120185097" _baina="0"></div>



												<a href="javascript:;"
													class="btn-again btn-again-show btn-tk btntk"><b></b> <span>我要退款</span>
												</a><br>
											</div>
										</td>
									</tr>

								</tbody>
							</c:forEach>

						</table>

						<div id="page">
							<!-- <div class="pagin fr">
								
								<span class="prev-disabled">上一页<b></b></span>
								<a class="current">1</a>
								<span class="next-disabled">下一页<b></b></span>
							</div> -->
							<!-- <div class="clr"></div> -->
						</div>


					</div>
				</div>


				<!--footer end-->





				<div id="userdata_el"
					style="visibility: hidden; position: absolute;"></div>
</body>
</html>
