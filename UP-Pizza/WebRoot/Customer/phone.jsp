<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%><!--[if IE 8 ]><html class="ie ie8" lang="en"> <![endif]-->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>

	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="maximum-scale=1.0,minimum-scale=1.0,user-scalable=0,width=device-width,initial-scale=1.0" />
		<title>换绑手机号</title>
		<link rel="stylesheet" type="text/css" href="css/phone_1.css" />
		<link rel="stylesheet" type="text/css" href="css/inputStyle.css" />
		<style type="text/css">
			body {
				 background:linear-gradient(to top,pink,black); 
				/* background:linear-gradient(to bottom,#AE5DA1,#E468A2,#004986); */
			}

			#tish,
			#ts,
			#tishi,
			#tss,
			#tsi {
				position: relative;
				top: 120px;
				left: 280px;
			}
		</style>
	</head>
	<body sroll="no" onclick="onload">
		<div id="form_info">
			<form name="form1" onsubmit="return checkreg()" action="登录与注册.html" method="post">
				<div class="div_f">
					<div class="div_col" id="me">
						<div class="div_c_l"><span id="name_1"> 姓名</span>
						</div>
						<div class="div_c_r"><input type="text" name="name" id="name" placeholder="请填写真实姓名">
							<span id="tish"></span></input>
						</div>
					</div>
				</div>
				<div class="div_f">
					<div class="div_col" id="me">
						<div class="div_c_l"><span id="pwd_1">密码</span>
						</div>
						<div class="div_c_r"><input type="password" name="password" id="password" onkeydown="" value="" placeholder="6~20位数字、字符任意组合">
							<span id="ts"></span></input>
						</div>
					</div>
				</div>
				<div class="div_f">
					<div class="div_col" id="me">
						<div class="div_c_l"><span id="pwd_2">确认密码</span>
						</div>
						<div class="div_c_r"><input type="password" name="passagain" id="Pwdagain" onkeydown="" value="" placeholder="请再次输入密码">
							<span id="tishi"></span></input>
						</div>
					</div>

				</div>
				<div class="div_f">
					<div class="div_col" id="me">
						<div class="div_c_l"><span id="phone_1">手机号码</span>
						</div>
						<div class="div_c_r"><input type="tel" id="phone" name="phone" onkeydown="" id="phone" value="" placeholder="请输入手机号码">
							<span id="tss"></span>
						</div>
					</div>

				</div>

				<div class="div_f">
					<div class="div_col" id="me">
						<div class="div_c_l"><span id="yanzheng_1">验证码</span>
						</div>
						<div class="div_c_r"><input id="dynamic" value="发送验证码" type="button" onclick="sendMessage(60)">
							<input type="tel" name="code" onblur="sub();" onkeydown="" id="code" placeholder="请输入验证码">
							<span id="tsi"></span>
						</div>
					</div>
				</div>
				<div class="div_f">
					<div class="div_col" id="me">
						<div class="div_c_l"><span id="sex_1">性别</span>
						</div>
						<div class="div_c_r">
							<div class="inp_radio">
								<div class="checkboxforget1">
									<input type="radio" id="Remember1" name="sex" id="sex" value="0" checked /><span id="check_man">
										男
									</span>
									<label for="Remember1"></label>
								</div>

							</div>
							<div class="inp_radio">
								<div class="checkboxforget1">
									<input type="radio" id="Remember2" name="sex" id="sex" value="1" /><span id="check_woman">
										女
									</span>
									<label for="Remember2"></label>
								</div>

							</div>
						</div>
					</div>
				</div>
				<button id="submit" class="btn_1">绑定</button>

			</form>

		</div>

		<script type="text/javascript">
			function checkreg() {
				var myreg = /^(((13[0-9]{1})|(15[0-9]{1})|(18[0-9]{1})|(17[0-9]{1}))+\d{8})$/;
				if (document.form1.name.value == "") {
					//alert("请输入您的用户名!");
					document.getElementById("tish").innerHTML = "<font color='red'>请输入您的用户名!</font>";
					form1.name.focus();
					return false;
				}
				document.getElementById("tish").innerHTML = "<font color='green'>✔</font>";
				//          if (document.form1.User.value.length<4 || document.form1.User.value.length>15)
				// {
				//  alert("用户名长度限制在4-15位!");
				//  form1.User.focus();
				//  return false;
				// }
				if (document.form1.password.value == "") {
					//alert("请输入密码!");
					document.getElementById("ts").innerHTML = "<font color='red'>请输入密码</font>";
					form1.password.focus();
					return false;
				}
				if (document.form1.password.value.length < 6 || document.form1.password.value.length > 20) {
					//alert("密码长度限制在6-20位!");
					document.getElementById("ts").innerHTML = "<font color='red'>密码长度限制在6-20位!</font>";
					form1.password.focus();
					return false;
				}
				document.getElementById("ts").innerHTML = "<font color='green'>✔</font>";
				if (document.form1.password.value != document.form1.Pwdagain.value) {
					document.getElementById("tishi").innerHTML = "<font color='red'>两次密码不相同</font>";
					form1.password.focus();
					return false;
				}
				document.getElementById("tishi").innerHTML = "<font color='green'>✔</font>";

				if (!myreg.test(document.form1.phone.value)) {
					document.getElementById("tss").innerHTML = "<font color='red'>手机号码错误</font>";
					form1.password.focus();
					return false;
				}
				document.getElementById("tss").innerHTML = "<font color='green'>✔</font>";
				if (document.form1.code.value == "") {

					document.getElementById("tsi").innerHTML = "<font color='red'>验证码不能为空</font>";
					form1.code.focus();
					return false;
				}
				document.getElementById("tsi").innerHTML = "<font color='green'>✔</font>";
				location.href = "index.html";
			}

			function sendMessage(t) {
				var myreg = /^(((13[0-9]{1})|(15[0-9]{1})|(18[0-9]{1})|(17[0-9]{1}))+\d{8})$/;
				if (!myreg.test(document.form1.phone.value)) {
					alert('请输入有效的手机号码！');
					return false;
				} //
				document.form1.dynamic.disabled = true;
				for (i = 1; i <= t; i++) {
					window.setTimeout("update_p(" + i + "," + t + ")", i * 1000);
				}

			}



			var codeStr = 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789';
			var oDiv = document.getElementById('dynamic');
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

			// 点击刷新验证码
			oDiv.onclick = function() {
					var str = '';
					// 验证码有几位就循环几次
					for (var i = 0; i < 4; i++) {
						var ran = getRandom(0, 62);
						str += codeStr.charAt(ran);
					}
					alert("您的验证码为："+str);
				
			}

			function update_p(num, t) {
				if (num == t) {
					document.form1.dynamic.value = " 重新发送 ";
					document.form1.dynamic.disabled = false;
				} else {
					printnr = t - num;
					document.form1.dynamic.value = " (" + printnr + ")秒后重发";
					
				}
			}
		</script>
		</div>
	</body>
</html>
