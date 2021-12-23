<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<head>
<base href="<%=basePath%>">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta name="renderer" content="webkit|ie-comp|ie-stand">
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
			<meta http-equiv="Cache-Control" content="no-siteapp" />
			<link href="Manager/UP-Index/assets/css/bootstrap.min.css"
				rel="stylesheet" />
			<link rel="stylesheet" href="Manager/UP-Index/css/style.css" />
			<link href="Manager/UP-Index/assets/css/codemirror.css"
				rel="stylesheet">
				<link rel="stylesheet"
					href="Manager/UP-Index/assets/css/ace.min.css" />
				<link rel="stylesheet"
					href="Manager/UP-Index/font/css/font-awesome.min.css" />
				<!--[if lte IE 8]>
		  <link rel="stylesheet" href="assets/css/ace-ie.min.css" />
		<![endif]-->
				<script src="Manager/UP-Index/js/jquery-1.9.1.min.js"></script>
				<script src="Manager/UP-Index/js/H-ui.js" type="text/javascript"></script>
				<script src="Manager/UP-Index/assets/js/bootstrap.min.js"></script>
				<script src="Manager/UP-Index/assets/js/typeahead-bs2.min.js"></script>
				<!-- <script src="assets/js/jquery.dataTables.min.js"></script> -->
				<script
					src="Manager/UP-Index/assets/js/jquery.dataTables.bootstrap.js"></script>
				<script src="Manager/UP-Index/assets/layer/layer.js"
					type="text/javascript"></script>
				<script src="Manager/UP-Index/assets/laydate/laydate.js"
					type="text/javascript"></script>
				<script src="Manager/UP-Index/js/lrtk.js" type="text/javascript"></script>
				<script src="Manager/UP-Index/js/tukuanjQuery.js"></script>
				<script
					src="Manager/UP-Index/js/cookie.js"></script>
				<script src="Manager/UP-Index/js/xlPaging.js"></script>


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

				<title>退款管理</title>
</head>

<body>
	<div class="margin clearfix">
		<div id="refund_style">
			<div class="search_style">

				<ul class="search_content clearfix">
					<li><label class="l_f">产品名称</label><input name="" id="search"
						type="text" class="text_add" AUTOCOMPLETE="off"
						placeholder="输入产品名称或用戶名" style=" width:250px"></li>
					<li><label class="l_f">退款时间</label><input
						class="inline laydate-icon" id="start" style=" margin-left:10px;"></li>
					<li style="width:90px;"><button type="button"
							class="btn_search">
							<i class="fa fa-search"></i>查询
						</button></li>
				</ul>
			</div>
			<div class="border clearfix">
				<span class="l_f"> <a href="javascript:void(0)"
					onclick="sesskpy(2)" class="btn btn-success Order_form"><i
						class="fa fa-check-square-o"></i>&nbsp;已退款订单</a> <a
					href="javascript:void(0)" onclick="sesskpy(1)"
					class="btn btn-warning Order_form"><i class="fa fa-close"></i>&nbsp;未退款订单</a>
					<a href="javascript:ovid(0)" class="btn btn-danger"><i
						class="fa fa-trash"></i>&nbsp;批量删除</a>
				</span> <span class="r_f">共：<b>${pcount}</b>笔
				</span>
			</div>
			<div class="kks" id="sample-table_length">
				<label>显示 <select name="sample-table_length"
					aria-controls="sample-table" class="itmjk">
						<option value="4">4</option>
						<option value="10">10</option>
						<option value="15">15</option>
						<option value="20">20</option>
				</select> 页
				</label>
			</div>
			<!--退款列表-->
			<div class="refund_list">
				<table class="table table-striped table-bordered table-hover"
					id="sample-table">
					<thead>
						<tr>
							<th width="25px"><label><input type="checkbox"
									class="ace"><span class="lbl"></span></label></th>
							<th width="120px">订单编号</th>
							<th width="250px">产品名称</th>
							<th width="100px">交易金额</th>
							<th width="100px">退款时间</th>
							<th width="100px">退款金额</th>
							<th width="80px">退款数量</th>
							<th width="200px">说明</th>
							<th width="70px">状态</th>
							<th width="200px">操作</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${otlist}" var="f">
							<tr>
								<td><label><input type="checkbox" value="${f.id}"
										class="ace checkst"><span class="lbl"></span></label></td>
								<td>${f.dg.did}</td>
								<td class="order_product_name"><a href="#">${f.dg.fo.name}</a>
								</td>
								<td>${f.dg.price}</td>
								<td>${f.tktime}</td>
								<td>${f.price}</td>
								<td>${f.qty}</td>
								<td>${f.info}</td>
								<td class="td-status tk"><span
									class="label label-success radius">${f.tktid==1?'待退款':'已退款'}</span></td>
								<td><a onClick="Delivery_Refund(this,'${f.id}')"
									href="javascript:;" title="退款"
									class="btn btn-xs btn-success btn-tk">退款</a> <a title="退款订单详细"
									href="/UP-Pizza/OutTkinfoServlet?id=${f.id}"
									class="btn btn-xs btn-info Refund_detailed">详细</a> <a
									title="删除" href="javascript:;"
									onclick="Order_form_del(this,'${f.id}')"
									class="btn btn-xs btn-warning">删除</a></td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>


			<div id="page"></div>
</body>
</html>

<script>
	//420 370
	var tr = $("tbody tr:eq(0)").clone();
	 ajax(parseInt(isNaN($.cookie("page"))?1:$.cookie("page")),$(".itmjk").val());  
	var tktk = setInterval(function(){	ajax(parseInt(isNaN($.cookie("page"))?1:$.cookie("page")),$(".itmjk").val())},1000);
	window.onload = function() {
		alert(result)
		//ajax(parseInt(isNaN($.cookie("page"))?1:$.cookie("page")),$(".itmjk").val());
		
		$(".act:eq(0)").attr("check", "true");
		//	$(".act:eq(0) a").css("background","red");
		$(".s").css("cursor", "not-allowed").addClass("disabled");
		//alert($.cookie('pageM'));
		//$(".act:eq(0) a").css("background","#6faed9");
		$(".itmjk").change(function() {

			ajax(1, $(this).val());
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
	}
	function ajax(pageNum, pageSize) {
		var pagen = pageNum;
		var pages = pageSize;
		var $clone = $("tbody tr:eq(0)").clone();
		if ($("tbody tr").length == 0) {
			$clone = tr;
		}

		$.ajax({
			url : "/UP-Pizza/OutInfoPageServlet",
			type : "post",
			data : {
				"pagen" : pagen,
				"pages" : pages,
				"ajax" : "ajax"
			},
			dataType : "text",
			success : callback
		});
		function callback(result) {
			var data = result.substring(0, result.lastIndexOf(","));
			$("tbody tr").remove();
			var json = $.parseJSON(data);
	
			for (i in json) {
				var ls = json[i];
				$clone.children("td:eq(0)").find(".checkst").attr("value",
						ls.id);
				$clone.children("td:eq(1)").text(ls.dg.did);
				$clone.children("td:eq(2)").text(ls.dg.fo.name);
				$clone.children("td:eq(3)").text(ls.dg.price);
				$clone.children("td:eq(4)").text(ls.tktime);
				$clone.children("td:eq(5)").text(ls.price);
				$clone.children("td:eq(6)").text(ls.qty);
				$clone.children("td:eq(7)").text(ls.info);

				if (ls.tktid == 1) {
					$clone.children("td:eq(8)").children("span").text("未退款");
					$clone.children("td:eq(9)").children("a:eq(0)").show();
				} else {
					$clone.children("td:eq(8)").children("span").text("已退款");
					$clone.children("td:eq(9)").children("a:eq(0)").hide();
				}
				$clone.children("td:eq(9)").children("a:eq(1)").attr("href",
						"/UP-Pizza/OutInfoTktidServlet?id=" + ls.id);
				$clone.children("td:eq(9)").children("a:eq(0)").attr("onclick",
						"Delivery_Refund(this," + ls.id + ")");
				$clone.children("td:eq(9)").children("a:eq(2)").attr("onclick",
						"Order_form_del(this," + ls.id + ")");

				$("tbody").prepend("<tr>" + $clone.html() + "</tr>");
			}
			var page = parseInt(result.substring(result.indexOf("$") + 1,
					result.indexOf("*")));
			var curPage = parseInt(result
					.substring(result.lastIndexOf("*") + 1));
			var count = parseInt(result.substring(result.indexOf("#") + 1));
			$(".r_f>b").text(count);
			$.cookie("count", count);
			let
			xlPaging = new Paging('page', {
				nowPage : page, // 现在的页码
				pageNum : curPage, // Total number of paging
				buttonNum : 10, // 分页总次数
				canJump : 1,// 你想显示跳跃按钮吗?0 =不显示(默认),1 =
				showOne : 1,// 如果只有一个页面，您想显示分页吗?0 =没有显示,1 =显示(默认)
				callback : function(num) {
					ajax(num, $(".itmjk").val());
					$.cookie("page", num);
					$.cookie("pageSize", pageSize);
				}
			});

		}

	}
	//删除退款记录		
	function Order_form_del(obj, id) {
		layer.confirm('确认要删除吗？', function(index) {
			$.ajax({
				url : "/UP-Pizza/DeleteOutinfoServlet",
				type : "post",
				data : {
					"id" : id
				},
				dataType : "text",
				success : callback
			});
			function callback(result) {
				if (result = "true") {
					$(obj).parents("tr").remove();
					layer.msg('已删除!', {
						icon : 1,
						time : 1000
					});
				}
				if ($("tbody tr").length == 0) {
					$.cookie("page", 1);
					ajax(1);
				}
			}
		});

	}

	//订单列表
	jQuery(function($) {
		var oTable1 = $('#sample-table').dataTable({
			"aaSorting" : [ [ 1, "desc" ] ],//默认第几个排序
			"bStateSave" : true,//状态保存
			"aoColumnDefs" : [
			//{"bVisible": false, "aTargets": [ 3 ]} //控制列的隐藏显示
			{
				"orderable" : false,
				"aTargets" : [ 0, 2, 3, 4, 5, 6, 8, 9 ]
			} // 制定列不参与排序
			]
		});
		//全选操作

	});

	//退款
	function Delivery_Refund(obj, id) {
		layer
				.confirm(
						'是否退款当前商品价格！',
						function(index) {
							$.ajax({
								url : "/UP-Pizza/OutInfoTktidServlet",
								type : "post",
								data : {
									"id" : id,
									"tkid" : 2
								},
								dataType : "text",
								success : callback
							});
							function callback(result) {
								if (result == "true") {
									$(obj)
											.parents("tr")
											.find(".td-manage")
											.prepend(
													'<a style=" display:none" class="btn btn-xs btn-success" onClick="member_stop(this,id)" href="javascript:;" title="已退款">退款</a>');
									$(obj)
											.parents("tr")
											.find(".td-status")
											.html(
													'<span class="label label-defaunt  radius">已退款</span>');
									$(obj).hide();
									layer.msg('已退款!', {
										icon : 6,
										time : 1000
									});
								}
							}

						});
	}
	//面包屑返回值
	var index = parent.layer.getFrameIndex(window.name);
	parent.layer.iframeAuto(index);
	$('.Refund_detailed').on('click', function() {
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
		//parent.$('.Current_page').html("<a href='javascript:void(0)' name="+herf+" class='iframeurl'>" + cnames + "</a>");
		parent.layer.close(index);

	});
</script>
<script>
	$(function() {

		$(".btn-danger").click(function() {
			if ($(".checkst:checked").length == 0) {
				layer.msg("至少要选择一个用户");
				return;
			}

			var flag = confirm('确定要删除吗?');

			if (flag) {

				var arr = new Array();
				var $check = $(".checkst:checked");
				$($check).each(function(i) {
					arr[i] = $(this).val();
				});

				$.ajax({
					url : "/UP-Pizza/DeletesOutinfoServlet",
					type : "post",
					data : {
						"ids" : arr
					},
					dataType : "text",
					traditional : true,
					success : callback
				});
				function callback(result) {
					if (result != null) {
						$check.each(function() {
							$(this).parents("tbody tr").remove();
						});
						/* ajax(); */
					}
				}
			}

		});

		//搜索
		var f = true;
		$('#search').on('compositionend', function() {
			f = true;
		});
		$('#search').on('compositionstart', function() {
			f = false;
		});
		$('#search')
				.on(
						'input',
						function() {
							clearInterval(tktk);
							$(".remo").remove();
							setTimeout(
									function() {
										if (f) {
											var $clone = tr;
											$
													.ajax({
														url : "/UP-Pizza/OutinfoSeachServlet",
														type : "post",
														data : {
															"tj" : $("#search")
																	.val()
														},
														dataType : "text",
														success : ccbbaa
													});
											function ccbbaa(data) {
												var count = data.substring(data
														.indexOf("/") + 1);
												var t = data.substring(0, data
														.indexOf("/"));
												var json = $.parseJSON(t);
												$("tbody tr").remove();
												for (i in json) {
													var ls = json[i];
													$clone.children("td:eq(1)")
															.text(ls.dg.did);
													$clone
															.children(
																	"td:eq(2)")
															.text(
																	ls.dg.fo.name);
													$clone.children("td:eq(3)")
															.text(ls.dg.price);
													$clone.children("td:eq(4)")
															.text(ls.tktime);
													$clone.children("td:eq(5)")
															.text(ls.price);
													$clone.children("td:eq(6)")
															.text(ls.qty);
													$clone.children("td:eq(7)")
															.text(ls.info);
													if (ls.tktid == 1) {
														$clone.children(
																"td:eq(8)")
																.children(
																		"span")
																.text("未退款");
														$clone
																.children(
																		"td:eq(9)")
																.children(
																		"a[title='退款']")
																.show();
													} else {
														$clone.children(
																"td:eq(8)")
																.children(
																		"span")
																.text("已退款");
														$clone
																.children(
																		"td:eq(9)")
																.children(
																		"a[title='退款']")
																.hide();
													}
													$clone
															.children(
																	"td:eq(9)")
															.children("a:eq(1)")
															.attr(
																	"href",
																	"/UP-Pizza/OutTkinfoServlet?id="
																			+ ls.id);
													$clone
															.children(
																	"td:eq(9)")
															.children("a:eq(0)")
															.attr(
																	"onclick",
																	"Delivery_Refund(this,"
																			+ ls.id
																			+ ")");
													$clone
															.children(
																	"td:eq(9)")
															.children("a:eq(2)")
															.attr(
																	"onclick",
																	"Order_form_del(this,"
																			+ ls.id
																			+ ")");
													$("tbody")
															.prepend(
																	"<tr>"
																			+ $clone
																					.html()
																			+ "</tr>");
												}
												var option = "<option class='remo' selected>"
														+ count + "</option>";
												$(".itmjk").append(option);
												$(".r_f>b").text(count);
											}
										}
									}, 0);
						});

	});

	function sesskpy(tid) {
	 clearInterval(tktk);
		$.ajax({
			url : "/UP-Pizza/OutSelectBytidServlet",
			type : "post",
			data : {
				"tid" : tid
			},
			dataType : "text",
			success : callback
		});
		function callback(data) {
			var $clone = $("tbody tr:eq(0)").clone();
			$("tbody tr").remove();

			var json = $.parseJSON(data);
			for (i in json) {
				var ls = json[i];
				$clone.children("td:eq(1)").text(ls.dg.did);
				$clone.children("td:eq(2)").text(ls.dg.fo.name);
				$clone.children("td:eq(3)").text(ls.dg.price);
				$clone.children("td:eq(4)").text(ls.tktime);
				$clone.children("td:eq(5)").text(ls.price);
				$clone.children("td:eq(6)").text(ls.qty);
				$clone.children("td:eq(7)").text(ls.info);
				if (tid == 1) {
					$clone.children("td:eq(8)").children("span").text("未退款");
					$clone.children("td:eq(9)").children("a[title='退款']")
							.show();
				} else {
					$clone.children("td:eq(8)").children("span").text("已退款");
					$clone.children("td:eq(9)").children("a[title='退款']")
							.hide();
				}
				$clone.children("td:eq(9)").children("a:eq(1)").attr("href",
						"/UP-Pizza/OutTkinfoServlet?id=" + ls.id);
				$clone.children("td:eq(9)").children("a:eq(0)").attr("onclick",
						"Delivery_Refund(this," + ls.id + ")");
				$clone.children("td:eq(9)").children("a:eq(2)").attr("onclick",
						"Order_form_del(this," + ls.id + ")");
				$("tbody").prepend("<tr>" + $clone.html() + "</tr>");
			}
			$(".itmjk").hide();
			$("#page").hide();

		}

	}
</script>
