<%@page import="UP_Pizza_End_Entity.Food"%>
<%@page import="UP_Pizza_End_Entity.Type"%>
<%@page import="UP_Pizza_End_DAO.Product_SortDao"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
	+ request.getServerName() + ":" + request.getServerPort()
	+ path + "/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<base href="<%=basePath%>" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="renderer" content="webkit|ie-comp|ie-stand">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport"
	content="width=device-width,initial-scale=1,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" />
<meta http-equiv="Cache-Control" content="no-siteapp" />
<link href="Manager/UP-Index/assets/css/bootstrap.min.css"
	rel="stylesheet" />
<link rel="stylesheet" href="Manager/UP-Index/css/style.css" />
<link rel="stylesheet" href="Manager/UP-Index/assets/css/ace.min.css" />
<link rel="stylesheet"
	href="Manager/UP-Index/assets/css/font-awesome.min.css" />
<link rel="stylesheet"
	href="Manager/UP-Index/Widget/zTree/css/zTreeStyle/zTreeStyle.css"
	type="text/css">
<link href="Manager/UP-Index/Widget/icheck/icheck.css" rel="stylesheet"
	type="text/css" />
<!--[if IE 7]>
		  <link rel="stylesheet" href="assets/css/font-awesome-ie7.min.css" />
		<![endif]-->
<!--[if lte IE 8]>
		  <link rel="stylesheet" href="assets/css/ace-ie.min.css" />
		<![endif]-->
<script src="Manager/UP-Index/js/jquery-1.9.1.min.js"></script>
<script src="Manager/UP-Index/assets/js/bootstrap.min.js"></script>
<script src="Manager/UP-Index/assets/js/typeahead-bs2.min.js"></script>
<!-- page specific plugin scripts -->
<script src="Manager/UP-Index/assets/js/jquery.dataTables.min.js"></script>
<script src="Manager/UP-Index/assets/js/jquery.dataTables.bootstrap.js"></script>
<script type="text/javascript" src="Manager/UP-Index/js/H-ui.js"></script>
<script type="text/javascript" src="Manager/UP-Index/js/H-ui.admin.js"></script>
<script src="Manager/UP-Index/assets/layer/layer.js"
	type="text/javascript"></script>
<script src="Manager/UP-Index/assets/laydate/laydate.js"
	type="text/javascript"></script>
<script type="text/javascript"
	src="Manager/UP-Index/Widget/zTree/js/jquery.ztree.all-3.5.min.js"></script>
<script src="Manager/UP-Index/js/lrtk.js" type="text/javascript"></script>



<script type="text/javascript" src="Manager/UP-Index/Excel/jszip.js"></script>
<script type="text/javascript" src="Manager/UP-Index/Excel/FileSaver.js"></script>
<script type="text/javascript" src="Manager/UP-Index/Excel/excel-gen.js"></script>
<script type="text/javascript" src="Manager/UP-Index/Excel/demo.page.js"></script>

<script type="text/javascript" src="Manager/UP-Index/Excel/html2canvas.min.js"></script>
<script type="text/javascript" src="Manager/UP-Index/Excel/index.min.js"></script>
<script type="text/javascript" src="Manager/UP-Index/Excel/jspdf.min.js"></script>

<title>产品列表</title>
</head>
<body>
	<div class="page-content clearfix">
		<div id="products_style">
			<!-- <div class="search_style">

				<ul class="search_content clearfix">
					<li><label class="l_f">产品名称</label><input name="" type="text"
						class="text_add" placeholder="输入品牌名称" style=" width:250px" /></li>
					<li><label class="l_f">添加时间</label><input
						class="inline laydate-icon" id="start" style=" margin-left:10px;"></li>
					<li style="width:90px;"><button type="button"
							class="btn_search">
							<i class="icon-search"></i>查询
						</button></li>
				</ul>
			</div> -->
			<%
				//查询所有商品数量
										Product_SortDao ps = new Product_SortDao();
										int counta=ps.SelectAllFood();
										request.setAttribute("counta", counta);
			%>
			<div class="border clearfix">
				<span class="l_f"> <a href="Manager/UP-Index/picture-add.jsp"
					title="添加商品" class="btn btn-warning Order_form"><i
						class="icon-plus"></i>添加商品</a> <a href="javascript:ovid()"
					class="btn btn-danger"><i class="icon-trash"></i>批量删除</a><a href="javascript:ovid()"
					class="btn btn-success"  onclick="printOut()"><i class="icon-plus"></i>导出为PDF</a>
				</span> <span class="r_f">共：<b>${counta}</b>&nbsp;&nbsp;件商品
				</span>
			</div>
			<!--产品列表展示-->
			<div class="h_products_list clearfix" id="products_list">
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
								<h4 class="lighter smaller">产品类型列表</h4>
							</div>
							<div class="widget-body">
								<div class="widget-main padding-8">
									<div id="treeDemo" class="ztree"></div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="table_menu_list printId" id="testIframe">
					<table class="table table-striped table-bordered table-hover"
						id="sample-table">
						<thead>
							<tr>
								<th width="25px"><label><input type="checkbox"
										class="ace allcheck"><span class="lbl" id="alllbl"></span></label></th>
								<th width="80px">产品编号</th>
								<th width="250px">产品名称</th>
								<th width="100px">原价格</th>
								<th width="100px">现价</th>
								<th width="100px">图片</th>
								<th width="100px">信息</th>
								<th width="100px">库存</th>
								<th width="200px">生产时间</th>
								<th width="80px">审核状态</th>
								<th width="70px">状态</th>
								<th width="200px">操作</th>
							</tr>
						</thead>
						<tbody>

							<c:forEach items="${list}" var="f" varStatus="vs">
								<tr class="trr${f.id}">
									<td width="25px"><label><input type="checkbox"
											class="ace checkst"><span class="lbl" id="slbl"></span></label></td>
									<td width="80px" class="aa">${f.id}</td>
									<td width="250px" class="name">${f.name}</td>
									<td width="100px" class="yprice">${f.yprice}</td>
									<td width="100px" class="xprice">${f.xprice}</td>
									<td width="80px" class="imageName"><img alt=""
										src="Manager/UP-Index/food/${f.imageName }"
										style="height:90px"><input type="hidden" id="imgTxt"
										name="imageName" value="${f.imageName }" /></td>
									<td width="180px" class="info">${f.info}</td>
									<td width="180px" class="saleNum">${f.saleNum}</td>
									<td width="180px">${f.time}</td>
									<td class="text-l">通过</td>
									<c:choose>
										<c:when test="${f.tid==1}">
											<td class="td-status"><span
												class="label label-success radius">已启用</span></td>
											<td class="td-manage"><a
												onClick="member_stop(this,${f.id})" href="javascript:;"
												title="停用" id="fa${f.id}" class="btn btn-xs btn-success"><i
													class="icon-ok bigger-120"></i></a> <a title="编辑"
												onclick="member_edit(${f.id},this)" href="javascript:;"
												class="btn btn-xs btn-info"><i
													class="icon-edit bigger-120"></i></a> <a title="删除"
												href="javascript:;" onclick="member_del(this,${f.id})"
												id="f${f.id}" class="btn btn-xs btn-warning"><i
													class="icon-trash  bigger-120"></i></a></td>
										</c:when>
										<c:otherwise>
											<td class="td-status"><span class="label  radius">已禁用</span></td>
											<td class="td-manage"><a
												onClick="member_start(this,${f.id})" href="javascript:;"
												title="启用" id="fa${f.id}" class="btn btn-xs"><i
													class="icon-ok bigger-120"></i></a> <a title="编辑"
												onclick="member_edit(${f.id},this)" href="javascript:;"
												class="btn btn-xs btn-info"><i
													class="icon-edit bigger-120"></i></a> <a title="删除"
												href="javascript:;" onclick="member_del(this,${f.id})"
												id="f${f.id}" class="btn btn-xs btn-warning"><i
													class="icon-trash  bigger-120"></i></a></td>
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
	<%
		//查询所有类别
		//Product_SortDao ps = new Product_SortDao();
		ArrayList<Type> types = ps.selectAllType();
		Type p=new Type();
	%>
	<!--添加用户图层-->
	<div class="add_menber" id="add_menber_style" style="display:none">

		<ul class=" page-content">
			<li><label class="label_name">食&nbsp;&nbsp;物 &nbsp;名：</label><span
				class="add_name"><input value="" name="picture" type="text"
					class="text_add foodname" /></span>
				<div class="prompt r_f"></div></li>
			<li><label class="label_name">图片Logo：</label><span
				class="add_name"><input type="file" id="imagefile"
					onchange="getImage()" /> <br /> <img id="img"
					src="Manager/UP-Index/food/" width="120px" height="100px" /> <input
					type="hidden" id="imgTxtss" name="imageName" class="imgnamesss" /></span>
				<div class="prompt r_f"></div></li>

			<li><label class="label_name">所属类型：</label>&nbsp;&nbsp;&nbsp;&nbsp;
				<select class="select foodNum" name="foodNum">
					<!-- 获取集合，遍历食物表类别 -->
					<%
						for (Type t : types) {
					%>
					<option value="<%=t.getId()%>"><%=t.getName()%></option>
					<%
						}
					%>
			</select>
				<div class="prompt r_f"></div></li>
			<li style="position: relative;top:175px;right: 120px; "><label
				class="label_name">日制作额：</label><span class="add_name"><input
					name="" type="text" class="text_add num" value="" /></span>
				<div class="prompt r_f"></div></li>
			<li><label class="label_name">原价：</label><span class="add_name"><input
					name="" value="" type="text" class="text_add ypriceaa" /></span>
				<div class="prompt r_f"></div></li>
			<li style="position: relative;top:-55px;right: 210px; "><label
				class="label_name">现价：</label><span class="add_name"><input
					name="" value="" type="text" class="text_add xpriceaa" /></span>
				<div class="prompt r_f"></div></li>
			<li class="adderss"><label class="label_name">说明：</label><span
				class="add_name"><input name="info" type="text"
					class="text_add infoaa" style=" width:350px" value="" /></span>
				<div class="prompt r_f"></div></li>
			<li><label class="label_name">状&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;态：</label><span
				class="add_name"> <label><input
						name="form-field-radio1" value="1" type="radio" checked="checked"
						class="ace tid"><span class="lbl">开启</span></label>&nbsp;&nbsp;&nbsp;
					<label><input name="form-field-radio1" value="2"
						type="radio" class="ace tid"><span class="lbl">关闭</span></label></span>
				<div class="prompt r_f"></div></li>
		</ul>
	</div>
</body>
</html>
<script>
	//当文件域的值发生改变时，重新获取图片显示
	function getImage() {
		//获取到上传图片的绝对路径
		var imgfile = document.getElementById("imagefile").value;
		//通过字符串的截取获取到图片名
		var img = imgfile.substring(imgfile.lastIndexOf("\\") + 1);
		//及时现实到img标签中
		document.getElementById("img").src = "Manager/UP-Index/food/" + img;
		//将图片的名称隐藏到隐藏域的文本框
		document.getElementById("imgTxtss").value = img;
	}
</script>
<script>
	jQuery(function($) {
		var oTable1 = $('#sample-table').dataTable({
			"aaSorting" : [ [ 1, "desc" ] ],//默认第几个排序
			"bStateSave" : true,//状态保存
			"aoColumnDefs" : [
			//{"bVisible": false, "aTargets": [ 3 ]} //控制列的隐藏显示
			{
				"orderable" : false,
				"aTargets" : [ 0, 2, 3, 4, 5, 8, 9 ]
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

		$('[data-rel="tooltip"]').tooltip({
			placement : tooltip_placement
		});
		function tooltip_placement(context, source) {
			var $source = $(source);
			var $parent = $source.closest('table')
			var off1 = $parent.offset();
			var w1 = $parent.width();

			var off2 = $source.offset();
			var w2 = $source.width();

			if (parseInt(off2.left) < parseInt(off1.left) + parseInt(w1 / 2))
				return 'right';
			return 'left';
		}
	});
	laydate({
		elem : '#start',
		event : 'focus'
	});
	$(function() {
		$("#products_style").fix({
			float : 'left',
			//minStatue : true,
			skin : 'green',
			durationTime : false,
			spacingw : 30,//设置隐藏时的距离
			spacingh : 260,//设置显示时间距
		});
	});
</script>
<script type="text/javascript">
	//初始化宽度、高度  
	$(".widget-box").height($(window).height() - 215);
	$(".table_menu_list").width($(window).width() - 260);
	$(".table_menu_list").height($(window).height() - 215);
	//当文档窗口发生改变时 触发  
	$(window).resize(function() {
		$(".widget-box").height($(window).height() - 215);
		$(".table_menu_list").width($(window).width() - 260);
		$(".table_menu_list").height($(window).height() - 215);
	})

	/*******树状图*******/
	var setting = {
		view : {
			dblClickExpand : false,
			showLine : false,
			selectedMulti : false
		},
		data : {
			simpleData : {
				enable : true,
				idKey : "id",
				pIdKey : "pId",
				rootPId : ""
			}
		},
		callback : {
			beforeClick : function(treeId, treeNode) {
				var zTree = $.fn.zTree.getZTreeObj("tree");
				if (treeNode.isParent) {
					zTree.expandNode(treeNode);
					return false;
				} else {
					demoIframe.attr("src", treeNode.file + ".jsp");
					return true;
				}
			}
		}
	};

	var zNodes = [ {
		id : 1,
		pId : 0,
		name : "商城分类列表",
		open : true
	}, {
		id : 11,
		pId : 1,
		name : "早餐"
	}, {
		id : 111,
		pId : 11,
		name : "已下架"
	}, {
		id : 112,
		pId : 11,
		name : "未下架"
	}, {
		id : 12,
		pId : 1,
		name : "饮料"
	}, {
		id : 121,
		pId : 12,
		name : "已下架 "
	}, {
		id : 122,
		pId : 12,
		name : "未下架 "
	}, {
		id : 13,
		pId : 1,
		name : "汉堡"
	}, {
		id : 131,
		pId : 13,
		name : "已下架 "
	}, {
		id : 132,
		pId : 13,
		name : "未下架 "
	}, {
		id : 14,
		pId : 1,
		name : "冰淇淋"
	}, {
		id : 141,
		pId : 14,
		name : "已下架 "
	}, {
		id : 142,
		pId : 14,
		name : "未下架 "
	}, {
		id : 15,
		pId : 1,
		name : "披萨 "
	}, {
		id : 151,
		pId : 15,
		name : "已下架 "
	}, {
		id : 152,
		pId : 15,
		name : "未下架 "
	}, {
		id : 16,
		pId : 1,
		name : "甜点"
	}, {
		id : 161,
		pId : 16,
		name : "已下架 "
	}, {
		id : 162,
		pId : 16,
		name : "未下架 "
	},

	];

	var code;

	function showCode(str) {
		if (!code)
			code = $("#code");
		code.empty();
		code.append("<li>" + str + "</li>");
	}

	$(document).ready(function() {
		var t = $("#treeDemo");
		t = $.fn.zTree.init(t, setting, zNodes);
		demoIframe = $("#testIframe");
		demoIframe.bind("load", loadReady);
		var zTree = $.fn.zTree.getZTreeObj("tree");
		zTree.selectNode(zTree.getNodeByParam("id", '11'));
	});

	/*点击时将所选id传入servlet*/
	$("#treeDemo")
			.on(
					"click",
					".level0 a.level1",
					function(id) {
						var id = $("a.level1").index(this);

						if (id != -1) {
							//alert(id);
							$
									.ajax({
										url : "${pageContext.request.contextPath}/SelectAllHanbao",
										type : "post",
										data : "fid=" + id,
										dataType : "text",
										success : callback

									});

						}

						function callback() {
							window.location.href = "${pageContext.request.contextPath}/SelectAllHanbao?fid="
									+ id;
						}
					});

	/*获取上下架的下标*/
	/* $("#treeDemo")
			.on(
					"click",
					"ul.level0 li.level1 ul.level1 li.level2 a.level2",
					function(id) {
						var fid = $("ul.level0 li.level1 a.level1").index();
						alert("fid::"+fid);
						//alert("length"+$("ul.level0 li.level1").length);
						var fids = $("ul.level0 li.level1").index(
								$(this).parents("li.level1"));
						var ids = $(
								"ul.level0 li.level1:eq(" + fids
										+ ") ul.level1 li.level2 a.level2")
								.index(this);
						//alert(ids);
						if (ids != -1) {
							$
									.ajax({
										url : "${pageContext.request.contextPath}/SelectAllHanbao",
										type : "post",
										data : {
											"f" : ids,
											"fid" : fid
										},
										dataType : "text",
										success : callback

									});

						}

						function callback() {
							window.location.href = "${pageContext.request.contextPath}/SelectAllHanbao?f="
									+ ids+"&fid="+fid;
						}
					}); */

	/*产品-停用*/
	function member_stop(obj, id) {
		layer
				.confirm(
						'确认要下架吗？',
						function(index) {
							var trIndex;
							trIndex = $(".trr" + id).index();
							//alert(trIndex);
							$.ajax({
								url : "UpdateIdServlet",
								type : "post",
								data : {
									"table" : "${table}",
									"id" : id
								/* "trIndex":trIndex */
								},
								dataType : "text"

							});
							$(obj)
									.parents("tr")
									.find(".td-manage")
									.prepend(
											'<a style="text-decoration:none" class="btn btn-xs" onClick="member_start(this,'
													+ id
													+ ')" href="javascript:;" title="启用"><i class="icon-ok bigger-120"></i></a>');
							$(obj)
									.parents("tr")
									.find(".td-status")
									.html(
											'<span class="label label-defaunt radius">已禁用</span>');
							$(obj).remove();
							layer.msg('已禁用', {
								icon : 5,
								time : 1000
							});
						});
	}

	/*产品-启用*/
	function member_start(obj, id) {
		layer
				.confirm(
						'确认要启用吗？',
						function(index) {
							var trIndex;
							trIndex = $(".trr" + id).index();
							//alert(trIndex);
							$.ajax({
								url : "UpdateIDOpenServlet",
								type : "post",
								data : {
									"table" : "${table}",
									"id" : id
								/* "trIndex":trIndex */
								},
								dataType : "text"

							});
							$(obj)
									.parents("tr")
									.find(".td-manage")
									.prepend(
											'<a style="text-decoration:none" class="btn btn-xs btn-success" onClick="member_stop(this,'
													+ id
													+ ')" href="javascript:;" title="停用"><i class="icon-ok bigger-120"></i></a>');
							$(obj)
									.parents("tr")
									.find(".td-status")
									.html(
											'<span class="label label-success radius">已启用</span>');
							$(obj).remove();

							layer.msg('已启用!', {
								icon : 6,
								time : 1000
							});
						});
	}
	/*食物-编辑*/
	var fg = 8;
	var l = "#82af6f";
	var h = "#abbac3";
	function member_edit(id, obj) {
		//alert(id);
		$.ajax({
			url : "/UP-Pizza/ShowUpdateInfoServlet",
			type : "post",
			data : {
				"table" : "${table}",
				"load" : id
			},
			dataType : "text",
			success : callback,
			error : function() {
				alert("有错误!");
			}
		});
		function callback(jihe) {

			jihe = JSON.parse(jihe);

			console.log(jihe);

			$(".foodname").val(jihe[0].name);
			//$(".imageName").val(jihe[0].imageName);

			//$(".foodNum").val(jihe[0].foodNum);
			$(".num").val(jihe[0].saleNum);
			$(".ypriceaa").val(jihe[0].yprice);
			$(".xpriceaa").val(jihe[0].xprice);
			$(".select.foodNum").children("option").removeAttr("selected");
			$(".select.foodNum").children("option").eq((jihe[0].typeId) - 1)
					.prop("selected", "true");
			$(".infoaa").val(jihe[0].info);
			$(".tid[value=" + jihe[0].tid + "]").prop("checked", true);
			$("#img").attr("src", "Manager/UP-Index/food/" + jihe[0].imageName);
		}
		layer
				.open({
					type : 1,
					title : '修改食品信息',
					maxmin : true,
					shadeClose : false, //点击遮罩关闭层
					area : [ '800px', '' ],
					content : $('#add_menber_style'),
					btn : [ '修改', '取消' ],
					yes : function(index, layero) {
						var num = 0;
						var str = "";
						$(".add_menber input[type$='text']").each(
								function(n) {
									if ($(this).val() == "") {
										layer.msg(str += ""
												+ $(this).attr("name")
												+ "不能为空！\r\n", {
											title : '提示框',
											icon : 0,
										});
										num++;
										return false;
									}
								});

						if (num > 0) {
							return false;
						} else {

							var ide = id;
							var name = $(".foodname").val();
							var yprice = $(".ypriceaa").val();
							var xprice = $(".xpriceaa").val();
							var imageNameaa = $("#imgTxtss").val();
							var typeId = $(".foodNum").val();

							var info = $(".infoaa").val();
							var saleNum = $(".num").val();
							var tid = $(".tid:checked").val();
							$.ajax({
								url : "/UP-Pizza/UpdateInfoServlet",
								type : "post",
								data : {
									"name" : name,
									"yprice" : yprice,
									"xprice" : xprice,
									"imageNamess" : imageNameaa,
									"typeId" : typeId,
									"info" : info,
									"saleNum" : saleNum,
									"tid" : tid,
									"id" : ide,
									"table" : "${table}"

								},
								dataType : "text",
								success : bkbk
							});
							function bkbk(result) {

								if (result == "true") {
									layer.msg('修改成功！', {
										title : '提示框',
										icon : 1,
									});

									var ide = id;
									var name = $(".foodname").val();
									var yprice = $(".ypriceaa").val();
									var xprice = $(".xpriceaa").val();
									var imageName = $("#imgTxtss").val();
									//alert(imageName);
									var typeId = $(".foodNum").val();
									var info = $(".infoaa").val();
									var saleNum = $(".num").val();
									var tid = $(".tid:checked").val();
									var $this = $(obj).parents("tr");
									$this.children("td").eq(2).text(name);
									$this.children("td").eq(3).text(yprice);
									$this.children("td").eq(4).text(xprice);
									$this.children("td").eq(5).children("img")
											.attr(
													"src",
													"Manager/UP-Index/food/"
															+ imageName);
									$this.children("td").eq(6).text(info);
									$this.children("td").eq(7).text(saleNum);
									//$this.children("td").eq(10).text(tid);

									if (tid == 1) {
										$this.children("td").eq(10).children(
												"span").attr('style',
												'display: inline !important;');
										$this.children("td").eq(10).children(
												"span").remove();
										$this
												.children("td")
												.eq(10)
												.append(
														"<span class='label label-success radius sk'style='background-color:#82af6f!important'>已启用</span>");
										$this.children("td").eq(11).children(
												"a").eq(0).remove();
										$this
												.children("td")
												.eq(11)
												.prepend(
														"<a onclick='member_stop(this,80)' href='javascript:;' title='启用' style='background-color:#82af6f!important' class='btn btn-xs btn-success'><i class='icon-ok bigger-120'></i></a>");
										fg = 11;
									} else if (tid == 2) {
										$this.children("td").eq(10).children(
												"span").attr('style',
												'display: inline !important;');
										/* $this.children("td").eq(9).children("span").addClass("t"); */
										$this.children("td").eq(10).children(
												"span").remove();
										$this
												.children("td")
												.eq(10)
												.append(
														"<span class='label label-success radius sk'style='background-color: rgb(171, 186, 195)!important;'>已禁用</span>");
										$this.children("td").eq(11).children(
												"a").eq(0).remove();
										$this
												.children("td")
												.eq(11)
												.prepend(
														"<a onclick='member_stop(this,80)' href='javascript:;' title='禁用' style='background-color:rgb(171, 186, 195)!important' class='btn btn-xs btn-success'><i class='icon-ok bigger-120'></i></a>");
										fg = 22;
									}

								}
								layer.close(index);
							}

						}
					}
				});
	}

	/*产品-删除*/
	function member_del(obj, sid) {
		layer.confirm('确认要删除吗？', function(index) {
			var trIndex;
			trIndex = $(".trr" + sid).index();
			function del() {
				$("#f" + sid).parents("tr").remove();
			}
			$.ajax({
				url : "DelProductsListServlet",
				type : "post",
				data : {
					"table" : "${table}",
					"id" : sid
				},
				dataType : "text",
				success : del,
				error : function() {

				}
			});
			function del(result) {
				if (result == "false") {
					layer.msg("当前有正在交易的订单，无法删除！\r\n", {
						title : '提示框',
						icon : 0,
					});
				} else {
					$(obj).parents("tr").remove();
					layer.msg('已删除!', {
						icon : 1,
						time : 1000
					});
				}

			}

		});
	}

	//批量删除

	$(".btn-danger").click(function() {

		if ($(".checkst:checked").length == 0) {
			layer.msg("至少要选择一个商品！");
			return;
		}

		var flag = confirm('确定要删除吗?');

		if (flag) {

			var arr = new Array();

			var $check = $(".checkst:checked");
			$($check).each(function(i) {
				arr[i] = $(this).parents("tbody tr").find("td:eq(1)").text();
				console.log(arr[i]);
			});
			//var $allcheck = $(".allcheck .checkst[check='checked']");
			/* if ($(".allcheck:checked")) {
				$($allcheck).each(
						function(i) {
							arr[i] = $(this).parents.parents.parents.next("tbody tr").find(
									"td:eq(1)").text();
									alert($(this).parents.parents.parents.html());
							console.log(arr[i]);
						});
			} */
			$.ajax({
				url : "/UP-Pizza/CusdeletesFoodServlet",
				type : "post",
				data : {
					"table" : "${table}",
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

				}
			}
			;
		}

	});

	/*点击时将所选id传入servlet*/
	$("#treeDemo")
			.on(
					"click",
					"#treeDemo_1_a",
					function(id) {
						var id = $(".level0 a").index(this);
						//alert(id);

						window.location.href = "${pageContext.request.contextPath}/ShowFoodServlet?fidsd="
								+ id;

					});

	//面包屑返回值
	var index = parent.layer.getFrameIndex(window.name);
	parent.layer.iframeAuto(index);
	$('.Order_form').on('click', function() {
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
