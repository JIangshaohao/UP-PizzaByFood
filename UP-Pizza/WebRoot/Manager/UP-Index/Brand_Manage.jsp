<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="renderer" content="webkit|ie-comp|ie-stand">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<meta name="viewport"
			content="width=device-width,initial-scale=1,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" />
		<meta http-equiv="Cache-Control" content="no-siteapp" />
		<link href="assets/css/bootstrap.min.css" rel="stylesheet" />
		<link rel="stylesheet" href="css/style.css" />
		<link rel="stylesheet" href="assets/css/ace.min.css" />
		<link rel="stylesheet" href="assets/css/font-awesome.min.css" />
		<link href="Widget/icheck/icheck.css" rel="stylesheet" type="text/css" />
		<!--[if IE 7]>
		  <link rel="stylesheet" href="assets/css/font-awesome-ie7.min.css" />
		<![endif]-->
		<!--[if lte IE 8]>
		  <link rel="stylesheet" href="assets/css/ace-ie.min.css" />
		<![endif]-->
		<script src="js/jquery-1.9.1.min.js"></script>
		<script src="assets/js/bootstrap.min.js"></script>
		<script src="assets/js/typeahead-bs2.min.js"></script>

		<!-- page specific plugin scripts -->
		<script src="assets/js/jquery.dataTables.min.js"></script>
		<script src="assets/js/jquery.dataTables.bootstrap.js"></script>
		<script type="text/javascript" src="js/H-ui.js"></script>
		<script type="text/javascript" src="js/H-ui.admin.js"></script>
		<script src="assets/layer/layer.js" type="text/javascript"></script>
		<script src="assets/laydate/laydate.js" type="text/javascript"></script>
		<script src="assets/dist/echarts.js"></script>
		<script src="js/lrtk.js" type="text/javascript"></script>
		<title>品牌管理</title>
</head>

<body>
	<div class="page-content clearfix">
		<div id="brand_style">
			<!-- <div class="search_style">

				<ul class="search_content clearfix">
					<li><label class="l_f">商品名称</label><input name="" type="text"
						class="text_add" placeholder="输入商品名称" style=" width:250px" /></li>
					<li><label class="l_f">添加时间</label><input
						class="inline laydate-icon" id="start" style=" margin-left:10px;"></li>
					<li><select name="" class="text_add"><option
								value="1">成功交易</option>
							<option value="2">失败交易</option></select></li>
					<li style="width:90px;"><button type="button"
							class="btn_search">
							<i class="icon-search"></i>查询
						</button></li>
				</ul>
			</div> -->

			<!--品牌展示-->
			<div class="brand_list clearfix" id="category">
				<div class="show_btn" id="rightArrow">
					<span></span>
				</div>
				<div class="chart_style side_content">
					<div class="side_title">
						<a title="隐藏" class="close_btn"><span></span></a>
					</div>
					<div id="main" style="height:300px;" class="side_list"></div>
				</div>
				<!--品牌列表-->
				<div class="table_menu_list">
					<table class="table table-striped table-bordered table-hover"
						id="sample-table">
						<thead>
							<tr>
								<th width="25px"><label><input type="checkbox"
										class="ace"><span class="lbl"></span></label></th>
								<th width="80px">ID</th>
								<th width="130px">图片Logo</th>
								<th width="130px">图片Face</th>
								<th width="120px">名称</th>
								<th width="350px">描述</th>
								<th width="200px">操作</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${list}" var="f" varStatus="vs">
								<tr>
									<td width="25px"><label><input type="checkbox"
											class="ace"><span class="lbl"></span></label></td>
									<td width="80px">${f.id}</td>
									<td><img src="food/${f.picture}" width="130" /></td>
									<td><img src="food/${f.face}" width="130" /></td>
									<td><a href="javascript:void()" name="Brand_detailed.jsp"
										style="cursor:pointer" class="text-primary brond_name"
										onclick="generateOrders('561');" title="${f.title}">${f.title}</a></td>
									<td class="text-l">${f.info}</td>

									<td class="td-manage"><a title="编辑"
										onclick="member_edit(${f.id},this)" href="javascript:;"
										class="btn btn-xs btn-info"><i
											class="icon-edit bigger-120"></i></a></td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
			</div>

		</div>
	</div>
	<!--添加用户图层-->
	<div class="add_menber" id="add_menber_style" style="display:none">

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

			<li class="adderss" style="position: relative;left: 300px;bottom: -50px;"><label class="label_name">说明：</label><span
				class="add_name"><input name="imageInfo" type="text"
					class="text_add imageInfo" style=" width:350px" value=""
					id="imageInfo" /></span>
				<div class="prompt r_f"></div></li>

		</ul>
	</div>
</body>
</html>
<script>
	//当文件域的值发生改变时，重新获取图片显示
	function getImages() {
		//获取到上传图片的绝对路径
		var imgfile = document.getElementById("showFace").value;
		//通过字符串的截取获取到图片名
		var img = imgfile.substring(imgfile.lastIndexOf("\\") + 1);
		//及时现实到img标签中
		document.getElementById("Face").src = "/UP-Pizza/Manager/UP-Index/food/"
				+ img;
		//将图片的名称隐藏到隐藏域的文本框
		document.getElementById("HiddenFace").value = img;
	}
</script>
<script>
	//当文件域的值发生改变时，重新获取图片显示
	function getImage() {
		//获取到上传图片的绝对路径
		var imgfile = document.getElementById("imagefiles").value;
		//通过字符串的截取获取到图片名
		var img = imgfile.substring(imgfile.lastIndexOf("\\") + 1);
		//及时现实到img标签中
		document.getElementById("imgs").src = "/UP-Pizza/Manager/UP-Index/food/"
				+ img;
		//将图片的名称隐藏到隐藏域的文本框
		document.getElementById("imagename").value = img;
	}
</script>
<!-- <script>
	$(function() {
		$("#imagefiles").change(function(e) {
			//得到事件的目标节点，既input元素
			var imgBox = e.target;
			getImg(imgBox);
			$("#imagefiles").change = null;
		});
		function getImg(tag) {
			//第一张input选择的图片的一些参数
			var file = tag.files[0];
			var reader = new FileReader();
			//将文件以Data URL形式读入页面
			reader.readAsDataURL(file);
			reader.onload = function() {
				//result结果为 DataURL
				var imgSrc = this.result;
				//将图片显示出来
				$("#imgs").attr("src", imgSrc);
			}
		}
	})
</script> -->
<script>
	/*食物-编辑*/
	var fg = 8;
	var l = "#82af6f";
	var h = "#abbac3";
	function member_edit(ids, obj) {
		//alert(ids);
		$.ajax({
			url : "/UP-Pizza/ShowMeausInfoServlet",
			type : "post",
			data : {
				"card" : ids
			},
			dataType : "text",
			success : showinfo,
			error : function() {
				alert("有错误!");
			}
		});
		function showinfo(jihes) {

			jihe = JSON.parse(jihes);
			console.log(jihe);
			$(".title").val(jihe[1].title);
			$(".imageInfo").val(jihe[1].info);
			$("#imgs").attr("src", "food/" + jihe[1].picture);
			$("#Face").attr("src", "food/" + jihe[1].face);
		}
		layer.open({
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
								layer.msg(str += "" + $(this).attr("name")
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
					var idea = ids;
					var imagename = $(".imagename").val();
					var title = $(".title").val();
					var info = $(".imageInfo").val();
					var face = $(".HiddenFace").val();
					$.ajax({
						url : "/UP-Pizza/UpdateMeausInfoServlet",
						type : "post",
						data : {
							"imagename" : imagename,
							"title" : title,
							"info" : info,
							"face" : face,
							"id" : idea

						},
						dataType : "text",
						success : up
					});
					function up(result) {
						if (result == "true") {
							layer.msg('修改成功！', {
								title : '提示框',
								icon : 1,

							});
							var imagenames = $(".imagename").val();
							var titles = $(".title").val();
							var infos = $(".imageInfo").val();
							var faces = $(".HiddenFace").val();
							var $this = $(obj).parents("tr");
							$this.children("td").eq(2).children("img").attr(
									"src",
									"/UP-Pizza/Manager/UP-Index/food/"
											+ imagenames);
							$this.children("td").eq(3).children("img").attr(
									"src",
									"/UP-Pizza/Manager/UP-Index/food/"
											+ faces);
							$this.children("td").eq(4).text(titles);
							$this.children("td").eq(5).text(infos);
							/* if (tid == 1) {
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
								$this.children("td").eq(9).children(
										"span").addClass("t");
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
							} */

						}
						layer.close(index);
					}

				}
			}
		});
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
				"aTargets" : [ 0, 1, 3, 4, 5, 6, 8, 9 ]
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

	//初始化宽度、高度  
	$(".chart_style").height($(window).height() - 215);
	$(".table_menu_list").height($(window).height() - 215);
	$(".table_menu_list ").width($(window).width() - 440);
	//当文档窗口发生改变时 触发  
	$(window).resize(function() {
		$(".chart_style").height($(window).height() - 215);
		$(".table_menu_list").height($(window).height() - 215);
		$(".table_menu_list").width($(window).width() - 440);
	});
	//图层隐藏限时参数		 
	$(function() {
		$("#category").fix({
			float : 'left',
			//minStatue : true,
			skin : 'green',
			durationTime : false,
			stylewidth : '400',
			spacingw : 30,//设置隐藏时的距离
			spacingh : 440,//设置显示时间距
		});
	});
	//面包屑返回值
	var index = parent.layer.getFrameIndex(window.name);
	parent.layer.iframeAuto(index);
	$('.Order_form ,.brond_name').on('click', function() {
		var cname = $(this).attr("title");
		var cnames = parent.$('.Current_page').html();
		var herf = parent.$("#iframe").attr("src");
		parent.$('#parentIframe span').html(cname);
		parent.$('#parentIframe').css("display", "inline-block");
		parent.$('.Current_page').attr("name", herf).css({
			"color" : "#4c8fbd",
			"cursor" : "pointer"
		});
		//parent.$('.Current_page')("<a href='javascript:void(0)' name="+herf+">" + cnames + "</a>");
		parent.layer.close(index);

	});
	function generateOrders(id) {
		window.location.href = "Brand_detailed?=" + id;
	};
	/*品牌-查看*/
	function member_show(title, url, id, w, h) {
		layer_show(title, url, w, h);
	}
	/*品牌-停用*/
	/* 	function member_stop(obj, id) {
	 layer
	 .confirm(
	 '确认要停用吗？',
	 function(index) {
	 $(obj)
	 .parents("tr")
	 .find(".td-manage")
	 .prepend(
	 '<a style="text-decoration:none" class="btn btn-xs " onClick="member_start(this,id)" href="javascript:;" title="启用"><i class="icon-ok bigger-120"></i></a>');
	 $(obj)
	 .parents("tr")
	 .find(".td-status")
	 .html(
	 '<span class="label label-defaunt radius">已停用</span>');
	 $(obj).remove();
	 layer.msg('已停用!', {
	 icon : 5,
	 time : 1000
	 });
	 });
	 } */

	/*用户-启用*/
	/* 	function member_start(obj, id) {
	 layer
	 .confirm(
	 '确认要启用吗？',
	 function(index) {
	 $(obj)
	 .parents("tr")
	 .find(".td-manage")
	 .prepend(
	 '<a style="text-decoration:none" class="btn btn-xs btn-success" onClick="member_stop(this,id)" href="javascript:;" title="停用"><i class="icon-ok bigger-120"></i></a>');
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
	 } */

	/*品牌-删除*/
	/* function member_del(obj, id) {
		layer.confirm('确认要删除吗？', function(index) {
			$(obj).parents("tr").remove();
			layer.msg('已删除!', {
				icon : 1,
				time : 1000
			});
		});
	}
	laydate({
		elem : '#start',
		event : 'focus'
	}); */
</script>
<script type="text/javascript">
	require.config({
		paths : {
			echarts : './assets/dist'
		}
	});
	require([ 'echarts', 'echarts/chart/pie', // 按需加载所需图表，如需动态类型切换功能，别忘了同时加载相应图表
	'echarts/chart/funnel' ], function(ec) {
		var myChart = ec.init(document.getElementById('main'));

		option = {
			title : {
				text : '国内国外品牌比例',
				subtext : '',
				x : 'center'
			},
			tooltip : {
				trigger : 'item',
				formatter : "{a} <br/>{b} : {c} ({d}%)"
			},
			legend : {
				orient : 'vertical',
				x : 'left',
				data : [ '国内品牌', '国外品牌' ]
			},
			toolbox : {
				show : false,
				feature : {
					mark : {
						show : false
					},
					dataView : {
						show : false,
						readOnly : false
					},
					magicType : {
						show : true,
						type : [ 'pie', 'funnel' ],
						option : {
							funnel : {
								x : '25%',
								width : '50%',
								funnelAlign : 'left',
								max : 545
							}
						}
					},
					restore : {
						show : true
					},
					saveAsImage : {
						show : true
					}
				}
			},
			calculable : true,
			series : [ {
				name : '品牌数量',
				type : 'pie',
				radius : '55%',
				center : [ '50%', '60%' ],
				data : [ {
					value : 335,
					name : '国内品牌'
				}, {
					value : 210,
					name : '国外品牌'
				},

				]
			} ]
		};
		myChart.setOption(option);
	});
</script>