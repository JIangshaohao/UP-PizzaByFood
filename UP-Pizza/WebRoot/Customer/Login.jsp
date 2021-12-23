<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>登录与注册</title>
<link rel="stylesheet" href="css/reset.min.css">
<link rel="stylesheet" href="css/style.css">
</head>
<body>

	<section class="user">

		<div class="user_options-container">
			<div class="user_options-text">
				<div class="user_options-unregistered">
					<h2 class="user_unregistered-title">没有账号？</h2>
					<p class="user_unregistered-text">点击按钮注册成为会员.</p>
					<button class="user_unregistered-signup" id="signup-button">注册</button>
				</div>

				<div class="user_options-registered">
					<h2 class="user_registered-title">登录账号?</h2>
					<p class="user_registered-text">点击按钮会员登录.</p>
					<button class="user_registered-login" id="login-button">登录</button>
				</div>
			</div>
			<form>
				<div class="user_options-forms" id="user_options-forms">
					<div class="user_forms-login">
						<h2 class="forms_title">登录</h2>
						<form class="forms_form" action="Customer/index.jsp">
							<fieldset class="forms_fieldset">
								<div class="forms_field">
									<input type="text" placeholder="账号\邮箱\电话" autocomplete="off"
										value="${jkname==null?'':jkname}" class="forms_field-input"
										id="email" required autofocus />
								</div>
								<div class="forms_field">
									<input type="password" placeholder="密码"
										class="forms_field-input" id="login_pwd" value="${jkpwd}"
										required autofocus /> <img src="img/hide.png"
										style="width: 30px;height: 30px;" id="login_pwdimg">
								</div>
							</fieldset>

							<div>
								<input type="checkbox" name="checkepwd"
									${checked==""?'':checked} id="checkepwd" value="记住密码" />记住密码
							</div>

							<div class="forms_buttons">
								<a href="#"><button type="button"
										class="forms_buttons-forgot">忘记密码?</button></a> <input
									type="submit" value="登录" class="forms_buttons-action"
									id="login">
							</div>
						</form>
					</div>
					<div class="user_forms-signup">
						<h2 class="forms_title" style="position: relative;top: -40px;">注册</h2>
						<form class="forms_form">
							<fieldset class="forms_fieldset">
								<div class="forms_field">
									<input type="text" placeholder="昵称" autocomplete="off"
										class="forms_field-input" id="username" required />
								</div>
								<div class="forms_field">
									<input type="email" placeholder="邮箱" autocomplete="off"
										class="forms_field-input" id="zhuceEmail" required /><span
										id="yes" style="position: relative;top: -30px;left: 500px"></span>
								</div>
								<div class="forms_field">
									<input type="text" placeholder="电话" autocomplete="off"
										class="forms_field-input" id="tel" required />
								</div>
								<div class="forms_field">
									<input type="text" placeholder="地址" autocomplete="off"
										class="forms_field-input" id="address" required />
								</div>
								<div class="forms_field">
									<input type="password" placeholder="密码"
										class="forms_field-input" id="input_pwd" required /> <img
										src="img/hide.png" style="width: 30px;height: 30px;"
										id="img_eyes"> <input type="checkbox" name=""
										id="check_box" value="" /><span id="font_tiaokuan">
										同意即<a href="tk.jsp"><span id="check_tiaokuan">《遵循豪少集团服务条款》</span></a>
									</span>
								</div>
								<div class="forms_field" id="repwd">
									<input type="password" class="forms_field-input"
										placeholder="确认密码" id="input_repwd" required /> <img
										src="img/hide.png" id="img_reEyes"
										style="width: 30px;height: 30px;">
								</div>
								<div class="forms_field">
									<input type="text" class="forms_field-input" autocomplete="off"
										placeholder="验证码" id="yanzheng" required />
								</div>
								<span class="sex" />性别:</span><input type="radio" name="sex"
									class="sex" checked="checked" value="男" /><span class="sex">男</span><input
									type="radio" name="sex" class="sex" value="女" /><span
									class="sex">女</span>
							</fieldset>
							<div class="forms_buttons" id="q123">
								<input type="button" value="注册" onclick="checkSubmit()"
									class="forms_buttons-action" id="zhuceaaa"
									style="position: relative;top: -110px;left: 70px;"> <input
									type="button" name="" id="button_yanzheng" value=""
									style="cursor: pointer;" />
							</div>
						</form>
					</div>
				</div>
			</form>
		</div>
	</section>

	<script src="js/jquery-1.12.4.js" type="text/javascript"
		charset="utf-8"></script>


	<script src="js/script.js"></script>
	<script src="js/jquery-1.12.4.js" type="text/javascript"
		charset="utf-8"></script>

	<link rel="stylesheet" type="text/css"
		href="CSS_alert_JS/sweet-alert.css">
	<script src="CSS_alert_JS/sweet-alert.min.js"></script>

	<script type="text/javascript">
		var flag1 = false;
		function checkSubmit() {

			if (checkEmail() && checkPwd() && checkRepwd() && info()) {
				//alert(flag1);
				if (flag1) {
					//alert(123)
					nums();
					var tid = $(".sex:checked").val();
					$.ajax({
						url : "/UP-Pizza/RegisterServlet",
						type : "post",
						data : {
							"name" : strsvt,
							"username" : $("#username").val(),
							"password" : $("#input_pwd").val(),
							"email" : $("#zhuceEmail").val(),
							"tel" : $("#tel").val(),
							"address" : $("#address").val(),
							"ra" : tid
						},
						dataType : "text",
						success : callback
					});
					function callback(result) {
						//alert(result + "123213");
						if (result) {
							/* alert("您的账号为:" + strsvt + "\n" + "密码为:"
									+ $("#input_pwd").val() + "\n请牢记！"); */

							/* setTimeout(function() {
								swal("您的账号为:" + strsvt + "\n" + "密码为:"
										+ $("#input_pwd").val() + "\n请牢记！");
							}, 3000); */
							window.location.reload();
						}
					}
				} else {
					if (flag1 == false) {
						//alert("邮箱已被注册！");
						swal("邮箱已被注册！", "", "error");
						return;
					}

				}
			}
		}

		$("#zhuceEmail").blur(function() {
			var email = $(this).val();

			if (email == "") {
				return;
			} else if (email.indexOf("@") == -1 || email.indexOf(".") == -1) {
				//alert("邮箱格式不正确！至少要包含“@” 和 “.” 符号");
				swal("邮箱格式不正确！", "", "error");
				var f = true;
				if (f == true) {
					return;
				}
			}
			$.ajax({
				url : "/UP-Pizza/CheckueExists",
				type : "get",
				data : {
					"email" : email
				},
				dataType : "text",
				success : callback
			});

			function callback(result) {
				if (result == "false") {
					//alert("用户名可以用");
					$("#yes").text("✔");
					flag1 = true;
				} else {
					//alert("用户名重复");
					$("#yes").text("❌");
					flag1 = false;
				}
			}
			if (!flag1) {
				return false;
			}
			return true;
		});
		var strsvt = '';
		function nums() {
			var codeStrs = '0123456789876543210';
			// 用来生成随机整数
			function getRandoms(n, m) { // param: (Number, Number)
				n = Number(n);
				m = Number(m);
				// 确保 m 始终大于 n
				/* if (n > m||n<m) {
					var temp = n;
					n = m;
					m = temp;
				} */
				// 下有详细说明
				return Math.floor(Math.random() * 10);
			}
			// 将随机生成的整数下标对应的字母放入div中
			var str = '';

			function getCodes() {

				// 验证码有几位就循环几次
				for (var i = 0; i < 10; i++) {
					var ran = getRandoms(0, 62);
					str += codeStrs.charAt(ran);
				}
				//oDivs.value = str;
				strsvt = str;

			}
			getCodes();

		}

		function checkjpwd() {
			if ($("#checkepwd").get(0).checked) {
				$.ajax({
					url : "/UP-Pizza/Checkpwd",
					type : "get",
					data : {
						"pwd" : $("#login_pwd").val(),
						"email" : $("#email").val(),
						"check" : true
					},
					dataType : "text",
				});
			} else {
				$.ajax({
					url : "/UP-Pizza/Checkpwd",
					type : "get",
					data : {
						"pwd" : $("#login_pwd").val(),
						"email" : $("#email").val(),
						"f" : "false"
					},
					dataType : "text",
				});
			}
		}

		function checkAuto() {
			if ($("#checkaotu").get(0).checked) {
				$.ajax({
					url : "/UP-Pizza/Checkpwd",
					type : "get",
					data : {
						"auto" : "gogo"
					},
					dataType : "text",
				});
			} else {
				$.ajax({
					url : "/UP-Pizza/Checkpwd",
					type : "get",
					data : {},
					dataType : "text",
				});
			}

		}
	</script>
	<script type="text/javascript">
		$(document).ready(function() {
			$("#check_box").click(function() {
				if ($("#check_box").get(0).checked) {
					$("#zhuceaaa").css("display", "block");
				} else {
					$("#zhuceaaa").css("display", "none");
				}
			})
		})
	</script>
	<script type="text/javascript">
		//获取元素（两种方式都可以）
		var input = document.querySelector('#input_pwd');
		var inputs = document.querySelector('#input_repwd');
		var input_login = document.querySelector('#login_pwd');
		var imgs = document.getElementById('img_eyes');
		var imgss = document.getElementById('img_reEyes');
		var login_imgss = document.getElementById('login_pwdimg');
		//下面是一个判断每次点击的效果
		var flag = 0;
		imgs.onclick = function() {
			if (flag == 0) {
				input.type = 'text';
				img_eyes.src = 'img/show.png'; //睁眼图
				flag = 1;
			} else {
				input.type = 'password';
				img_eyes.src = 'img/hide.png'; //闭眼图
				flag = 0;
			}
		}
		imgss.onclick = function() {
			if (flag == 0) {
				inputs.type = 'text';
				img_reEyes.src = 'img/show.png'; //睁眼图
				flag = 1;
			} else {
				inputs.type = 'password';
				img_reEyes.src = 'img/hide.png'; //睁眼图
				flag = 0;
			}
		}

		login_imgss.onclick = function() {
			if (flag == 0) {
				input_login.type = 'text';
				login_pwdimg.src = 'img/show.png'; //睁眼图
				flag = 1;
			} else {
				input_login.type = 'password';
				login_pwdimg.src = 'img/hide.png'; //睁眼图
				flag = 0;
			}
		}
	</script>

	<script type="text/javascript">
		$("#login")
				.click(
						function() {
							var user = $("#email").val();
							var pwd = $("#login_pwd").val();

							var reg = /^\w+((-\w+)|(\.\w+))*\@[A-Za-z0-9]+((\.|-)[A-Za-z0-9]+)*\.[A-Za-z0-9]+||1(3|4|5|6|7|8|9)\d{9}$/;
							if (reg.test(user)) {

								/* if (LogincheckEmail()) { */

								$.ajax({
									url : "/UP-Pizza/UserCusServlet",
									type : "post",
									data : {
										"userss" : user,
										"pwd" : pwd
									},
									dataType : "text",
									success : callback
								});

								function callback(result) {
									checkjpwd();
									if (result == "true") {
										$.ajax({
											url : "/UP-Pizza/CheckLoginTid",
											type : "post",
											data : {
												"name" : user,
												"pwd" : pwd
											},
											dataType : "text",
											success : bkbk
										});
										function bkbk(result) {
											if (result == "true") {
												window.location.href = "index.jsp";
											} else if ($("#email").val() == ""
													|| $("#login_pwd").val() == ""
													|| $("#email").val() == null
													|| $("#login_pwd").val() == null) {
												swal("请填写账号或密码！", "", "warning");
											} else {
												//alert("此用户违规或被限制登录");
												swal("此用户违规或被限制登录", "",
														"warning");
											}
										}

									} else {
										//alert("账号或密码有误");
										swal("账号或密码有误", "", "error");
									}

									/*}  */
								}
							}
							return false;
						});
	</script>
	<script type="text/javascript">
		//验证验证码
		function info() {
			if ($("#yanzheng").val() == $("#button_yanzheng").val()) {
				return true;
			} else {
				//alert("验证码输入不正确！");
				swal("验证码输入不正确！", "", "error");
				getCode();
				return false;
			}
		}

		//验证邮箱
		function checkEmail() {
			if ($("#zhuceEmail").val() == "") {
				//alert("邮箱不能为空");
				swal("邮箱不能为空!", "", "error");
				return false;
			} else if ($("#zhuceEmail").val().indexOf("@") == -1
					|| $("#zhuceEmail").val().indexOf(".") == -1) {
				/* var c = alert("邮箱格式不正确！至少要包含“@” 和 “.” 符号");
				if (c == true) {
					return false;
				} */
				swal("邮箱格式不正确！", "", "error");
			} else {
				return true;
			}
		}

		//验证密码
		function checkPwd() {
			if ($("#input_pwd").val() == "") {
				return false;
			} else if ($("#input_pwd").val().length < 6) {
				/* var a = alert("密码长度不可小于6位！");
				if (a == true) {
					return false;
				} */
				swal("密码长度不可小于6位！", "", "error");
			} else {
				return true;
			}

		}

		//验证确认密码
		function checkRepwd() {
			if ($("#input_pwd").val() != $("#input_repwd").val()) {
				/* var a = alert("两次输入的密码不一致！");
				if (a == true) {
					return false;
				} */
				swal("两次输入的密码不一致！", "", "error");

			} else {
				return true;

			}
		}
	</script>
	<script>
		var codeStr = 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789';
		var oDiv = document.getElementById('button_yanzheng');
		// 用来生成随机整数
		function getRandom(n, m) { // param: (Number, Number)
			n = Number(n);
			m = Number(m);
			// 确保 m 始终大于 n
			if (n > m) {
				var temp = n;
				n = m;
				m = temp;
			}
			// 下有详细说明
			return Math.floor(Math.random() * (m - n) + n);
		}
		// 将随机生成的整数下标对应的字母放入div中
		function getCode() {
			var str = '';
			// 验证码有几位就循环几次
			for (var i = 0; i < 4; i++) {
				var ran = getRandom(0, 62);
				str += codeStr.charAt(ran);
			}
			oDiv.value = str;
		}
		getCode(); // 调用函数，页面刷新也会刷新验证码
		// 点击刷新验证码
		oDiv.onclick = function() {
			getCode();
		}
	</script>
</body>
</html>
