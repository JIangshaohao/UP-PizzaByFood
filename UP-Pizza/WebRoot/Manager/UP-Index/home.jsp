<%@page import="UP_Pizza_End_DAO.Product_SortDao"%>
<%@page import="UP_Pizza_End_DAO.HomerDAO"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="assets/css/bootstrap.min.css" rel="stylesheet" />
<link rel="stylesheet" href="css/style.css" />
<link rel="stylesheet" href="assets/css/ace.min.css" />
<link rel="stylesheet" href="assets/css/font-awesome.min.css" />
<link href="assets/css/codemirror.css" rel="stylesheet">
	<!--[if IE 7]>
		  <link rel="stylesheet" href="assets/css/font-awesome-ie7.min.css" />
		<![endif]-->
	<!--[if lte IE 8]>
		  <link rel="stylesheet" href="assets/css/ace-ie.min.css" />
		<![endif]-->
	<script src="assets/js/ace-extra.min.js"></script>
	<!--[if lt IE 9]>
		<script src="assets/js/html5shiv.js"></script>
		<script src="assets/js/respond.min.js"></script>
		<![endif]-->
	<!--[if !IE]> -->
	<script src="assets/js/jquery.min.js"></script>
	<!-- <![endif]-->
	<script src="assets/dist/echarts.js"></script>
	<script src="assets/js/bootstrap.min.js"></script>
	<title></title>
</head>
<body>
	<div class="page-content clearfix">
		<div class="alert alert-block alert-success">
			<button type="button" class="close" data-dismiss="alert">
				<i class="icon-remove"></i>
			</button>
			<i class="icon-ok green"></i>欢迎使用<strong class="green"><h2>UP-Pizza管理系统</h2>
				<i>(v1.2)</i></strong>你本次登陆时间为<i id="time"></i>
		</div>
		<%
			//查询所有用户数量
			HomerDAO ps = new HomerDAO();
			Product_SortDao psa = new Product_SortDao();
			int counta = psa.SelectAllFood();
			request.setAttribute("counta", counta);
			int Usercount = ps.selectAllUser();
			int tksuccess = ps.selectAllSuccess();
			int dingdan = ps.selectAllDingdanCount();
			int money = ps.selectAllDingdanMoney();
			int NoOutDingdan = ps.selectAllNoDingdan();
			int tuikuan = ps.selectAllTuikuan();
			int chengjiao = ps.selectAllChengjiao();
			int shibai = ps.selectAllNoDingdan();
			request.setAttribute("Usercount", Usercount);
			request.setAttribute("tksuccess", tksuccess);
			request.setAttribute("dingdan", dingdan);
			request.setAttribute("money", money);
			request.setAttribute("NoOutDingdan", NoOutDingdan);
			request.setAttribute("tuikuan", tuikuan);
			request.setAttribute("chengjiao", chengjiao);
			request.setAttribute("shibai", shibai);
			
			int shangjia=ps.selectAllshangjia();
			request.setAttribute("shangjia", shangjia);
			int xiajia=ps.selectAllshangjia();
			request.setAttribute("xiajia", xiajia);
			//request.getRequestDispatcher("home.jsp").forward(request, response);
		%>
		<div class="state-overview clearfix">
			<div class="col-lg-3 col-sm-6">
				<section class="panel"> <a href="#" title="商城会员">
					<div class="symbol terques">
						<i class="icon-user"></i>
					</div>
					<div class="value">
						<h1>${Usercount}</h1>
						<p>商城用户</p>
					</div>
				</a> </section>
			</div>
			<div class="col-lg-3 col-sm-6">
				<section class="panel">
				<div class="symbol red">
					<i class="icon-tags"></i>
				</div>
				<div class="value">
					<h1>${tksuccess}</h1>
					<p>状况</p>
				</div>
				</section>
			</div>
			<div class="col-lg-3 col-sm-6">
				<section class="panel">
				<div class="symbol yellow">
					<i class="icon-shopping-cart"></i>
				</div>
				<div class="value">
					<h1>${dingdan}</h1>
					<p>商城订单</p>
				</div>
				</section>
			</div>
			<div class="col-lg-3 col-sm-6">
				<section class="panel">
				<div class="symbol blue">
					<i class="icon-bar-chart"></i>
				</div>
				<div class="value">
					<h1>${money}￥</h1>
					<p>交易金额</p>
				</div>
				</section>
			</div>
		</div>
		<!--实时交易记录-->
		<div class="clearfix">
			<div class="Order_Statistics ">
				<div class="title_name">订单统计信息</div>
				<table class="table table-bordered">
					<tbody>
						<tr>
							<td class="name">未回复订单：</td>
							<td class="munber"><a href="#">0</a>&nbsp;个</td>
						</tr>
						<tr>
							<td class="name">待出餐订单：</td>
							<td class="munber"><a href="#">${NoOutDingdan}</a>&nbsp;单</td>
						</tr>
						<tr>
							<td class="name">待退款订单：</td>
							<td class="munber"><a href="#">${tuikuan}</a>&nbsp;个</td>
						</tr>
						<tr>
							<td class="name">已成交订单数：</td>
							<td class="munber"><a href="#">${chengjiao}</a>&nbsp;个</td>
						</tr>
						<tr>
							<td class="name">交易失败：</td>
							<td class="munber"><a href="#">${shibai}</a>&nbsp;个</td>
						</tr>
					</tbody>
				</table>
			</div>
			<div class="Order_Statistics">
				<div class="title_name">商品统计信息</div>
				<table class="table table-bordered">
					<tbody>
						<tr>
							<td class="name">商品总数：</td>
							<td class="munber"><a href="#">${counta}</a>&nbsp;个</td>
						</tr>
						<tr>
							<td class="name">回收站商品：</td>
							<td class="munber"><a href="#">0</a>&nbsp;个</td>
						</tr>
						<tr>
							<td class="name">上架商品：</td>
							<td class="munber"><a href="#">${shangjia}</a>&nbsp;个</td>
						</tr>
						<tr>
							<td class="name">下架商品：</td>
							<td class="munber"><a href="#">${xiajia}</a>&nbsp;个</td>
						</tr>
						<tr>
							<td class="name">商品评论：</td>
							<td class="munber"><a href="#">0</a>&nbsp;条</td>
						</tr>

					</tbody>
				</table>
			</div>
			<div class="Order_Statistics">
				<div class="title_name">会员登陆统计信息</div>
				<table class="table table-bordered">
					<tbody>
						<tr>
							<td class="name">注册会员登陆：</td>
							<td class="munber"><a href="#">3240</a>&nbsp;次</td>
						</tr>
						<tr>
							<td class="name">新浪会员登陆：</td>
							<td class="munber"><a href="#">1130</a>&nbsp;次</td>
						</tr>
						<tr>
							<td class="name">支付宝登陆：</td>
							<td class="munber"><a href="#">1130</a>&nbsp;次</td>
						</tr>
						<tr>
							<td class="name">QQ会员登陆：</td>
							<td class="munber"><a href="#">1130</a>&nbsp;次</td>
						</tr>
					</tbody>
				</table>
			</div>
			<!--<div class="t_Record">
               <div id="main" style="height:300px; overflow:hidden; width:100%; overflow:auto" ></div>     
              </div> -->
			<div class="news_style">
				<div class="title_name">最新消息</div>
				<ul class="list">
					<li><i class="icon-bell red"></i><a href="#">后台系统找那个是开通了。</a></li>
					<li><i class="icon-bell red"></i><a href="#">6月共处理订单3451比，作废为...</a></li>
					<li><i class="icon-bell red"></i><a href="#">后台系统找那个是开通了。</a></li>
					<li><i class="icon-bell red"></i><a href="#">后台系统找那个是开通了。</a></li>
					<li><i class="icon-bell red"></i><a href="#">后台系统找那个是开通了。</a></li>
				</ul>
			</div>
		</div>
		<!--记录-->
		<div class="clearfix">
			<div class="home_btn">
				<div>
					<a href="picture-add.jsp" title="添加商品"
						class="btn  btn-info btn-sm no-radius"> <i class="bigger-200"><img
							src="images/icon-addp.png" /></i>
						<h5 class="margin-top">添加商品</h5>
					</a> <a href="Music.jsp" title="音乐"
						class="btn  btn-primary btn-sm no-radius"> <i
						class="bigger-200"><img src="images/icon-cpgl.png" /></i>
						<h5 class="margin-top">音乐</h5>
					</a> <a href="admin_info.jsp" title="个人信息"
						class="btn  btn-success btn-sm no-radius"> <i
						class="bigger-200"><img src="images/icon-grxx.png" /></i>
						<h5 class="margin-top">个人信息</h5>
					</a> <a href="JumpGame.jsp" title="系统设置"
						class="btn  btn-info btn-sm no-radius"> <i class="bigger-200"><img
							src="images/xtsz.png" /></i>
						<h5 class="margin-top">游戏</h5>
					</a> <a href="Order_handling.jsp" title="商品订单"
						class="btn  btn-purple btn-sm no-radius"> <i
						class="bigger-200"><img src="images/icon-gwcc.png" /></i>
						<h5 class="margin-top">商品订单</h5>
					</a> <a href="picture-add.jsp" title="添加广告"
						class="btn  btn-pink btn-sm no-radius"> <i class="bigger-200"><img
							src="images/icon-ad.png" /></i>
						<h5 class="margin-top">添加广告</h5>
					</a> <a href="article_add.jsp" title="添加文章"
						class="btn  btn-info btn-sm no-radius"> <i class="bigger-200"><img
							src="images/icon-addwz.png" /></i>
						<h5 class="margin-top">添加文章</h5>
					</a>
				</div>
			</div>

		</div>

	</div>
</body>
</html>
<!--  <script src="http://pv.sohu.com/cityjson?ie=utf-8">
 var ip = window.returnCitySN.cip
	console.log(ip)
	
 </script>  -->
<script type="text/javascript">
	$(function() {
		var myDate = new Date;
		var year = myDate.getFullYear(); //获取当前年
		var mon = myDate.getMonth() + 1; //获取当前月
		var date = myDate.getDate(); //获取当前日
		var h = myDate.getHours();//获取当前小时数(0-23)
		var m = myDate.getMinutes();//获取当前分钟数(0-59)
		var s = myDate.getSeconds();//获取当前秒
		var week = myDate.getDay();
		var weeks = [ "星期日", "星期一", "星期二", "星期三", "星期四", "星期五", "星期六" ];
		console.log(year, mon, date, weeks[week]);
		$("#time").html(
				year + "年" + mon + "月" + date + "日" + weeks[week] + h + "时" + m
						+ "分");
	})
</script>
<script type="text/javascript">
	//面包屑返回值
	var index = parent.layer.getFrameIndex(window.name);
	parent.layer.iframeAuto(index);
	$('.no-radius').on('click', function() {
		var cname = $(this).attr("title");
		var chref = $(this).attr("href");
		var cnames = parent.$('.Current_page').html();
		var herf = parent.$("#iframe").attr("src");
		parent.$('#parentIframe').html(cname);
		parent.$('#iframe').attr("src", chref).ready();
		;
		parent.$('#parentIframe').css("display", "inline-block");
		parent.$('.Current_page').attr({
			"name" : herf,
			"href" : "javascript:void(0)"
		}).css({
			"color" : "#4c8fbd",
			"cursor" : "pointer"
		});
		//parent.$('.Current_page').jsp("<a href='javascript:void(0)' name="+herf+" class='iframeurl'>" + cnames + "</a>");
		parent.layer.close(index);

	});
	$(document).ready(function() {

		$(".t_Record").width($(window).width() - 640);
		//当文档窗口发生改变时 触发  
		$(window).resize(function() {
			$(".t_Record").width($(window).width() - 640);
		});
	});
</script>
