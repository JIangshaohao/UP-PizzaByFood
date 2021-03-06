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

<title>????????????</title>
</head>
<body>
	<div class="page-content clearfix">
		<div id="products_style">
			<!-- <div class="search_style">

				<ul class="search_content clearfix">
					<li><label class="l_f">????????????</label><input name="" type="text"
						class="text_add" placeholder="??????????????????" style=" width:250px" /></li>
					<li><label class="l_f">????????????</label><input
						class="inline laydate-icon" id="start" style=" margin-left:10px;"></li>
					<li style="width:90px;"><button type="button"
							class="btn_search">
							<i class="icon-search"></i>??????
						</button></li>
				</ul>
			</div> -->
			<%
				//????????????????????????
										Product_SortDao ps = new Product_SortDao();
										int counta=ps.SelectAllFood();
										request.setAttribute("counta", counta);
			%>
			<div class="border clearfix">
				<span class="l_f"> <a href="Manager/UP-Index/picture-add.jsp"
					title="????????????" class="btn btn-warning Order_form"><i
						class="icon-plus"></i>????????????</a> <a href="javascript:ovid()"
					class="btn btn-danger"><i class="icon-trash"></i>????????????</a><a href="javascript:ovid()"
					class="btn btn-success"  onclick="printOut()"><i class="icon-plus"></i>?????????PDF</a>
				</span> <span class="r_f">??????<b>${counta}</b>&nbsp;&nbsp;?????????
				</span>
			</div>
			<!--??????????????????-->
			<div class="h_products_list clearfix" id="products_list">
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
								<th width="80px">????????????</th>
								<th width="250px">????????????</th>
								<th width="100px">?????????</th>
								<th width="100px">??????</th>
								<th width="100px">??????</th>
								<th width="100px">??????</th>
								<th width="100px">??????</th>
								<th width="200px">????????????</th>
								<th width="80px">????????????</th>
								<th width="70px">??????</th>
								<th width="200px">??????</th>
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
									<td class="text-l">??????</td>
									<c:choose>
										<c:when test="${f.tid==1}">
											<td class="td-status"><span
												class="label label-success radius">?????????</span></td>
											<td class="td-manage"><a
												onClick="member_stop(this,${f.id})" href="javascript:;"
												title="??????" id="fa${f.id}" class="btn btn-xs btn-success"><i
													class="icon-ok bigger-120"></i></a> <a title="??????"
												onclick="member_edit(${f.id},this)" href="javascript:;"
												class="btn btn-xs btn-info"><i
													class="icon-edit bigger-120"></i></a> <a title="??????"
												href="javascript:;" onclick="member_del(this,${f.id})"
												id="f${f.id}" class="btn btn-xs btn-warning"><i
													class="icon-trash  bigger-120"></i></a></td>
										</c:when>
										<c:otherwise>
											<td class="td-status"><span class="label  radius">?????????</span></td>
											<td class="td-manage"><a
												onClick="member_start(this,${f.id})" href="javascript:;"
												title="??????" id="fa${f.id}" class="btn btn-xs"><i
													class="icon-ok bigger-120"></i></a> <a title="??????"
												onclick="member_edit(${f.id},this)" href="javascript:;"
												class="btn btn-xs btn-info"><i
													class="icon-edit bigger-120"></i></a> <a title="??????"
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
		//??????????????????
		//Product_SortDao ps = new Product_SortDao();
		ArrayList<Type> types = ps.selectAllType();
		Type p=new Type();
	%>
	<!--??????????????????-->
	<div class="add_menber" id="add_menber_style" style="display:none">

		<ul class=" page-content">
			<li><label class="label_name">???&nbsp;&nbsp;??? &nbsp;??????</label><span
				class="add_name"><input value="" name="picture" type="text"
					class="text_add foodname" /></span>
				<div class="prompt r_f"></div></li>
			<li><label class="label_name">??????Logo???</label><span
				class="add_name"><input type="file" id="imagefile"
					onchange="getImage()" /> <br /> <img id="img"
					src="Manager/UP-Index/food/" width="120px" height="100px" /> <input
					type="hidden" id="imgTxtss" name="imageName" class="imgnamesss" /></span>
				<div class="prompt r_f"></div></li>

			<li><label class="label_name">???????????????</label>&nbsp;&nbsp;&nbsp;&nbsp;
				<select class="select foodNum" name="foodNum">
					<!-- ???????????????????????????????????? -->
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
				class="label_name">???????????????</label><span class="add_name"><input
					name="" type="text" class="text_add num" value="" /></span>
				<div class="prompt r_f"></div></li>
			<li><label class="label_name">?????????</label><span class="add_name"><input
					name="" value="" type="text" class="text_add ypriceaa" /></span>
				<div class="prompt r_f"></div></li>
			<li style="position: relative;top:-55px;right: 210px; "><label
				class="label_name">?????????</label><span class="add_name"><input
					name="" value="" type="text" class="text_add xpriceaa" /></span>
				<div class="prompt r_f"></div></li>
			<li class="adderss"><label class="label_name">?????????</label><span
				class="add_name"><input name="info" type="text"
					class="text_add infoaa" style=" width:350px" value="" /></span>
				<div class="prompt r_f"></div></li>
			<li><label class="label_name">???&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;??????</label><span
				class="add_name"> <label><input
						name="form-field-radio1" value="1" type="radio" checked="checked"
						class="ace tid"><span class="lbl">??????</span></label>&nbsp;&nbsp;&nbsp;
					<label><input name="form-field-radio1" value="2"
						type="radio" class="ace tid"><span class="lbl">??????</span></label></span>
				<div class="prompt r_f"></div></li>
		</ul>
	</div>
</body>
</html>
<script>
	//????????????????????????????????????????????????????????????
	function getImage() {
		//????????????????????????????????????
		var imgfile = document.getElementById("imagefile").value;
		//??????????????????????????????????????????
		var img = imgfile.substring(imgfile.lastIndexOf("\\") + 1);
		//???????????????img?????????
		document.getElementById("img").src = "Manager/UP-Index/food/" + img;
		//????????????????????????????????????????????????
		document.getElementById("imgTxtss").value = img;
	}
</script>
<script>
	jQuery(function($) {
		var oTable1 = $('#sample-table').dataTable({
			"aaSorting" : [ [ 1, "desc" ] ],//?????????????????????
			"bStateSave" : true,//????????????
			"aoColumnDefs" : [
			//{"bVisible": false, "aTargets": [ 3 ]} //????????????????????????
			{
				"orderable" : false,
				"aTargets" : [ 0, 2, 3, 4, 5, 8, 9 ]
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
			spacingw : 30,//????????????????????????
			spacingh : 260,//?????????????????????
		});
	});
</script>
<script type="text/javascript">
	//????????????????????????  
	$(".widget-box").height($(window).height() - 215);
	$(".table_menu_list").width($(window).width() - 260);
	$(".table_menu_list").height($(window).height() - 215);
	//?????????????????????????????? ??????  
	$(window).resize(function() {
		$(".widget-box").height($(window).height() - 215);
		$(".table_menu_list").width($(window).width() - 260);
		$(".table_menu_list").height($(window).height() - 215);
	})

	/*******?????????*******/
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
		name : "??????????????????",
		open : true
	}, {
		id : 11,
		pId : 1,
		name : "??????"
	}, {
		id : 111,
		pId : 11,
		name : "?????????"
	}, {
		id : 112,
		pId : 11,
		name : "?????????"
	}, {
		id : 12,
		pId : 1,
		name : "??????"
	}, {
		id : 121,
		pId : 12,
		name : "????????? "
	}, {
		id : 122,
		pId : 12,
		name : "????????? "
	}, {
		id : 13,
		pId : 1,
		name : "??????"
	}, {
		id : 131,
		pId : 13,
		name : "????????? "
	}, {
		id : 132,
		pId : 13,
		name : "????????? "
	}, {
		id : 14,
		pId : 1,
		name : "?????????"
	}, {
		id : 141,
		pId : 14,
		name : "????????? "
	}, {
		id : 142,
		pId : 14,
		name : "????????? "
	}, {
		id : 15,
		pId : 1,
		name : "?????? "
	}, {
		id : 151,
		pId : 15,
		name : "????????? "
	}, {
		id : 152,
		pId : 15,
		name : "????????? "
	}, {
		id : 16,
		pId : 1,
		name : "??????"
	}, {
		id : 161,
		pId : 16,
		name : "????????? "
	}, {
		id : 162,
		pId : 16,
		name : "????????? "
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

	/*??????????????????id??????servlet*/
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

	/*????????????????????????*/
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

	/*??????-??????*/
	function member_stop(obj, id) {
		layer
				.confirm(
						'?????????????????????',
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
													+ ')" href="javascript:;" title="??????"><i class="icon-ok bigger-120"></i></a>');
							$(obj)
									.parents("tr")
									.find(".td-status")
									.html(
											'<span class="label label-defaunt radius">?????????</span>');
							$(obj).remove();
							layer.msg('?????????', {
								icon : 5,
								time : 1000
							});
						});
	}

	/*??????-??????*/
	function member_start(obj, id) {
		layer
				.confirm(
						'?????????????????????',
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
													+ ')" href="javascript:;" title="??????"><i class="icon-ok bigger-120"></i></a>');
							$(obj)
									.parents("tr")
									.find(".td-status")
									.html(
											'<span class="label label-success radius">?????????</span>');
							$(obj).remove();

							layer.msg('?????????!', {
								icon : 6,
								time : 1000
							});
						});
	}
	/*??????-??????*/
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
				alert("?????????!");
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
					title : '??????????????????',
					maxmin : true,
					shadeClose : false, //?????????????????????
					area : [ '800px', '' ],
					content : $('#add_menber_style'),
					btn : [ '??????', '??????' ],
					yes : function(index, layero) {
						var num = 0;
						var str = "";
						$(".add_menber input[type$='text']").each(
								function(n) {
									if ($(this).val() == "") {
										layer.msg(str += ""
												+ $(this).attr("name")
												+ "???????????????\r\n", {
											title : '?????????',
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
									layer.msg('???????????????', {
										title : '?????????',
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
														"<span class='label label-success radius sk'style='background-color:#82af6f!important'>?????????</span>");
										$this.children("td").eq(11).children(
												"a").eq(0).remove();
										$this
												.children("td")
												.eq(11)
												.prepend(
														"<a onclick='member_stop(this,80)' href='javascript:;' title='??????' style='background-color:#82af6f!important' class='btn btn-xs btn-success'><i class='icon-ok bigger-120'></i></a>");
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
														"<span class='label label-success radius sk'style='background-color: rgb(171, 186, 195)!important;'>?????????</span>");
										$this.children("td").eq(11).children(
												"a").eq(0).remove();
										$this
												.children("td")
												.eq(11)
												.prepend(
														"<a onclick='member_stop(this,80)' href='javascript:;' title='??????' style='background-color:rgb(171, 186, 195)!important' class='btn btn-xs btn-success'><i class='icon-ok bigger-120'></i></a>");
										fg = 22;
									}

								}
								layer.close(index);
							}

						}
					}
				});
	}

	/*??????-??????*/
	function member_del(obj, sid) {
		layer.confirm('?????????????????????', function(index) {
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
					layer.msg("????????????????????????????????????????????????\r\n", {
						title : '?????????',
						icon : 0,
					});
				} else {
					$(obj).parents("tr").remove();
					layer.msg('?????????!', {
						icon : 1,
						time : 1000
					});
				}

			}

		});
	}

	//????????????

	$(".btn-danger").click(function() {

		if ($(".checkst:checked").length == 0) {
			layer.msg("??????????????????????????????");
			return;
		}

		var flag = confirm('???????????????????');

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

	/*??????????????????id??????servlet*/
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

	//??????????????????
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
