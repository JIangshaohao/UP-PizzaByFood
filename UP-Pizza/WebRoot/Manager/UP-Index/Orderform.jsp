<%@page import="UP_Pizza_End_Entity.Expres"%>
<%@page import="UP_Pizza_End_DAO.OrederDAO"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
<style type="text/css">
.b_P_Sort_list li a {
	cursor: pointer;
}
</style>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="renderer" content="webkit|ie-comp|ie-stand">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta http-equiv="Cache-Control" content="no-siteapp" />
 <link href="Manager/UP-Index/assets/css/bootstrap.min.css" rel="stylesheet" />
        <link rel="stylesheet" href="Manager/UP-Index/css/style.css"/>       
        <link href="Manager/UP-Index/assets/css/codemirror.css" rel="stylesheet">
        <link rel="stylesheet" href="Manager/UP-Index/assets/css/ace.min.css" />
        <link rel="stylesheet" href="Manager/UP-Index/font/css/font-awesome.min.css" />
        <!--[if lte IE 8]>
		  <link rel="stylesheet" href="assets/css/ace-ie.min.css" />
		<![endif]-->
		<script src="Manager/UP-Index/js/jquery-1.9.1.min.js"></script>
        <script src="Manager/UP-Index/assets/js/bootstrap.min.js"></script>
        <script type="text/javascript" src="Manager/UP-Index/js/H-ui.js"></script>     
		<script src="Manager/UP-Index/assets/js/typeahead-bs2.min.js"></script>           	
		<script src="Manager/UP-Index/assets/js/jquery.dataTables.min.js"></script>
		<script src="Manager/UP-Index/assets/js/jquery.dataTables.bootstrap.js"></script>
        <script src="Manager/UP-Index/assets/layer/layer.js" type="text/javascript" ></script>          
        <script src="Manager/UP-Index/assets/laydate/laydate.js" type="text/javascript"></script>
        <script src="Manager/UP-Index/assets/js/jquery.easy-pie-chart.min.js"></script>
        <script src="Manager/UP-Index/js/lrtk.js" type="text/javascript" ></script>
<title>订单管理</title>
</head>

<body>
	<div class="margin clearfix">
		<div class="cover_style" id="cover_style">
			<div class="top_style Order_form" id="Order_form_style">
				<div class="type_title">
					购物产品比例
					<div class="btn_style">
						<a href="javascript:ovid()" class="xianshi_btn Statistic_btn">显示</a>
						<a href="javascript:ovid()"
							class="yingchan_btn Statistic_btn b_n_btn">隐藏</a>
					</div>
				</div>
				<div class="hide_style clearfix">
					<div class="proportion">
						<div class="easy-pie-chart percentage" data-percent="70"
							data-color="#D15B47">
							<span class="percent">70</span>%
						</div>
						<span class="name">汉堡</span>
					</div>
					<div class="proportion">
						<div class="easy-pie-chart percentage" data-percent="55"
							data-color="#87CEEB">
							<span class="percent">55</span>%
						</div>
						<span class="name">披萨</span>
					</div>
					<div class="proportion">
						<div class="easy-pie-chart percentage" data-percent="80"
							data-color="#87B87F">
							<span class="percent">80</span>%
						</div>
						<span class="name">甜点</span>
					</div>
					<div class="proportion">
						<div class="easy-pie-chart percentage" data-percent="30"
							data-color="#d63116">
							<span class="percent">30</span>%
						</div>
						<span class="name">冰淇淋</span>
					</div>
					<div class="proportion">
						<div class="easy-pie-chart percentage" data-percent="60"
							data-color="#ff6600">
							<span class="percent">60</span>%
						</div>
						<span class="name">早餐</span>
					</div>
					<div class="proportion">
						<div class="easy-pie-chart percentage" data-percent="40"
							data-color="#2ab023">
							<span class="percent">40</span>%
						</div>
						<span class="name">饮品</span>
					</div>
					<div class="proportion">
						<div class="easy-pie-chart percentage" data-percent="31"
							data-color="#1e3ae6">
							<span class="percent">31</span>%
						</div>
						<span class="name">已退款</span>
					</div>
					<div class="proportion">
						<div class="easy-pie-chart percentage" data-percent="69"
							data-color="#c316a9">
							<span class="percent">69</span>%
						</div>
						<span class="name">未退款</span>
					</div>
					<div class="proportion">
						<div class="easy-pie-chart percentage" data-percent="95"
							data-color="#13a9e1">
							<span class="percent">95</span>%
						</div>
						<span class="name">好评率</span>
					</div>
				</div>
			</div>
			<!--内容-->
			<div class="centent_style" id="centent_style">
				<div id="covar_list" class="order_list">
					<div id="scrollsidebar" class="left_Treeview">
						<div class="show_btn" id="rightArrow">
							<span></span>
						</div>
						<div class="widget-box side_content">
							<div class="side_title">
								<a title="隐藏" class="close_btn"><span></span></a>
							</div>
							<div class="side_list">
								<div class="widget-header header-color-green2">
									<h4 class="lighter smaller">订单类型分类</h4>
								</div>
								<div class="widget-body">
									<ul class="b_P_Sort_list">
										<li><i class="orange fa fa-reorder"></i><a
											href="/UP-Pizza/SelectOrderAllServlet">全部订单</a></li>
										<li><i class="fa fa-sticky-note red "></i> <a>汉堡</a></li>
										<li><i class="fa fa-sticky-note blue "></i> <a>饮品</a></li>
										<li><i class="fa fa-sticky-note grey "></i> <a>早餐</a></li>
										<li><i class="fa fa-sticky-note yellow "></i> <a>披萨</a></li>
										<li><i class="fa fa-sticky-note blue "></i> <a>冰淇淋</a></li>
										<li><i class="fa fa-sticky-note grey "></i> <a>甜点</a></li>

									</ul>

								</div>
							</div>
						</div>
					</div>
					<!--左侧样式-->
					<div class="list_right_style">
						<div class="search_style">

							<ul class="search_content clearfix">
								<li><label class="l_f">订单编号</label><input name="dingdanid"
									type="text" class="text_add" id="dingdanid"
									placeholder="订单订单编号" style=" width:250px"></li>
								<li><label class="l_f">时间</label><input name="start"
									class="inline laydate-icon" id="start"
									style=" margin-left:10px;"></li>
								<li style="width:90px;"><button type="button"
										class="btn_search" id="btn_search">
										<i class="fa fa-search"></i>查询
									</button></li>
							</ul>
						</div>
						<script>
							$(
									function() {
										$("#btn_search")
												.click(
														function() {
															var dingdanid = $(
																	"#dingdanid")
																	.val();
															var start = $(
																	"#start")
																	.val();
															window.location.href = "/UP-Pizza/SelectInfoByTimeDid?dingdanid="
																	+ dingdanid
																	+ "&start="
																	+ start;

														});
									})
						</script>
						<!--订单列表展示-->
						<table class="table table-striped table-bordered table-hover"
							id="sample-table">
							<thead>
								<tr>
									<th width="25px"><label><input type="checkbox"
											class="ace"><span class="lbl"></span></label></th>
									<th width="100px">编号</th>
									<th width="150px">订单编号</th>
									<th width="200px">买方用户名</th>
									<th width="150px">商品名称</th>
									<th width="100px">购买数量</th>
									<th width="120px">订单时间</th>
									<th width="80px">所属类型</th>
									<th width="120px">价格</th>
									<th width="120px">外卖商家</th>
									<th width="70px">状态</th>
									<th width="200px">操作</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach items="${listas}" var="f" varStatus="vs">
									<tr class="order${f.id }">
										<td><label><input type="checkbox" class="ace"><span
												class="lbl"></span></label></td>
										<td>${f.id}</td>
										<td>${f.did }</td>
										<td>${f.u.userName }</td>
										<td>${f.fo.name }</td>
										<td>${f.qty }</td>
										<td>${f.jytime }</td>
										<td>${f.t.name }</td>
										<td>${f.price }</td>
										<td>${f.e.expres }</td>

										<c:choose>
											<c:when test="${f.tid==1}">
												<td class="td-status"><span
													class="label label-success radius">待出餐</span></td>
												<td><a onClick="Delivery_stop(this,${f.id})"
													href="javascript:;" title="发货"
													class="btn btn-xs btn-success"><i
														class="fa fa-cubes bigger-120"></i></a> <a title="订单详细"
													href="Manager/UP-Index/order_detailed.jsp"
													class="btn btn-xs btn-info order_detailed"><i
														class="fa fa-list bigger-120"></i></a></td>
											</c:when>
											<c:otherwise>
												<td class="td-status"><span
													class="label label-success radius">已出餐</span></td>
												<td><a title="订单详细"
													href="Manager/UP-Index/order_detailed.jsp"
													class="btn btn-xs btn-info order_detailed"><i
														class="fa fa-list bigger-120"></i></a></td>
											</c:otherwise>
										</c:choose>
									</tr>
								</c:forEach>
							</tbody>
						</table>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!--发货-->
	<%
		//查询所有类别
			OrederDAO o = new OrederDAO();
			ArrayList<Expres> ty = o.selectAllExpres();
			Expres es=new Expres();
	%>
	<div id="Delivery_stop" style=" display:none">
		<div class="">
			<div class="content_style">
				<div class="form-group">
					<label class="col-sm-2 control-label no-padding-right"
						for="form-field-1">外卖商家 </label>
					<div class="col-sm-9">
						<select class="form-control" id="form-field-select-1">
							<%
								for (Expres ts : ty) {
							%>
							<option value="<%=ts.getId()%>"><%=ts.getExpres()%></option>
							<%
								}
							%>
						</select>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
<script>
	/*点击时将所选id传入servlet*/
	$(".widget-body")
			.on(
					"click",
					"ul.b_P_Sort_list li a",
					function(id) {
						var id = $(".fa-sticky-note+a").index(this);
						//alert(id);

						if (id != -1) {
							$
									.ajax({
										url : "${pageContext.request.contextPath}/SelectDingDanFoodTypeServlet",
										type : "post",
										data : "f=" + id,
										dataType : "text",
										success : callback

									});

						}

						function callback(r) {
							window.location.href = "${pageContext.request.contextPath}/SelectDingDanFoodTypeServlet?f="
									+ id;
						}
					});
</script>
<script>
	$(function() {
		$("#cover_style").fix({
			float : 'top',
			minStatue : false,
			skin : 'green',
			durationTime : false,
			window_height : 30,//设置浏览器与div的高度值差
			spacingw : 0,//
			spacingh : 0,//
			close_btn : '.yingchan_btn',
			show_btn : '.xianshi_btn',
			side_list : '.hide_style',
			widgetbox : '.top_style',
			close_btn_width : 60,
			da_height : '#centent_style,.left_Treeview,.list_right_style',
			side_title : '.b_n_btn',
			content : null,
			left_css : '.left_Treeview,.list_right_style'

		});
	});
	//左侧显示隐藏
	$(function() {
		$("#covar_list").fix({
			float : 'left',
			minStatue : false,
			skin : false,
			//durationTime :false,
			spacingw : 50,//设置隐藏时的距离
			spacingh : 270,//设置显示时间距
			stylewidth : '220',
			close_btn : '.close_btn',
			show_btn : '.show_btn',
			side_list : '.side_list',
			content : '.side_content',
			widgetbox : '.widget-box',
			da_height : null,
			table_menu : '.list_right_style'
		});
	});
	//时间选择
	laydate({
		elem : '#start',
		event : 'focus'
	});
	/*订单-删除*/
	function Order_form_del(obj, id) {
		layer.confirm('确认要删除吗？', function(index) {
			$(obj).parents("tr").remove();
			layer.msg('已删除!', {
				icon : 1,
				time : 1000
			});
		});
	}
	/**发货**/
	function Delivery_stop(obj, id) {
		layer
				.open({
					type : 1,
					title : '出餐',
					maxmin : true,
					shadeClose : false,
					area : [ '500px', '' ],
					content : $('#Delivery_stop'),
					btn : [ '确定', '取消' ],
					yes : function(index, layero) {
						/* layer.alert('快递号不能为空！', {
							title : '提示框',
							icon : 0,
						}) */

						var trIndex;
						trIndex = $(".order" + id).index();
						//alert(id);
						$.ajax({
							url : "UpdateTidCloseServlet",
							type : "post",
							data : {
								"id" : id
							/* "trIndex":trIndex */
							},
							dataType : "text"

						});

						layer
								.confirm(
										'提交成功！',
										function(index) {
											$(obj)
													.parents("tr")
													.find(".td-manage")
													.prepend(
															'<a style=" display:none" class="btn btn-xs btn-success" onClick="member_stop(this,id)" href="javascript:;" title="已出餐"><i class="fa fa-cubes bigger-120"></i></a>');
											$(obj)
													.parents("tr")
													.find(".td-status")
													.html(
															'<span class="label radius">已出餐</span>');
											$(obj).remove();
											layer.msg('已出餐!', {
												icon : 6,
												time : 1000
											});
										});
						layer.close(index);

					}
				})
	};
	//面包屑返回值
	var index = parent.layer.getFrameIndex(window.name);
	parent.layer.iframeAuto(index);
	$('.Order_form,.order_detailed').on('click', function() {
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

	//初始化宽度、高度  
	var heights = $(".top_style").outerHeight() + 47;
	$(".centent_style").height($(window).height() - heights);
	$(".page_right_style").width($(window).width() - 220);
	$(".left_Treeview,.list_right_style").height(
			$(window).height() - heights - 2);
	$(".list_right_style").width($(window).width() - 250);
	//当文档窗口发生改变时 触发  
	$(window).resize(
			function() {
				$(".centent_style").height($(window).height() - heights);
				$(".page_right_style").width($(window).width() - 220);
				$(".left_Treeview,.list_right_style").height(
						$(window).height() - heights - 2);
				$(".list_right_style").width($(window).width() - 250);
			})
	//比例
	var oldie = /msie\s*(8|7|6)/.test(navigator.userAgent.toLowerCase());
	$('.easy-pie-chart.percentage').each(function() {
		$(this).easyPieChart({
			barColor : $(this).data('color'),
			trackColor : '#EEEEEE',
			scaleColor : false,
			lineCap : 'butt',
			lineWidth : 10,
			animate : oldie ? false : 1000,
			size : 103
		}).css('color', $(this).data('color'));
	});

	$('[data-rel=tooltip]').tooltip();
	$('[data-rel=popover]').popover({
		html : true
	});
</script>
<script>
	//订单列表
	jQuery(function($) {
		var oTable1 = $('#sample-table').dataTable({
			"aaSorting" : [ [ 1, "desc" ] ],//默认第几个排序
			"bStateSave" : true,//状态保存
			"aoColumnDefs" : [
			//{"bVisible": false, "aTargets": [ 3 ]} //控制列的隐藏显示
			{
				"orderable" : false,
				"aTargets" : [ 0, 1, 2, 3, 4, 5, 6, 7, 8, 9 ]
			} // 制定列不参与排序
			]
		});

		$('table th input:checkbox').on(
				'click',
				function() {
					var that = this;
					$(this).closest('table').find(
							'tr > td:first-child input:checkbox').each(
							function() {
								this.checked = that.checked;
								$(this).closest('tr').toggleClass('selected');
							});

				});

	});
</script>