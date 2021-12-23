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
	<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
			<meta name="viewport" content="width=device-width, initial-scale=1">
				<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
				<title>前台消息中心</title>
				<meta name="keywords" content="前端js在线聊天" />
				<meta name="description" content="前端js在线聊天" />

				<link rel="stylesheet" type="text/css"
					href="Manager/UP-Index/css/chat.css" />
				<link rel="stylesheet" type="text/css"
					href="Manager/UP-Index/css/alert.css" />

				<link rel="stylesheet" type="text/css"
					href="Manager/UP-Index/js/bootstrap-3.4.1-dist/css/bootstrap.css" />

				<script type="text/javascript"
					src="Manager/UP-Index/js/also/jquery-1.7.2.min.js"></script>
				<script type="text/javascript"
					src="Manager/UP-Index/js/also/chat.js"></script>
				<script type="text/javascript"
					src="Manager/UP-Index/js/also/alert.js"></script>
				<!--[if lt IE 7]>
<script src="js/IE7.js" type="text/javascript"></script>
<![endif]-->
				<!--[if IE 6]>
<script src="js/iepng.js" type="text/javascript"></script>
<script type="text/javascript">
EvPNG.fix('body, div, ul, img, li, input, a, span ,label'); 
</script>
<![endif]-->

				<style>
.chat03 {
	overflow-y: scroll;
	height: 418px;
}

.col-sm-12 {
	padding: 15px 15px;
}

.cusLeft span {
	border: 1px red solid;
	padding: 10px;
	background-color: blue;
	color: white;
}

.cussRigth span {
	border: 1px red solid;
	padding: 10px;
	background-color: blue;
	color: white;
}

.wlf_items {
	width: 60px;
}

.wlf_items ul {
	
}

body {
	background-color: #FFFAE8;
}
</style>
</head>
<body>

	<div class="content">
		<div class="chatBox">
			<div class="chatLeft">
				<div class="chat01">
					<div class="chat01_title">
						<ul class="talkTo">
							<li><a href="javascript:;">在线客服</a></li>
						</ul>
						<a class="close_btn" href="javascript:;"></a>
					</div>
					<div class="chat01_content">
						<!-- <div class="message_box mes1" style="display: none;"></div>
						<div class="message_box mes2" style="display: none;"></div> -->
						<div class="message_box mes3" style="display: block;">
							<!-- <div class="message clearfix">
								<div class="user-logo">
									<img src="Manager/UP-Index/images/also/head/2015.jpg">
								</div>
								<div class="wrap-text">
									<h5 class="clearfix">王旭</h5>
									<div>3232的回复内容</div>
								</div>
								<div class="wrap-ri">
									<div clsss="clearfix">
										<span>2021-12-1 14:30:44</span>
									</div>
								</div>
								<div style="clear:both;"></div>
							</div> -->

							<div class="container-fluid alsoitems"></div>
						</div>
						<!-- <div class="message_box mes4" style="display: none;"></div>
						<div class="message_box mes5" style="display: none;"></div>
						<div class="message_box mes6" style="display: none;"></div>
						<div class="message_box mes7" style="display: none;"></div>
						<div class="message_box mes8" style="display: none;"></div>
						<div class="message_box mes9" style="display: none;"></div>
						<div class="message_box mes10" style="display: none;"></div> -->
					</div>
				</div>
				<div class="chat02">
					<div class="chat02_title">
						<a class="chat02_title_btn ctb01" href="javascript:;"></a><a
							class="chat02_title_btn ctb02" href="javascript:;" title="选择文件">

						</a><a class="chat02_title_btn ctb03" href="javascript:;" title="选择附件">
							<embed width="15" height="16"
								flashvars="swfid=2556975203&amp;maxSumSize=50&amp;maxFileSize=50&amp;maxFileNum=1&amp;multiSelect=0&amp;uploadAPI=http%3A%2F%2Fupload.api.weibo.com%2F2%2Fmss%2Fupload.json%3Fsource%3D209678993%26tuid%3D1887188824&amp;initFun=STK.webim.ui.chatWindow.msgToolBar.upload.initFun&amp;sucFun=STK.webim.ui.chatWindow.msgToolBar.upload.sucFun&amp;errFun=STK.webim.ui.chatWindow.msgToolBar.upload.errFun&amp;beginFun=STK.webim.ui.chatWindow.msgToolBar.upload.beginFun&amp;showTipFun=STK.webim.ui.chatWindow.msgToolBar.upload.showTipFun&amp;hiddenTipFun=STK.webim.ui.chatWindow.msgToolBar.upload.hiddenTipFun&amp;areaInfo=0-16|12-16&amp;fExt=*.jpg;*.gif;*.jpeg;*.png|*&amp;fExtDec=选择图片|选择文件"
								data="upload.swf" wmode="transparent" bgcolor=""
								allowscriptaccess="always" allowfullscreen="true"
								scale="noScale" menu="false"
								type="application/x-shockwave-flash"
								src="http://service.weibo.com/staticjs/tools/upload.swf?v=36c9997f1313d1c4"
								id="swf_3140">
						</a> <a><span class="glyphicon glyphicon-zoom-in"></span>常用消息语</a>&nbsp;&nbsp;
						<a><span class="glyphicon glyphicon-ok"></span>一键保送</a>&nbsp;&nbsp;
						<a><span class="glyphicon glyphicon-gift"></span>我要退库哦</a>
						&nbsp;&nbsp;<a><span class="glyphicon glyphicon-pencil"></span>修改订单</a>
						<label class="chat02_title_t"> <a>聊天记录</a></label>

						<div class="wl_faces_box">
							<div class="wl_faces_content">
								<div class="title">
									<ul>
										<li class="title_name">常用表情</li>
										<li class="wl_faces_close"><span>&nbsp;</span></li>
									</ul>
								</div>
								<div class="wl_faces_main">
									<ul>
										<li><a href="javascript:;"> <img
												src="Manager/UP-Index/images/also/emo_01.gif"></a></li>
										<li><a href="javascript:;"> <img
												src="Manager/UP-Index/images/also/emo_02.gif"></a></li>
										<li><a href="javascript:;"> <img
												src="Manager/UP-Index/images/also/emo_03.gif"></a></li>
										<li><a href="javascript:;"> <img
												src="Manager/UP-Index/images/also/emo_04.gif"></a></li>
										<li><a href="javascript:;"> <img
												src="Manager/UP-Index/images/also/emo_05.gif"></a></li>
										<li><a href="javascript:;"> <img
												src="Manager/UP-Index/images/also/emo_06.gif"></a></li>
										<li><a href="javascript:;"> <img
												src="Manager/UP-Index/images/also/emo_07.gif"></a></li>
										<li><a href="javascript:;"> <img
												src="Manager/UP-Index/images/also/emo_08.gif"></a></li>
										<li><a href="javascript:;"> <img
												src="Manager/UP-Index/images/also/emo_09.gif"></a></li>
										<li><a href="javascript:;"> <img
												src="Manager/UP-Index/images/also/emo_10.gif"></a></li>
										<li><a href="javascript:;"> <img
												src="Manager/UP-Index/images/also/emo_11.gif"></a></li>
										<li><a href="javascript:;"> <img
												src="Manager/UP-Index/images/also/emo_12.gif"></a></li>
										<li><a href="javascript:;"> <img
												src="Manager/UP-Index/images/also/emo_13.gif"></a></li>
										<li><a href="javascript:;"> <img
												src="Manager/UP-Index/images/also/emo_14.gif"></a></li>
										<li><a href="javascript:;"> <img
												src="Manager/UP-Index/images/also/emo_15.gif"></a></li>
										<li><a href="javascript:;"> <img
												src="Manager/UP-Index/images/also/emo_16.gif"></a></li>
										<li><a href="javascript:;"> <img
												src="Manager/UP-Index/images/also/emo_17.gif"></a></li>
										<li><a href="javascript:;"> <img
												src="Manager/UP-Index/images/also/emo_18.gif"></a></li>
										<li><a href="javascript:;"> <img
												src="Manager/UP-Index/images/also/emo_19.gif"></a></li>
										<li><a href="javascript:;"> <img
												src="Manager/UP-Index/images/also/emo_20.gif"></a></li>
										<li><a href="javascript:;"> <img
												src="Manager/UP-Index/images/also/emo_21.gif"></a></li>
										<li><a href="javascript:;"> <img
												src="Manager/UP-Index/images/also/emo_22.gif"></a></li>
										<li><a href="javascript:;"> <img
												src="Manager/UP-Index/images/also/emo_23.gif"></a></li>
										<li><a href="javascript:;"> <img
												src="Manager/UP-Index/images/also/emo_24.gif"></a></li>
										<li><a href="javascript:;"> <img
												src="Manager/UP-Index/images/also/emo_25.gif"></a></li>
										<li><a href="javascript:;"> <img
												src="Manager/UP-Index/images/also/emo_26.gif"></a></li>
										<li><a href="javascript:;"> <img
												src="Manager/UP-Index/images/also/emo_27.gif"></a></li>
										<li><a href="javascript:;"> <img
												src="Manager/UP-Index/images/also/emo_28.gif"></a></li>
										<li><a href="javascript:;"> <img
												src="Manager/UP-Index/images/also/emo_29.gif"></a></li>
										<li><a href="javascript:;"> <img
												src="Manager/UP-Index/images/also/emo_30.gif"></a></li>
										<li><a href="javascript:;"> <img
												src="Manager/UP-Index/images/also/emo_31.gif"></a></li>
										<li><a href="javascript:;"> <img
												src="Manager/UP-Index/images/also/emo_32.gif"></a></li>
										<li><a href="javascript:;"> <img
												src="Manager/UP-Index/images/also/emo_33.gif"></a></li>
										<li><a href="javascript:;"> <img
												src="Manager/UP-Index/images/also/emo_34.gif"></a></li>
										<li><a href="javascript:;"> <img
												src="Manager/UP-Index/images/also/emo_35.gif"></a></li>
										<li><a href="javascript:;"> <img
												src="Manager/UP-Index/images/also/emo_36.gif"></a></li>
										<li><a href="javascript:;"> <img
												src="Manager/UP-Index/images/also/emo_37.gif"></a></li>
										<li><a href="javascript:;"> <img
												src="Manager/UP-Index/images/also/emo_38.gif"></a></li>
										<li><a href="javascript:;"> <img
												src="Manager/UP-Index/images/also/emo_39.gif"></a></li>
										<li><a href="javascript:;"> <img
												src="Manager/UP-Index/images/also/emo_40.gif"></a></li>
										<li><a href="javascript:;"> <img
												src="Manager/UP-Index/images/also/emo_41.gif"></a></li>
										<li><a href="javascript:;"> <img
												src="Manager/UP-Index/images/also/emo_42.gif"></a></li>
										<li><a href="javascript:;"> <img
												src="Manager/UP-Index/images/also/emo_43.gif"></a></li>
										<li><a href="javascript:;"> <img
												src="Manager/UP-Index/images/also/emo_44.gif"></a></li>
										<li><a href="javascript:;"> <img
												src="Manager/UP-Index/images/also/emo_45.gif"></a></li>
										<li><a href="javascript:;"> <img
												src="Manager/UP-Index/images/also/emo_46.gif"></a></li>
										<li><a href="javascript:;"> <img
												src="Manager/UP-Index/images/also/emo_47.gif"></a></li>
										<li><a href="javascript:;"> <img
												src="Manager/UP-Index/images/also/emo_48.gif"></a></li>
										<li><a href="javascript:;"> <img
												src="Manager/UP-Index/images/also/emo_49.gif"></a></li>
										<li><a href="javascript:;"> <img
												src="Manager/UP-Index/images/also/emo_50.gif"></a></li>
										<li><a href="javascript:;"> <img
												src="Manager/UP-Index/images/also/emo_51.gif"></a></li>
										<li><a href="javascript:;"> <img
												src="Manager/UP-Index/images/also/emo_52.gif"></a></li>
										<li><a href="javascript:;"> <img
												src="Manager/UP-Index/images/also/emo_53.gif"></a></li>
										<li><a href="javascript:;"> <img
												src="Manager/UP-Index/images/also/emo_54.gif"></a></li>
										<li><a href="javascript:;"> <img
												src="Manager/UP-Index/images/also/emo_55.gif"></a></li>
										<li><a href="javascript:;"> <img
												src="Manager/UP-Index/images/also/emo_56.gif"></a></li>
										<li><a href="javascript:;"> <img
												src="Manager/UP-Index/images/also/emo_57.gif"></a></li>
										<li><a href="javascript:;"> <img
												src="Manager/UP-Index/images/also/emo_58.gif"></a></li>
										<li><a href="javascript:;"> <img
												src="Manager/UP-Index/images/also/emo_59.gif"></a></li>
										<li><a href="javascript:;"> <img
												src="Manager/UP-Index/images/also/emo_60.gif"></a></li>
									</ul>
								</div>
							</div>
							<div class="wlf_icon"></div>

						</div>

					</div>
					<div class="chat02_content">
						<textarea id="textarea"></textarea>
					</div>
					<div class="chat02_bar">
						<ul>
							<li style="right: 5px; top: 5px;"><a href="javascript:;">
									<img src="Manager/UP-Index/images/also/send_btn.jpg">
							</a></li>
						</ul>
					</div>
				</div>
			</div>
			<div class="chatRight">
				<div class="chat03">
					<div class="chat03_title">
						<label class="chat03_title_t"> 成员列表</label>
					</div>
					<div class="chat03_content">
						<ul>
							<c:forEach items="${list}" var="i">
								<li class=""><label class="online"> </label> <a
									href="javascript:;"> <img class="cusimg"
										src="Manager/UP-Index/images/also/alsoimg/staimg/${i.images}"></a><a
									id="cust" href="javascript:;" class="chat03_name">${i.userName}</a>
									<input type="hidden" value="${i.id}" /></li>
							</c:forEach>
						</ul>
					</div>
				</div>
			</div>
			<div style="clear: both;"></div>
		</div>
	</div>
	<div
		style="text-align:center;margin:50px 0; font:normal 14px/24px 'MicroSoft YaHei';">
		<p></p>
		<p></p>
	</div>
	<script>
		var flag = false;
		var cusid = null;
		var cusimgs = null;
		var append = 0;

		$(".chat02_bar a").removeAttr("onclick");
		$(function() {
			$(".chat03_content li").click(function() {
				load(this);
				$(this).attr("class", "cactive");
				$(this).siblings().removeAttr("class");
			});
			setInterval(function() {
				if (cusid != null && cusid != "") {
					$.ajax({
						url : "/UP-Pizza/getAlsogetCount1",
						type : "post",
						data : {
							"id" : cusid
						},
						dataType : "text",
						async : false,
						success : callback
					});
					function callback(result) {
						if (result > $(".alsoitems .cusLeft").length) {
							flag = true;
							getMose();
						} else {
							flag = false;
						}
					}

				}
			}, 1000);

			$(".chat02_bar img")
					.click(
							function() {
								var info = $("#textarea").val();
								var id = $(".cactive").children(
										"input[type=hidden]").val();
								if (id == "" || id == null) {
									$.toast({
										content : '请先选择一个聊天对象~',
										time : 1000
									})
									return;
								}
								if (info == "") {
									$.toast({
										content : '还没输入消息呢~',
										time : 1000
									})
									return;
								}
								$.ajax({
									url : "/UP-Pizza/addAlsoServlet1",
									type : "post",
									data : {
										"cusid" : id,
										"info" : info
									},
									dataType : "text",
									success : callback
								});
								function callback(result) {
									if (result != "true") {
										return;
									}
									var row = "<div class='row cussRigth'><div class='col-sm-12 text-right'><span>"
											+ info
											+ "</span> <img src='Manager/UP-Index/images/also/alsoimg/cusimg/${cus.images}' style='width:30px;height:30px;'/></div></div>";
									$(".alsoitems").append(row);
									$("#textarea").val("");
									var scrollHeight = $('.chat01_content')
											.prop("scrollHeight");
									$('.chat01_content').scrollTop(
											scrollHeight, 200);
								}
							});

			/* $(".ctb01").click(function(){
				$(".wl_faces_box").toggle();
			}); */

			$(".wl_faces_main ul li").click(function() {
				var src = $(this).children("a").children("img").attr("src");
				$("#textarea").append("<img src='"+src+"'/>");
			});

			$(".ctb02").click(function() {
				$(".wlf_items").toggle();
			});
		});

		function load(obj) {
			$(".alsoitems div").remove();
			var cusimg = $(obj).find(".cusimg").attr("src");
			var cusname = $(obj).find(".chat03_name").text();
			cusimgs = cusimg;
			var id = $(obj).children("input[type=hidden]").val();
			$.ajax({
				url : "/UP-Pizza/getAlsoCusInfoServlet02",
				type : "post",
				data : {
					"id" : id
				},
				dataType : "text",
				success : callback
			});
			function callback(result) {
				/* 	var obj1 = result.substring(0,result.lastIndexOf("~"));
					var obj2 = result.substring(result.lastIndexOf("~")+1); */
				var json = $.parseJSON(result);
				for (i in json) {
					var ls = json[i];
					if (ls.qub == 2) {
						var row = "<div class='row cusLeft'><div class='col-sm-12 text-left'><img src='"+cusimg+"' style='width:30px;height:30px;'/> <span>"
								+ ls.info + "</span></div></div>";
						$(".alsoitems").append(row);
					} else {
						var row = "<div class='row cussRigth'><div class='col-sm-12 text-right'><span>"
								+ ls.info
								+ "</span> <img src='Manager/UP-Index/images/also/alsoimg/cusimg/${cus.images}' style='width:30px;height:30px;'/></div></div>";
						$(".alsoitems").append(row);
					}
				}
				$(".talkTo").children("li").text(cusname);
				var scrollHeight = $('.chat01_content').prop("scrollHeight");
				$('.chat01_content').scrollTop(scrollHeight, 200);
				cusid = id;
			}
		}

		function getMose() {
			$(".alsoitems div").remove();
			$.ajax({
				url : "/UP-Pizza/getAlsoCusInfoServlet02",
				type : "post",
				data : {
					"id" : cusid
				},
				dataType : "text",
				async : false,
				success : callback
			});
			function callback(result) {
				/* 	var obj1 = result.substring(0,result.lastIndexOf("~"));
					var obj2 = result.substring(result.lastIndexOf("~")+1); */
				var json = $.parseJSON(result);
				for (i in json) {
					var ls = json[i];
					if (ls.qub == 2) {
						var row = "<div class='row cusLeft'><div class='col-sm-12 text-left'><img src='"+cusimgs+"' style='width:30px;height:30px;'/><span>"
								+ ls.info + "</span></div></div>";
						$(".alsoitems").append(row);
					} else {
						var row = "<div class='row cussRigth'><div class='col-sm-12 text-right'><span>"
								+ ls.info
								+ "</span><img src='Manager/UP-Index/images/also/alsoimg/cusimg/${cus.images}' style='width:30px;height:30px;'/></div></div>";
						$(".alsoitems").append(row);
					}
				}
				flag = false;
				var scrollHeight = $('.chat01_content').prop("scrollHeight");
				$('.chat01_content').scrollTop(scrollHeight, 200);
			}
		}
	</script>
</body>
</html>