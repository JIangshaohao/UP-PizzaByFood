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
	<title>????????????</title>
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
						<li><label class="l_f">????????????</label><input name="" type="text"
							class="text_add likec" autocomplete ="off" id="likec" placeholder="????????????????????????????????????" style=" width:400px" /></li>
						<li><label class="l_f">????????????</label><input
							class="inline laydate-icon" id="start" style=" margin-left:10px;"></li>
						<li style="width:90px;"><button type="button"
								class="btn_search">
								<i class="icon-search searcht"></i>??????
							</button></li>
					</ul>
				</div>
				<div id="show_list">
					<ul></ul>
				</div>
				<!---->
				<div class="border clearfix">
					<span class="l_f"> <!-- <a href="javascript:ovid()"
						id="member_add" class="btn btn-warning"><i class="icon-plus"></i>????????????</a> -->
						<a href="javascript:ovid()" class="btn btn-danger"><i
							class="icon-trash deletes"></i>????????????</a>
					</span> <span class="r_f">??????<b>${count}</b>???
					</span>
				</div>
				<div class="col-sm-6">
					<div class="dataTables_length" id="sample-table_length">
						<label>??????????????????: <select name="sample-table_length"
							aria-controls="sample-table" class="itemselect"><option
									value="5">5</option>
								<option value="20">20</option>
								<option value="40">40</option>
								<option value="100">100</option></select></label>
					</div>
				</div>
				<div class="col-sm-6">
					<div id="sample-table_filter" class="dataTables_filter">
						<label>??????:<input type="search" class="" id="search"
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
								<th width="100">?????????</th>
								<th width="80">??????</th>
								<th width="120">??????</th>
								<th width="150">??????</th>
								<th width="">??????</th>
								<th width="180">????????????</th>
								<th width="100">??????</th>
								<th width="70">??????</th>
								<th width="250">??????</th>
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

									<td>${f.cvid==1?'????????????':'????????????'}</td>
									<c:choose>
										<c:when test="${f.tid==1}">
											<td class="td-status"><span
												class="label label-success radius sk"
												style="background-color:#82af6f;">?????????</td>
											<td class="td-manage"><a
												onClick="member_stop(this,'${f.id}')" href="javascript:;"
												title="??????" class="btn btn-xs btn-success"><i
													class="icon-ok bigger-120"></i></a> <a title="??????"
												onclick="member_edit('${f.id}',this)" href="javascript:;"
												class="btn btn-xs btn-info"><i
													class="icon-edit bigger-120"></i></a> <a title="??????"
												href="javascript:;" onclick="member_del(this,'${f.id}')"
												class="btn btn-xs btn-warning"><i
													class="icon-trash  bigger-120"></i></a></td>
										</c:when>
										<c:otherwise>
											<td class="td-status"><span class="label  radius yk">?????????</td>
											<td class="td-manage"><a
												onClick="member_start(this,'${f.id}')" href="javascript:;"
												title="??????" class="btn btn-xs "><i
													class="icon-ok bigger-120"></i></a> <a title="??????"
												onclick="member_edit('${f.id}',this)" href="javascript:;"
												class="btn btn-xs btn-info"><i
													class="icon-edit bigger-120"></i></a> <a title="??????"
												href="javascript:;" onclick="member_del(this,'${f.id}')"
												class="btn btn-xs btn-warning"><i
													class="icon-trash  bigger-120"></i></a></td>
										</c:otherwise>
									</c:choose>

									<%-- <td class="td-status"><span
											class="label label-success radius sk" style="background-color:#82af6f;">?????????</td>
											<td class="td-manage"><a
										onClick="member_stop(this,'${f.id}')" href="javascript:;"
										title="??????" class="btn btn-xs btn-success"><i
											class="icon-ok bigger-120"></i></a> <a title="??????"
										onclick="member_edit('${f.id}',this)" href="javascript:;"
										class="btn btn-xs btn-info"><i
											class="icon-edit bigger-120"></i></a> <a title="??????"
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
								aria-live="polite">??? ${pageNum}??? /
								???${pageCount}?????????${count}?????????</div>
						</div>
						<div class="col-sh-6">
							<div class="dataTables_paginate paging_bootstrap"
								id="sample-table_paginate">
								<ul class="pagination">
									<li class="next disabled xyy"><a
										href="/UP-Pizza/CustPageServlet?pageSize=${pageSize}&index=${index}&pageNum=1"
										style="color:#000000;cursor: default;";>??????</a></li>
									<c:choose>
										<c:when test="${pageNum==1}">
											<li class="prev disabled syy"><a
												style="color:#DDD;cursor: not-allowed">?????????</a></li>
										</c:when>
										<c:otherwise>
											<li class="next disabled xyy"><a
												href="/UP-Pizza/CustPageServlet?pageSize=${pageSize}&index=${index}&pageNum=${pageNum-1}"
												style="color:#000000;cursor: default;";>?????????</a></li>
										</c:otherwise>
									</c:choose>

									<%-- <c:forEach begin="${pageNum}" end="${pageCount}" var="i" varStatus="x">
										<li class="active">
											<a id="acolor${i}" href="/UP-Pizza/custPageServlet?pageSize=${pageSize}&index=${index}&pageNum=${i}">${i}</a>
										</li>
									</c:forEach> --%>



									<%--?????????--%>
									<%--??????6????????????[begin=?????????,end=?????????]--%>
									<%--???????????????6???--%>
									<c:choose>
										<c:when test="${pageCount <= 6}">
											<c:set var="begin" value="1" />
											<c:set var="end" value="${pageCount}" />
										</c:when>
										<%--???????????????6???--%>
										<c:otherwise>
											<c:set var="begin" value="${pageNum - 1}" />
											<c:set var="end" value="${pageNum + 3}" />
											<%--??????begin???1??????0,??????????????????1,????????????6--%>
											<c:if test="${begin -1 <= 0}">
												<c:set var="begin" value="1" />
												<c:set var="end" value="6" />
											</c:if>
											<%--??????end???????????????,???????????????=?????????-5--%>
											<c:if test="${end > pageCount}">
												<c:set var="begin" value="${pageCount - 5}" />
												<c:set var="end" value="${pageCount}" />
											</c:if>
										</c:otherwise>
									</c:choose>

									<%--??????--%>
									<c:forEach var="i" begin="${begin}" end="${end}">
										<%--?????????,??????--%>
										<c:choose>
											<c:when test="${i == pageNum}">
												<li class="active"><a href="#">${i}</a></li>
											</c:when>
											<%--???????????????--%>
											<c:otherwise>
												<li><a
													href="/UP-Pizza/CustPageServlet?pageSize=${pageSize}&index=${index}&pageNum=${i}">${i}</a></li>
											</c:otherwise>
										</c:choose>
									</c:forEach>
									<c:choose>
										<c:when test="${pageNum==pageCount}">
											<li class="next disabled xyy"><a
												style="color:#DDD;cursor: not-allowed;">?????????</a></li>
										</c:when>
										<c:otherwise>
											<li class="next disabled xyy"><a
												href="/UP-Pizza/CustPageServlet?pageSize=${pageSize}&index=${index}&pageNum=${pageNum+1}"
												style="color:#000000;cursor: default;">?????????</a></li>
										</c:otherwise>
									</c:choose>
									<li class="next disabled xyy"><a
										href="/UP-Pizza/CustPageServlet?pageSize=${pageSize}&index=${index}&pageNum=${pageCount}"
										style="color:#000000;cursor: default;";>??????</a></li>
									<li class="next disabled tzd">?????????:<input type="text"
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
	<!--??????????????????-->
	<div class="add_menber" id="add_menber_style" style="display:none">

		<ul class=" page-content">
			<li><label class="label_name">???&nbsp;&nbsp;??? &nbsp;??????</label><span
				class="add_name"><input value="" name="?????????" type="text"
					class="text_add u" /></span>
				<div class="prompt r_f"></div></li>
			<li><label class="label_name">???????????????</label><span
				class="add_name"><input name="????????????" type="text"
					class="text_add un" value="" /></span>
				<div class="prompt r_f"></div></li>
			<li><label class="label_name">???&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;??????</label>
				<span class="add_name"> <label> <input
						name="form-field-radio" type="radio" checked="checked" value="???"
						class="ace jkk" /><span class="lbl">???</span>
				</label>&nbsp;&nbsp;&nbsp; <label> <input name="form-field-radio"
						type="radio" value="???" class="ace jkk" /><span class="lbl">???</span>
				</label>&nbsp;&nbsp;&nbsp;
			</span>
				<div class="prompt r_f"></div></li>
			<li><label class="label_name">???????????????</label><span
				class="add_name"><input name="????????????" type="text"
					class="text_add bity" value="" /></span>
				<div class="prompt r_f"></div></li>
			<li><label class="label_name">???????????????</label><span
				class="add_name"><input name="????????????" value="" type="text"
					class="text_add tel" /></span>
				<div class="prompt r_f"></div></li>
			<li><label class="label_name">???????????????</label><span
				class="add_name"><input name="????????????" value="" type="text"
					class="text_add email" /></span>
				<div class="prompt r_f"></div></li>
			<li class="adderss"><label class="label_name">???????????????</label><span
				class="add_name"><input name="????????????" type="text"
					class="text_add address" style=" width:350px" value="" /></span>
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
            			$node.children("td:eq(8)").text("????????????");
            		}
            		else{
            			$node.children("td:eq(8)").text("????????????");
            		}
            			$node.children("td:eq(9)").attr("style","");
            		if(js.tid==1){
            			$node.children("td:eq(9)").children("span").attr("style","background-color : #82af6f!important").text("?????????");  
            			$node.children("td:eq(10)").children("a:eq(0)").attr("style","background-color : #82af6f!important"); 
            			$node.children("td:eq(10)").children("a:eq(0)").attr("onclick","member_stop(this,"+js.id+")");
            			
            		}
            		else{
            			$node.children("td:eq(9)").children("span").attr("style","background-color : #abbac3!important").text("?????????"); 
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
	/*??????-??????*/
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
									layer.msg('???????????????', {
										title : '?????????',
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
														"<span class='label label-success radius sk'style='background-color:#82af6f!important'>?????????</span>");
										$this.children("td").eq(10).children(
												"a").eq(0).remove();
										$this
												.children("td")
												.eq(10)
												.prepend(
														"<a onclick='member_stop(this,"+ide+")' href='javascript:;' title='??????' style='background-color:#82af6f!important' class='btn btn-xs btn-success'><i class='icon-ok bigger-120'></i></a>");
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
														"<span class='label label-success radius sk'style='background-color: rgb(171, 186, 195)!important;'>?????????</span>");
										$this.children("td").eq(10).children(
												"a").eq(0).remove();
										$this
												.children("td")
												.eq(10)
												.prepend(
														"<a onclick='member_stop(this,"+ide+")' href='javascript:;' title='??????' style='background-color:rgb(171, 186, 195)!important' class='btn btn-xs btn-success'><i class='icon-ok bigger-120'></i></a>");
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
	function member_del(obj, id) {
		layer
				.confirm(
						'?????????????????????',
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
									layer.msg('?????????!', {
										icon : 1,
										time : 1000
									});
									if ($("tbody >tr").length == 0) {
										window.location.href = "/UP-Pizza/CustPageServlet?pageNum="
												+ ${pageNum-1};
									}

								} else {
									layer.msg('???????????? ??????????????????????????????!', {
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
            										$trs.children("td:eq(8)").text("????????????");
            									}
            									else{
            										 $trs.children("td:eq(8)").text("????????????");
            									}
            									$trs.children("td:eq(9)").attr("style","");
            									if(js.tid==1){
            										
            										$trs.children("td:eq(9)").children("span").attr("style","background-color : #82af6f!important").text("?????????");  
            										$trs.children("td:eq(10)").children("a:eq(0)").attr("style","background-color : #82af6f!important"); 
            										$trs.children("td:eq(10)").children("a:eq(0)").attr("onclick","member_stop(this,"+js.id+")"); 
            									}
            									else{
            										$trs.children("td:eq(9)").children("span").attr("style","background-color : #abbac3!important").text("?????????"); 
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
								layer.msg("???????????????????????????");
								return;
							}

							var flag = confirm('???????????????????');

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
												layer.alert("??????????????????????????????!");
												return;
											}
											if ($(this).val() == "") {
												$(this).val(${pageNum});
												return;
											}
											if (!reg.test($(this).val())) {
												layer.alert("?????????????????????!");
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
						
	/*??????-??????*/
	function member_stop(obj, id) {
		if (fg == 22) {
			member_start(obj, id);
		} else {
			fg = 22;
			layer
					.confirm(
							'?????????????????????',
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
																+ ')" href="javascript:;" title="??????"><i class="icon-ok bigger-120"></i></a>');
										$(obj)
												.parents("tr")
												.find(".td-status")
												.html(
														'<span class="label label-defaunt radius yk">?????????</span>');
										$(obj).remove();
										layer.msg('?????????!', {
											icon : 5,
											time : 1000
										});

									}
								}
							});
		}
	}
	/*??????-??????*/
	function member_start(obj, id) {
		if(fg == 11){
			member_stop(obj, id);
		}else{
		fg = 11;
		layer.confirm('?????????????????????',function(index) {
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
									$(obj).parents("tr").find(".td-manage").prepend('<a style="text-decoration:none" class="btn btn-xs btn-success" onClick="member_stop(this,'+id+')" href="javascript:;" title="??????"><i class="icon-ok bigger-120"></i></a>');
									$(obj)
											.parents("tr")
											.find(".td-status")
											.html(
													'<span class="label label-success radius sk" style="background-color: #82af6f">?????????</span>');
								$(obj).remove();
									layer.msg('?????????!', {
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
	 "aaSorting" : [ [ 1, "desc" ] ],//?????????????????????
	 "bStateSave" : true,//????????????
	 "aoColumnDefs" : [
	 //{"bVisible": false, "aTargets": [ 3 ]} //????????????????????????
	 {
	 "orderable" : false,
	 "aTargets" : [ 0, 8, 9 ]
	 } // ????????????????????????
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
	/*??????-??????*/
	$('#member_add').on(
			'click',
			function() {
				layer.open({
					type : 1,
					title : '????????????',
					maxmin : true,
					shadeClose : true, //?????????????????????
					area : [ '800px', '' ],
					content : $('#add_menber_style'),
					btn : [ '??????', '??????' ],
					yes : function(index, layero) {
						var num = 0;
						var str = "";
						$(".add_menber input[type$='text']").each(
								function(n) {
									if ($(this).val() == "") {

										layer.alert(str += ""
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
							layer.alert('???????????????', {
								title : '?????????',
								icon : 1,
							});
							layer.close(index);
						}
					}
				});
			});
	/*??????-??????*/
	function member_show(title, url, id, w, h) {
		layer_show(title, url + '#?=' + id, w, h);
	}
</script>