<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8" />
		<title>UP-Pizza后台管理系统</title>
		<meta name="author" content="DeathGhost" />
		<link rel="stylesheet" type="text/css" href="css/Login.css" tppabs="css/Login.css" />
		<style>
			body{height:100%;background:#16a085;overflow:hidden;}
canvas{z-index:-1;position:absolute;}

.login-box a {
			position: relative;
			display: inline-block;
			padding: 10px 20px;
			color: #03e9f4;
			font-size: 16px;
			text-decoration: none;
			text-transform: uppercase;
			overflow: hidden;
			transition: .5s;
			margin-top: 40px;
			letter-spacing: 4px
		}

		.login-box a:hover {
			background: #03e9f4;
			color: #fff;
			border-radius: 5px;
			box-shadow: 0 0 5px #03e9f4,
				0 0 25px #03e9f4,
				0 0 50px #03e9f4,
				0 0 100px #03e9f4;
		}

		.login-box a span {
			position: absolute;
			display: block;
		}

		.login-box a span:nth-child(1) {
			top: 0;
			left: -100%;
			width: 100%;
			height: 2px;
			background: linear-gradient(90deg, transparent, #03e9f4);
			animation: btn-anim1 1s linear infinite;
		}

		@keyframes btn-anim1 {
			0% {
				left: -100%;
			}

			50%,
			100% {
				left: 100%;
			}
		}

		.login-box a span:nth-child(2) {
			top: -100%;
			right: 0;
			width: 2px;
			height: 100%;
			background: linear-gradient(180deg, transparent, #000);
			animation: btn-anim2 1s linear infinite;
			animation-delay: .25s
		}

		@keyframes btn-anim2 {
			0% {
				top: -100%;
			}

			50%,
			100% {
				top: 100%;
			}
		}

		.login-box a span:nth-child(3) {
			bottom: 0;
			right: -100%;
			width: 100%;
			height: 2px;
			background: linear-gradient(270deg, transparent, #03e9f4);
			animation: btn-anim3 1s linear infinite;
			animation-delay: .5s
		}

		@keyframes btn-anim3 {
			0% {
				right: -100%;
			}

			50%,
			100% {
				right: 100%;
			}
		}

		.login-box a span:nth-child(4) {
			bottom: -100%;
			left: 0;
			width: 2px;
			height: 100%;
			background: linear-gradient(360deg, transparent, #000);
			animation: btn-anim4 1s linear infinite;
			animation-delay: .75s
		}

		@keyframes btn-anim4 {
			0% {
				bottom: -100%;
			}

			50%,
			100% {
				bottom: 100%;
			}
		}
		
		#pwd_Span{
		
		position: relative;
		top:-35px;
		left:150px;
		}
</style>
		<script src="js/jquery.js"></script>
		<script src="js/verificationNumbers.js" tppabs="js/verificationNumbers.js"></script>
		<script src="js/Particleground.js" tppabs="js/Particleground.js"></script>
		<script type="text/javascript" src="js/tooltips.js"></script>
		<script>
			$(document).ready(function() {
  //粒子背景特效
  $('body').particleground({
    dotColor: '#5cbdaa',
    lineColor: '#5cbdaa'
  });
  //验证码
  createCode();
  //测试提交，对接程序删除即可
 // $(".submit_btn").click(function(){
//	  location.href="javascrpt:LoginServlet;"/*tpa=http://***index.html*/;
//	  }); 
});

</script>
	</head>
	<body>
	
		<dl class="admin_login">
		
			<dt>
				<strong>UP-Pizza管理系统</strong>
				<em>Management System</em>
			</dt>
			<dd class="user_icon">
				<input type="text" placeholder="账号/邮箱/手机号" class="login_txtbx email" id="login_txtbx" autocomplete="off" name="login_txtbx"/>
			</dd>
			<%-- <span id="user_Span">${mes==""?"":mes}</span> --%>
			<dd class="pwd_icon">
				<input type="password" placeholder="密码" class="login_txtbx" id="pwd_icon" name="pwd_icon"/><%-- <span id="pwd_Span">${mes==""?"":mes}</span> --%>
				<img src="Login_images/hide.png" id="img_eyes" style="position: relative;top: -35px;left: 250px;width: 30px;height: 30px;cursor: pointer;">
			</dd>
			<dd class="val_icon">
				<div class="checkcode">
					<input type="text" id="J_codetext" placeholder="验证码" maxlength="4" class="login_txtbx">
					<canvas class="J_codeimg" id="myCanvas" onclick="createCode()"></canvas>
				</div>
				<input type="button" value="验证码核验" class="ver_btn" onClick="validate();">
			</dd>

			<div class="login-box">
				
					<a href="javascript:"  id="submit_btn">
						<span></span>
						<span></span>
						<span></span>
						<span></span>
						
						提交
					</a>
				
			</div>
		</dl>
		<!-- <script type="text/javascript">
	$("#submit_btn").click(function(){
	
		
		var name = $("#login_txtbx").val();
				var pwd = $("#pwd_icon").val();
				$.ajax({
					url : "LoginServlet", // 路径
					type : "post", // 请求方式
					data : {
						"login_txtbx" : name,
						"pwd_icon" : pwd
					},
					dataType : "text",// 响应数据类型
					success : callback
				// 回调函数

				})
				function callback(result) {
					alert("666");
					if (result == "true") {
						window.location.href = "../Manager/index.jsp";
					} else {
						window.location.href = "Login.jsp";
					}

				}
		})
		</script> -->
		<script type="text/javascript">
		
		
			//支持Enter键登录
			document.onkeydown = function(e) {
				if (!e) e = window.event;
				if ((e.keyCode || e.which) == 13) {
					var obtnLogin = document.getElementById("submit_btn");
					obtnLogin.focus();
				}
			}
			
			
			$(function() {
				//提交表单
				$('#submit_btn').click(function() {
					show_loading();
					var myReg = /^\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*$/; //邮件正则
					if ($('.login_txtbx').val() == '') {
						show_err_msg('账号还没填呢！');
						$('.login_txtbx').focus();
					} /* else if (!myReg.test($('.email').val())) {
						show_err_msg('您的邮箱格式错咯！');
						$('.login_txtbx').focus();
					} */ else if ($('#pwd_icon').val() == '') {
						show_err_msg('密码还没填呢！');
						$('#pwd_icon').focus();
					}  
					else if($("#J_codetext").val()==""){
					show_err_msg('验证码不可以为空哦！');
						$('#pwd_icon').focus();
					}
					else {
						//ajax提交表单，#login_form为表单的ID。 如：$('#login_form').ajaxSubmit(function(data) { ... });
						
						show_msg('正在验证登录信息,请稍后!', "${pageContext.request.contextPath}/LoginServlet");
	
						//window.location.href="index.jsp";
						
					} 
				});
			});
		</script>
		<script type="text/javascript">
			//获取元素（两种方式都可以）
			var input = document.querySelector('#pwd_icon');
			var imgs = document.getElementById('img_eyes');		
			//下面是一个判断每次点击的效果
			var flag = 0;
			imgs.onclick = function() {
				if (flag == 0) {
					input.type = 'text';
					img_eyes.src = 'Login_images/show.png'; //睁眼图
					flag = 1;
				} else {
					input.type = 'password';
					img_eyes.src = 'Login_images/hide.png'; //闭眼图
					flag = 0;
				}
			}
			
		</script>
	</body>
</html>

