<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="assets/css/bootstrap.min.css" rel="stylesheet" />
<link rel="stylesheet" href="css/style.css" />
<link href="assets/css/codemirror.css" rel="stylesheet">
	<link rel="stylesheet" href="assets/css/ace.min.css" />
	<link rel="stylesheet" href="assets/css/font-awesome.min.css" />
	<link rel="stylesheet" href="css/customer.css" />
	<!--[if IE 7]>
		  <link rel="stylesheet" href="assets/css/font-awesome-ie7.min.css" />
		<![endif]-->
	<!--[if lte IE 8]>
		  <link rel="stylesheet" href="assets/css/ace-ie.min.css" />
		<![endif]-->
	<script src="assets/js/jquery.min.js"></script>

	<!-- <![endif]-->
	/
	<!--[if IE]>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
<![endif]-->

	<!--[if !IE]> -->

	<script type="text/javascript">
		window.jQuery
				|| document
						.write("<script src='assets/js/jquery-2.0.3.min.js'>"
								+ "<"+"/script>");
	</script>

	<!-- <![endif]-->

	<!--[if IE]>
<script type="text/javascript">
 window.jQuery || document.write("<script src='assets/js/jquery-1.10.2.min.js'>"+"<"+"/script>");
</script>
<![endif]-->

	<script type="text/javascript">
		if ("ontouchend" in document)
			document
					.write("<script src='assets/js/jquery.mobile.custom.min.js'>"
							+ "<"+"/script>");
	</script>
	<script src="assets/js/bootstrap.min.js"></script>
	<script src="assets/js/typeahead-bs2.min.js"></script>
	<!-- page specific plugin scripts -->
	<!-- <script src="assets/js/jquery.dataTables.min.js"></script> -->
	<script src="assets/js/jquery.dataTables.bootstrap.js"></script>
	<script type="text/javascript" src="js/H-ui.js"></script>
	<script type="text/javascript" src="js/H-ui.admin.js"></script>
	<script src="assets/layer/layer.js" type="text/javascript"></script>
	<script src="assets/laydate/laydate.js" type="text/javascript"></script>
	<title>用户列表</title>
	<style>
			#show_list{
	display: flex;
    padding: 0 0 6px 0;
    border: 1px solid #fe6b00;
    border-top: none;
    border-bottom-right-radius: 4px;
    border-bottom-left-radius: 4px;
    transform: translateY(-2px);
    background: #fff;
    position: absolute;
    z-index: 1000;
    width:400px;
   	height:170px;
   	left:80px;
   	top:70px;
   	display:none;
		}
	</style>
</head>

<body>
	<div class="page-content clearfix">
		<div id="Member_Ratings">
			<div class="d_Confirm_Order_style">
				<div class="search_style">

					<ul class="search_content clearfix">
						<li><label class="l_f">会员名称</label><input name="" type="text"
							class="text_add likec" autocomplete ="off" id="likec" placeholder="输入会员名称、电话、邮箱" style=" width:400px" /></li>
						<li><label class="l_f">添加时间</label><input
							class="inline laydate-icon" id="start" style=" margin-left:10px;"></li>
						<li style="width:90px;"><button type="button"
								class="btn_search">
								<i class="icon-search searcht"></i>查询
							</button></li>
					</ul>
				</div>
				<div id="show_list">
					<ul></ul>
				</div>
				<!---->
				<div class="border clearfix">
					<span class="l_f"> <!-- <a href="javascript:ovid()"
						id="member_add" class="btn btn-warning"><i class="icon-plus"></i>添加用户</a> -->
						<a href="javascript:ovid()" class="btn btn-danger"><i
							class="icon-trash deletes"></i>批量删除</a>
					</span> <span class="r_f">共：<b>${count}</b>条
					</span>
				</div>
				<div class="col-sm-6">
					<div class="dataTables_length" id="sample-table_length">
						<label>每页显示条数: <select name="sample-table_length"
							aria-controls="sample-table" class="itemselect"><option
									value="5">5</option>
								<option value="20">20</option>
								<option value="40">40</option>
								<option value="100">100</option></select></label>
					</div>
				</div>
				<div class="col-sm-6">
					<div id="sample-table_filter" class="dataTables_filter">
						<label>搜索:<input type="search" class="" id="search"
							placeholder="" aria-controls="sample-table"></label>
					</div>
				</div>

				<!---->
				
				<div class="table_menu_list">
					<table class="table table-striped table-bordered table-hover"
						id="sample-table">
						<thead>
							<tr>
								<th width="25"><label><input type="checkbox"
										class="ace"><span class="lbl"></span></label></th>
								<th width="80">ID</th>
								<th width="100">用户名</th>
								<th width="80">性别</th>
								<th width="120">手机</th>
								<th width="150">邮箱</th>
								<th width="">地址</th>
								<th width="180">加入时间</th>
								<th width="100">等级</th>
								<th width="70">状态</th>
								<th width="250">操作</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${custList}" var="f">
								<tr>
									<td><label><input type="checkbox"
											class="ace checkst"><span class="lbl"></span></label></td>
									<td>${f.id}</td>
									<td><u style="cursor:pointer;" class="text-primary"
										onclick="member_show('${f.userName}','member-show.jsp','10001','500','400')">${f.userName}</u></td>
									<td>${f.sex}</td>
									<td>${f.tel}</td>
									<td>${f.email}</td>
									<td class="text-l">${f.address}</td>
									<td>${f.time}</td>

									<td>${f.cvid==1?'普通用户':'会员用户'}</td>
									<c:choose>
										<c:when test="${f.tid==1}">
											<td class="td-status"><span
												class="label label-success radius sk"
												style="background-color:#82af6f;">已启用</td>
											<td class="td-manage"><a
												onClick="member_stop(this,'${f.id}')" href="javascript:;"
												title="停用" class="btn btn-xs btn-success"><i
													class="icon-ok bigger-120"></i></a> <a title="编辑"
												onclick="member_edit('${f.id}',this)" href="javascript:;"
												class="btn btn-xs btn-info"><i
													class="icon-edit bigger-120"></i></a> <a title="删除"
												href="javascript:;" onclick="member_del(this,'${f.id}')"
												class="btn btn-xs btn-warning"><i
													class="icon-trash  bigger-120"></i></a></td>
										</c:when>
										<c:otherwise>
											<td class="td-status"><span class="label  radius yk">已禁用</td>
											<td class="td-manage"><a
												onClick="member_start(this,'${f.id}')" href="javascript:;"
												title="停用" class="btn btn-xs "><i
													class="icon-ok bigger-120"></i></a> <a title="编辑"
												onclick="member_edit('${f.id}',this)" href="javascript:;"
												class="btn btn-xs btn-info"><i
													class="icon-edit bigger-120"></i></a> <a title="删除"
												href="javascript:;" onclick="member_del(this,'${f.id}')"
												class="btn btn-xs btn-warning"><i
													class="icon-trash  bigger-120"></i></a></td>
										</c:otherwise>
									</c:choose>

									<%-- <td class="td-status"><span
											class="label label-success radius sk" style="background-color:#82af6f;">已启用</td>
											<td class="td-manage"><a
										onClick="member_stop(this,'${f.id}')" href="javascript:;"
										title="停用" class="btn btn-xs btn-success"><i
											class="icon-ok bigger-120"></i></a> <a title="编辑"
										onclick="member_edit('${f.id}',this)" href="javascript:;"
										class="btn btn-xs btn-info"><i
											class="icon-edit bigger-120"></i></a> <a title="删除"
										href="javascript:;" onclick="member_del(this,'${f.id}')"
										class="btn btn-xs btn-warning"><i
											class="icon-trash  bigger-120"></i></a></td> --%>

								</tr>
							</c:forEach>
						</tbody>
					</table>
					<div class="rows">
						<div class="col-sm-6">
							<div class="dataTables_info" id="sample-table_info" role="status"
								aria-live="polite">第 ${pageNum}页 /
								第${pageCount}页，共${count}条数据</div>
						</div>
						<div class="col-sh-6">
							<div class="dataTables_paginate paging_bootstrap"
								id="sample-table_paginate">
								<ul class="pagination">
									<li class="next disabled xyy"><a
										href="/UP-Pizza/CustPageServlet?pageSize=${pageSize}&index=${index}&pageNum=1"
										style="color:#000000;cursor: default;";>首页</a></li>
									<c:choose>
										<c:when test="${pageNum==1}">
											<li class="prev disabled syy"><a
												style="color:#DDD;cursor: not-allowed">上一页</a></li>
										</c:when>
										<c:otherwise>
											<li class="next disabled xyy"><a
												href="/UP-Pizza/CustPageServlet?pageSize=${pageSize}&index=${index}&pageNum=${pageNum-1}"
												style="color:#000000;cursor: default;";>上一页</a></li>
										</c:otherwise>
									</c:choose>

									<%-- <c:forEach begin="${pageNum}" end="${pageCount}" var="i" varStatus="x">
										<li class="active">
											<a id="acolor${i}" href="/UP-Pizza/custPageServlet?pageSize=${pageSize}&index=${index}&pageNum=${i}">${i}</a>
										</li>
									</c:forEach> --%>



									<%--中间页--%>
									<%--显示6页中间页[begin=起始页,end=最大页]--%>
									<%--总页数没有6页--%>
									<c:choose>
										<c:when test="${pageCount <= 6}">
											<c:set var="begin" value="1" />
											<c:set var="end" value="${pageCount}" />
										</c:when>
										<%--页数超过了6页--%>
										<c:otherwise>
											<c:set var="begin" value="${pageNum - 1}" />
											<c:set var="end" value="${pageNum + 3}" />
											<%--如果begin减1后为0,设置起始页为1,最大页为6--%>
											<c:if test="${begin -1 <= 0}">
												<c:set var="begin" value="1" />
												<c:set var="end" value="6" />
											</c:if>
											<%--如果end超过最大页,设置起始页=最大页-5--%>
											<c:if test="${end > pageCount}">
												<c:set var="begin" value="${pageCount - 5}" />
												<c:set var="end" value="${pageCount}" />
											</c:if>
										</c:otherwise>
									</c:choose>

									<%--遍历--%>
									<c:forEach var="i" begin="${begin}" end="${end}">
										<%--当前页,选中--%>
										<c:choose>
											<c:when test="${i == pageNum}">
												<li class="active"><a href="#">${i}</a></li>
											</c:when>
											<%--不是当前页--%>
											<c:otherwise>
												<li><a
													href="/UP-Pizza/CustPageServlet?pageSize=${pageSize}&index=${index}&pageNum=${i}">${i}</a></li>
											</c:otherwise>
										</c:choose>
									</c:forEach>
									<c:choose>
										<c:when test="${pageNum==pageCount}">
											<li class="next disabled xyy"><a
												style="color:#DDD;cursor: not-allowed;">下一页</a></li>
										</c:when>
										<c:otherwise>
											<li class="next disabled xyy"><a
												href="/UP-Pizza/CustPageServlet?pageSize=${pageSize}&index=${index}&pageNum=${pageNum+1}"
												style="color:#000000;cursor: default;">下一页</a></li>
										</c:otherwise>
									</c:choose>
									<li class="next disabled xyy"><a
										href="/UP-Pizza/CustPageServlet?pageSize=${pageSize}&index=${index}&pageNum=${pageCount}"
										style="color:#000000;cursor: default;";>末页</a></li>
									<li class="next disabled tzd">跳转到:<input type="text"
										id="tzd" /></li>
								</ul>

							</div>
						</div>
					</div>
				</div>
				
				
			</div>
		</div>
	</div>
	<>
	<!--添加用户图层-->
	<div class="add_menber" id="add_menber_style" style="display:none">

		<ul class=" page-content">
			<li><label class="label_name">用&nbsp;&nbsp;户 &nbsp;名：</label><span
				class="add_name"><input value="" name="用户名" type="text"
					class="text_add u" /></span>
				<div class="prompt r_f"></div></li>
			<li><label class="label_name">真实姓名：</label><span
				class="add_name"><input name="真实姓名" type="text"
					class="text_add un" value="" /></span>
				<div class="prompt r_f"></div></li>
			<li><label class="label_name">性&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;别：</label>
				<span class="add_name"> <label> <input
						name="form-field-radio" type="radio" checked="checked" value="男"
						class="ace jkk" /><span class="lbl">男</span>
				</label>&nbsp;&nbsp;&nbsp; <label> <input name="form-field-radio"
						type="radio" value="女" class="ace jkk" /><span class="lbl">女</span>
				</label>&nbsp;&nbsp;&nbsp;
			</span>
				<div class="prompt r_f"></div></li>
			<li><label class="label_name">出生年份：</label><span
				class="add_name"><input name="出生年份" type="text"
					class="text_add bity" value="" /></span>
				<div class="prompt r_f"></div></li>
			<li><label class="label_name">移动电话：</label><span
				class="add_name"><input name="移动电话" value="" type="text"
					class="text_add tel" /></span>
				<div class="prompt r_f"></div></li>
			<li><label class="label_name">电子邮箱：</label><span
				class="add_name"><input name="电子邮箱" value="" type="text"
					class="text_add email" /></span>
				<div class="prompt r_f"></div></li>
			<li class="adderss"><label class="label_name">家庭住址：</label><span
				class="add_name"><input name="家庭住址" type="text"
					class="text_add address" style=" width:350px" value="" /></span>
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
<script src="/UP-Pizza/Manager/js/jquery-1.12.4.js"></script>
<script>
	$(function(){
		$("#show_list ul").on("mouseover",".jn_li",function(){
			$(this).css("border","0.1px solid red");
		});
		$("#show_list ul").on("mouseout",".jn_li",function(){
			$(this).css("border","none");
		});
		$(document).click(function(){
			$("#show_list").hide();
		});
		$("#show_list ul").on("click",".jn_li",function(){
				var $node = $("tbody tr:eq(0)").clone(true);
				$.ajax({url:"/UP-Pizza/AssociategeInfo",type:"post",data:{"tj":$(this).text()},dataType:"text",success:ccbbaa});
				function ccbbaa(data)
				{
				$(".col-sm-6").hide();
				var json = $.parseJSON(data);
				$("tbody tr").remove();
            	for (i in json){
            		var js = json[i];
            		$("#likec").val(js.userName);
            		$node.children("td:eq(1)").text(js.id);
            		$node.children("td:eq(2)").text(js.userName);
            		$node.children("td:eq(3)").text(js.sex);
            		$node.children("td:eq(4)").text(js.tel);
            		$node.children("td:eq(5)").text(js.email);
            		$node.children("td:eq(6)").text(js.address);
            		$node.children("td:eq(7)").text(js.birthday);
            		if(js.cvid==1){
            			$node.children("td:eq(8)").text("普通用户");
            		}
            		else{
            			$node.children("td:eq(8)").text("会员用户");
            		}
            			$node.children("td:eq(9)").attr("style","");
            		if(js.tid==1){
            			$node.children("td:eq(9)").children("span").attr("style","background-color : #82af6f!important").text("已启用");  
            			$node.children("td:eq(10)").children("a:eq(0)").attr("style","background-color : #82af6f!important"); 
            			$node.children("td:eq(10)").children("a:eq(0)").attr("onclick","member_stop(this,"+js.id+")");
            			
            		}
            		else{
            			$node.children("td:eq(9)").children("span").attr("style","background-color : #abbac3!important").text("已禁用"); 
            			$node.children("td:eq(10)").children("a:eq(0)").attr("style","background-color : #abbac3!important"); 
            			$node.children("td:eq(10)").children("a:eq(0)").attr("onclick","member_start(this,"+js.id+")");	
            				 
            		}
            		$("tbody").prepend("<tr>"+$node.html()+"</tr>");
            		//$("tbody").prepend("<tr>"+$trs.html()+"</tr>");
            		}
            		$(".rows").css("display","none");
					$(".r_f>b").text(json.length);
            									
				}
		});
	});	
</script>
<script>
	/*用户-编辑*/
	var loadtr = $("tbody tr").clone();
	var fg = 8;
	var l = "#82af6f";
	var h = "#abbac3";
	function member_edit(id, obj) {
		$.ajax({
			url : "/UP-Pizza/CusUpdateInfoServlet",
			type : "post",
			data : {
				"load" : id
			},
			dataType : "json",
			success : callback,
			error : function() {
				alert(13);
			}
		});
		function callback(j) {
			$(".u").val(j.name);
			$(".un").val(j.username);
			$(".jkk[value=" + j.sex + "]").prop("checked", true);
			$(".bity").val(j.birthday);
			$(".tel").val(j.tel);
			$(".email").val(j.email);
			$(".address").val(j.address);
			$(".tid[value=" + j.tid + "]").prop("checked", true);

		}
		//	location.href="/UP-Pizza/cusUpdateInfoServlet?id="+id;
		layer
				.open({
					type : 1,
					title : '修改用户信息',
					maxmin : true,
					shadeClose : false, //点击遮罩关闭层
					area : [ '800px', '' ],
					content : $('#add_menber_style'),
					btn : [ '提交', '取消' ],
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
							var name = $(".u").val();
							var username = $(".un").val();
							var sex = $(".jkk:checked").val();
							var bity = $(".bity").val();
							var tel = $(".tel").val();
							var email = $(".email").val();
							var address = $(".address").val();
							var tid = $(".tid:checked").val();
							$.ajax({
								url : "/UP-Pizza/CusUpdateInfoServlet",
								type : "post",
								data : {
									"name" : name,
									"username" : username,
									"sex" : sex,
									"thday" : bity,
									"tel" : tel,
									"email" : email,
									"address" : address,
									"tid" : tid,
									"id" : ide,
									"up" : "qq"
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

									var $this = $(obj).parents("tr");
									$this.children("td").eq(1).children("u")
											.text(id);
									$this.children("td").eq(2).text(username);
									$this.children("td").eq(3).text(sex);
									$this.children("td").eq(4).text(tel);
									$this.children("td").eq(5).text(email);
									$this.children("td").eq(6).text(address);

									if (tid == 1) {
										$this.children("td").eq(9).children(
												"span").attr('style',
												'display: inline !important;');
										//$this.children("td").eq(9).children("span").css("background-color","red");
										$this.children("td").eq(9).children(
												"span").remove();
										$this
												.children("td")
												.eq(9)
												.append(
														"<span class='label label-success radius sk'style='background-color:#82af6f!important'>已启用</span>");
										$this.children("td").eq(10).children(
												"a").eq(0).remove();
										$this
												.children("td")
												.eq(10)
												.prepend(
														"<a onclick='member_stop(this,"+ide+")' href='javascript:;' title='启用' style='background-color:#82af6f!important' class='btn btn-xs btn-success'><i class='icon-ok bigger-120'></i></a>");
										fg = 11;
									} else if (tid == 2) {
										$this.children("td").eq(9).children(
												"span").attr('style',
												'display: inline !important;');
										/* $this.children("td").eq(9).children("span").addClass("t"); */
										$this.children("td").eq(9).children(
												"span").remove();
										$this
												.children("td")
												.eq(9)
												.append(
														"<span class='label label-success radius sk'style='background-color: rgb(171, 186, 195)!important;'>已禁用</span>");
										$this.children("td").eq(10).children(
												"a").eq(0).remove();
										$this
												.children("td")
												.eq(10)
												.prepend(
														"<a onclick='member_stop(this,"+ide+")' href='javascript:;' title='禁用' style='background-color:rgb(171, 186, 195)!important' class='btn btn-xs btn-success'><i class='icon-ok bigger-120'></i></a>");
										fg = 22;
									}

								}
								layer.close(index);
							}

						}
					}
				});
	}

	/*用户-删除*/
	function member_del(obj, id) {
		layer
				.confirm(
						'确认要删除吗？',
						function(index) {
							var uid = id;
							$.ajax({
								url : "/UP-Pizza/CusdeleteServlet",
								type : "post",
								data : {
									"id" : uid
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
									if ($("tbody >tr").length == 0) {
										window.location.href = "/UP-Pizza/CustPageServlet?pageNum="
												+ ${pageNum-1};
									}

								} else {
									layer.msg('删除失败 请重试或与管理员联系!', {
										icon : 2,
										time : 1000
									});
								}

							}
						});
	}
	laydate({
		elem : '#start',
		event : 'focus'
	});
	
	$(document).ready(function() {
				var $trs = $("tbody tr:eq(0)").clone(true);
						if ("${index}" != "") {
							$(".itemselect").find(
									"option:eq(" + "${index}" + ")").attr(
									"selected", true);
						}
						if ("${seach}" != "") {
							/* if("${seach=='undefined'}"){
								$("#search").val("");
								return;
							} */
							$("#search").val("${seach}");
						}
						
						var flg = true;
						$('#likec').on('compositionend', function() {
							flg = true;
						});
						$('#likec').on('compositionstart', function() {
							flg = false;
						});
						$('#likec').on('input',function() {setTimeout(function() {
						$(".col-sm-6").show();
							if($("#show_list ul>li").length>0)
							{
								$("#show_list ul>li").remove();
							}
							if($("#likec").val()==""){
							
							$("#show_list").css("display","none");
							}
								if (flg){
									$.ajax({url:"/UP-Pizza/AssociategeInfo",type:"get",data:{"tj":$("#likec").val()},dataType:"text",success:callback});
									function callback(data)
									{
										 var json = $.parseJSON(data);
										 for ( i in json) {
                         					var list = json[i];
                         					var str = "<li class='jn_li' style='cursor:pointer;'>"+list.userName+"</li>";
                         					$("#show_list ul").append(str);
                         					$("#show_list").css("display","block");
                         					if(i>7){
                         						break;
                         					}
                         					
										}
										
										$.ajax({url:"/UP-Pizza/CusTjPageServlet",type:"post",data:{"tj":$("#likec").val()},success:callback});
            								function callback(result)
            								{
            									var json = $.parseJSON(result);
												var Trlength = json.length
            									$("tbody tr").remove();
            									for (i in json){
            									var js = json[i];
            									$trs.children("td:eq(1)").text(js.id);
            									$trs.children("td:eq(2)").text(js.userName);
            									$trs.children("td:eq(3)").text(js.sex);
            									$trs.children("td:eq(4)").text(js.tel);
            									$trs.children("td:eq(5)").text(js.email);
            									$trs.children("td:eq(6)").text(js.address);
            									$trs.children("td:eq(7)").text(js.birthday);
            									if(js.cvid==1){
            										$trs.children("td:eq(8)").text("普通用户");
            									}
            									else{
            										 $trs.children("td:eq(8)").text("会员用户");
            									}
            									$trs.children("td:eq(9)").attr("style","");
            									if(js.tid==1){
            										
            										$trs.children("td:eq(9)").children("span").attr("style","background-color : #82af6f!important").text("已启用");  
            										$trs.children("td:eq(10)").children("a:eq(0)").attr("style","background-color : #82af6f!important"); 
            										$trs.children("td:eq(10)").children("a:eq(0)").attr("onclick","member_stop(this,"+js.id+")"); 
            									}
            									else{
            										$trs.children("td:eq(9)").children("span").attr("style","background-color : #abbac3!important").text("已禁用"); 
            										$trs.children("td:eq(10)").children("a:eq(0)").attr("style","background-color : #abbac3!important"); 
            										 $trs.children("td:eq(10)").children("a:eq(0)").attr("onclick","member_start(this,"+js.id+")"); 
            									}
            									$("tbody").prepend("<tr>"+$trs.html()+"</tr>");
            									//$("tbody").prepend("<tr>"+$trs.html()+"</tr>");
            									}
            									$(".rows").css("display","none");
            									if($("#likec").val()==""){
													$(".rows").css("display","block");
													$("tbody tr").remove();
													$("tbody").prepend(loadtr);
													Trlength = loadtr.length;
												}
												$(".r_f>b").text(Trlength);
            								}
										
									}
								}
						}, 0);
						});
					});
									
						$(".itemselect").change(function() {
								var index = $(this).get(0).selectedIndex;
								location.href = "/UP-Pizza/CustPageServlet?pageSize="
										+ $(this).val()
										+ "&index="
										+ index
										+ "&pageNum="
										+ "${pageNum}";
						});

						$(".btn-danger").click(function() {

							if ($(".checkst:checked").length == 0) {
								layer.msg("至少要选择一个用户");
								return;
							}

							var flag = confirm('确定要删除吗?');

							if (flag) {
								var arr = new Array();
									var $check = $(".checkst:checked");
										$($check).each(function(i) {arr[i] = $(this).parents("tbody tr").find("td:eq(1)").text();});
												
														$.ajax({
															url : "/UP-Pizza/CusdeletesServlet",
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

															$(this).parents(
																	"tbody tr")
																	.remove();

														});

													}
												}
												;
											}

										});

						$('#tzd')
								.bind(
										'input propertychange',
										function() {
											var reg = /^\+?[1-9][0-9]*$/;
											var pageSize = $(".itemselect")
													.val();
											if ($(this).val() > ${pageCount}) {
												layer.alert("输入的页数超出总页数!");
												return;
											}
											if ($(this).val() == "") {
												$(this).val(${pageNum});
												return;
											}
											if (!reg.test($(this).val())) {
												layer.alert("输入的不是数字!");
												this.value = "";
												return;
											}
											location.href = "/UP-Pizza/CustPageServlet?pageSize="
													+ pageSize
													+ "&pageNum="
													+ $(this).val()
													+ "&index="
													+ "${index}";
										});

						/* $("#search").bind('input', function() {
						var index = $(".itemselect").get(0).selectedIndex;
						location.href="/UP-Pizza/custPageServlet?seach="+$(this).val()+"&index="+index+"&pageSize="+"${pageSize}";
							
						});	 */

						var f = true;
						$('#search').on('compositionend', function() {
							f = true;
						});
						$('#search').on('compositionstart', function() {
							f = false;
						});
						$('#search').on('input',function() {setTimeout(function() {
								if (f) {
									var index = $(".itemselect").get(0).selectedIndex;
									location.href = "/UP-Pizza/CustPageServlet?seach="
											+ $("#search").val()
											+ "&index="
											+ index
											+ "&pageSize="
											+ "${pageSize}&pageNum="
											+ ${pageNum};
										}
						}, 0);
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
						
	/*用户-停用*/
	function member_stop(obj, id) {
		if (fg == 22) {
			member_start(obj, id);
		} else {
			fg = 22;
			layer
					.confirm(
							'确认要停用吗？',
							function(index) {
								$.ajax({
									url : "/UP-Pizza/CusUpdateTelServlet",
									type : "post",
									data : {
										"id" : id,
										"tid" : 2
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
														'<a style="text-decoration:none" class="btn btn-xs " onClick="member_start(this,'
																+ id
																+ ')" href="javascript:;" title="启用"><i class="icon-ok bigger-120"></i></a>');
										$(obj)
												.parents("tr")
												.find(".td-status")
												.html(
														'<span class="label label-defaunt radius yk">已禁用</span>');
										$(obj).remove();
										layer.msg('已停用!', {
											icon : 5,
											time : 1000
										});

									}
								}
							});
		}
	}
	/*用户-启用*/
	function member_start(obj, id) {
		if(fg == 11){
			member_stop(obj, id);
		}else{
		fg = 11;
		layer.confirm('确认要启用吗？',function(index) {
							$.ajax({
								url : "/UP-Pizza/CusUpdateTelServlet",
								type : "post",
								data : {
									"id" : id,
									"tid" : 1
								},
								dataType : "text",
								success : callback,
							});
							function callback(result) {
								if (result == "true") {
									$(obj).parents("tr").find(".td-manage").prepend('<a style="text-decoration:none" class="btn btn-xs btn-success" onClick="member_stop(this,'+id+')" href="javascript:;" title="停用"><i class="icon-ok bigger-120"></i></a>');
									$(obj)
											.parents("tr")
											.find(".td-status")
											.html(
													'<span class="label label-success radius sk" style="background-color: #82af6f">已启用</span>');
								$(obj).remove();
									layer.msg('已启用!', {
										icon : 6,
										time : 1000
									});
								}
							}
							
	
						});
		}
	}
	/* jQuery(function($) {
	 var oTable1 = $('#sample-table').dataTable({
	 "aaSorting" : [ [ 1, "desc" ] ],//默认第几个排序
	 "bStateSave" : true,//状态保存
	 "aoColumnDefs" : [
	 //{"bVisible": false, "aTargets": [ 3 ]} //控制列的隐藏显示
	 {
	 "orderable" : false,
	 "aTargets" : [ 0, 8, 9 ]
	 } // 制定列不参与排序
	 ]
	 }); */
/* 
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
	 }); */
	/*用户-添加*/
	$('#member_add').on(
			'click',
			function() {
				layer.open({
					type : 1,
					title : '添加用户',
					maxmin : true,
					shadeClose : true, //点击遮罩关闭层
					area : [ '800px', '' ],
					content : $('#add_menber_style'),
					btn : [ '提交', '取消' ],
					yes : function(index, layero) {
						var num = 0;
						var str = "";
						$(".add_menber input[type$='text']").each(
								function(n) {
									if ($(this).val() == "") {

										layer.alert(str += ""
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
							layer.alert('添加成功！', {
								title : '提示框',
								icon : 1,
							});
							layer.close(index);
						}
					}
				});
			});
	/*用户-查看*/
	function member_show(title, url, id, w, h) {
		layer_show(title, url + '#?=' + id, w, h);
	}
</script>