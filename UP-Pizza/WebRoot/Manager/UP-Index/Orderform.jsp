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
<title>????????????</title>
</head>

<body>
	<div class="margin clearfix">
		<div class="cover_style" id="cover_style">
			<div class="top_style Order_form" id="Order_form_style">
				<div class="type_title">
					??????????????????
					<div class="btn_style">
						<a href="javascript:ovid()" class="xianshi_btn Statistic_btn">??????</a>
						<a href="javascript:ovid()"
							class="yingchan_btn Statistic_btn b_n_btn">??????</a>
					</div>
				</div>
				<div class="hide_style clearfix">
					<div class="proportion">
						<div class="easy-pie-chart percentage" data-percent="70"
							data-color="#D15B47">
							<span class="percent">70</span>%
						</div>
						<span class="name">??????</span>
					</div>
					<div class="proportion">
						<div class="easy-pie-chart percentage" data-percent="55"
							data-color="#87CEEB">
							<span class="percent">55</span>%
						</div>
						<span class="name">??????</span>
					</div>
					<div class="proportion">
						<div class="easy-pie-chart percentage" data-percent="80"
							data-color="#87B87F">
							<span class="percent">80</span>%
						</div>
						<span class="name">??????</span>
					</div>
					<div class="proportion">
						<div class="easy-pie-chart percentage" data-percent="30"
							data-color="#d63116">
							<span class="percent">30</span>%
						</div>
						<span class="name">?????????</span>
					</div>
					<div class="proportion">
						<div class="easy-pie-chart percentage" data-percent="60"
							data-color="#ff6600">
							<span class="percent">60</span>%
						</div>
						<span class="name">??????</span>
					</div>
					<div class="proportion">
						<div class="easy-pie-chart percentage" data-percent="40"
							data-color="#2ab023">
							<span class="percent">40</span>%
						</div>
						<span class="name">??????</span>
					</div>
					<div class="proportion">
						<div class="easy-pie-chart percentage" data-percent="31"
							data-color="#1e3ae6">
							<span class="percent">31</span>%
						</div>
						<span class="name">?????????</span>
					</div>
					<div class="proportion">
						<div class="easy-pie-chart percentage" data-percent="69"
							data-color="#c316a9">
							<span class="percent">69</span>%
						</div>
						<span class="name">?????????</span>
					</div>
					<div class="proportion">
						<div class="easy-pie-chart percentage" data-percent="95"
							data-color="#13a9e1">
							<span class="percent">95</span>%
						</div>
						<span class="name">?????????</span>
					</div>
				</div>
			</div>
			<!--??????-->
			<div class="centent_style" id="centent_style">
				<div id="covar_list" class="order_list">
					<div id="scrollsidebar" class="left_Treeview">
						<div class="show_btn" id="rightArrow">
							<span></span>
						</div>
						<div class="widget-box side_content">
							<div class="side_title">
								<a title="??????" class="close_btn"><span></span></a>
							</div>
							<div class="side_list">
								<div class="widget-header header-color-green2">
									<h4 class="lighter smaller">??????????????????</h4>
								</div>
								<div class="widget-body">
									<ul class="b_P_Sort_list">
										<li><i class="orange fa fa-reorder"></i><a
											href="/UP-Pizza/SelectOrderAllServlet">????????????</a></li>
										<li><i class="fa fa-sticky-note red "></i> <a>??????</a></li>
										<li><i class="fa fa-sticky-note blue "></i> <a>??????</a></li>
										<li><i class="fa fa-sticky-note grey "></i> <a>??????</a></li>
										<li><i class="fa fa-sticky-note yellow "></i> <a>??????</a></li>
										<li><i class="fa fa-sticky-note blue "></i> <a>?????????</a></li>
										<li><i class="fa fa-sticky-note grey "></i> <a>??????</a></li>

									</ul>

								</div>
							</div>
						</div>
					</div>
					<!--????????????-->
					<div class="list_right_style">
						<div class="search_style">

							<ul class="search_content clearfix">
								<li><label class="l_f">????????????</label><input name="dingdanid"
									type="text" class="text_add" id="dingdanid"
									placeholder="??????????????????" style=" width:250px"></li>
								<li><label class="l_f">??????</label><input name="start"
									class="inline laydate-icon" id="start"
									style=" margin-left:10px;"></li>
								<li style="width:90px;"><button type="button"
										class="btn_search" id="btn_search">
										<i class="fa fa-search"></i>??????
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
						<!--??????????????????-->
						<table class="table table-striped table-bordered table-hover"
							id="sample-table">
							<thead>
								<tr>
									<th width="25px"><label><input type="checkbox"
											class="ace"><span class="lbl"></span></label></th>
									<th width="100px">??????</th>
									<th width="150px">????????????</th>
									<th width="200px">???????????????</th>
									<th width="150px">????????????</th>
									<th width="100px">????????????</th>
									<th width="120px">????????????</th>
									<th width="80px">????????????</th>
									<th width="120px">??????</th>
									<th width="120px">????????????</th>
									<th width="70px">??????</th>
									<th width="200px">??????</th>
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
													class="label label-success radius">?????????</span></td>
												<td><a onClick="Delivery_stop(this,${f.id})"
													href="javascript:;" title="??????"
													class="btn btn-xs btn-success"><i
														class="fa fa-cubes bigger-120"></i></a> <a title="????????????"
													href="Manager/UP-Index/order_detailed.jsp"
													class="btn btn-xs btn-info order_detailed"><i
														class="fa fa-list bigger-120"></i></a></td>
											</c:when>
											<c:otherwise>
												<td class="td-status"><span
													class="label label-success radius">?????????</span></td>
												<td><a title="????????????"
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
	<!--??????-->
	<%
		//??????????????????
			OrederDAO o = new OrederDAO();
			ArrayList<Expres> ty = o.selectAllExpres();
			Expres es=new Expres();
	%>
	<div id="Delivery_stop" style=" display:none">
		<div class="">
			<div class="content_style">
				<div class="form-group">
					<label class="col-sm-2 control-label no-padding-right"
						for="form-field-1">???????????? </label>
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
	/*??????????????????id??????servlet*/
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
			window_height : 30,//??????????????????div???????????????
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
	//??????????????????
	$(function() {
		$("#covar_list").fix({
			float : 'left',
			minStatue : false,
			skin : false,
			//durationTime :false,
			spacingw : 50,//????????????????????????
			spacingh : 270,//?????????????????????
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
	//????????????
	laydate({
		elem : '#start',
		event : 'focus'
	});
	/*??????-??????*/
	function Order_form_del(obj, id) {
		layer.confirm('?????????????????????', function(index) {
			$(obj).parents("tr").remove();
			layer.msg('?????????!', {
				icon : 1,
				time : 1000
			});
		});
	}
	/**??????**/
	function Delivery_stop(obj, id) {
		layer
				.open({
					type : 1,
					title : '??????',
					maxmin : true,
					shadeClose : false,
					area : [ '500px', '' ],
					content : $('#Delivery_stop'),
					btn : [ '??????', '??????' ],
					yes : function(index, layero) {
						/* layer.alert('????????????????????????', {
							title : '?????????',
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
										'???????????????',
										function(index) {
											$(obj)
													.parents("tr")
													.find(".td-manage")
													.prepend(
															'<a style=" display:none" class="btn btn-xs btn-success" onClick="member_stop(this,id)" href="javascript:;" title="?????????"><i class="fa fa-cubes bigger-120"></i></a>');
											$(obj)
													.parents("tr")
													.find(".td-status")
													.html(
															'<span class="label radius">?????????</span>');
											$(obj).remove();
											layer.msg('?????????!', {
												icon : 6,
												time : 1000
											});
										});
						layer.close(index);

					}
				})
	};
	//??????????????????
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

	//????????????????????????  
	var heights = $(".top_style").outerHeight() + 47;
	$(".centent_style").height($(window).height() - heights);
	$(".page_right_style").width($(window).width() - 220);
	$(".left_Treeview,.list_right_style").height(
			$(window).height() - heights - 2);
	$(".list_right_style").width($(window).width() - 250);
	//?????????????????????????????? ??????  
	$(window).resize(
			function() {
				$(".centent_style").height($(window).height() - heights);
				$(".page_right_style").width($(window).width() - 220);
				$(".left_Treeview,.list_right_style").height(
						$(window).height() - heights - 2);
				$(".list_right_style").width($(window).width() - 250);
			})
	//??????
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
	//????????????
	jQuery(function($) {
		var oTable1 = $('#sample-table').dataTable({
			"aaSorting" : [ [ 1, "desc" ] ],//?????????????????????
			"bStateSave" : true,//????????????
			"aoColumnDefs" : [
			//{"bVisible": false, "aTargets": [ 3 ]} //????????????????????????
			{
				"orderable" : false,
				"aTargets" : [ 0, 1, 2, 3, 4, 5, 6, 7, 8, 9 ]
			} // ????????????????????????
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