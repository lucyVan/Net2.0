<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<meta charset="UTF-8">
<title>登录与注册</title>
<!-- 顺序不能更改！！！！！ -->
<link rel="stylesheet" href="/Net/layui/css/layui.css">
<script type="text/javascript" src="/Net/layui/layui.js"></script>
<script type="text/javascript" src="/Net/layui/lay/modules/jquery.js"></script>
<script type="text/javascript" src="/Net/jquery/dist/jquery.min.js"></script>
<script type="text/javascript" src="/Net/layui/lay/modules/element.js"></script>
<script type="text/javascript" src="/Net/js/ParticleEffect.js"></script>
<!--动态粒子效果  -->
<script>
	window.onload = function() {
		ParticleEffect.run();
	};
	$(function() {
		var height = document.body.scrollHeight;
		var logo_warp = document.getElementById("loginDiv");
		var margin_top = (height - 100) / 2;
		logo_warp.style.marginTop = margin_top + "px";
	});
</script>
<style type="text/css">
body {
	background-image: url('/Net/img/1.JPG');
	background-repeat: no-repeat;
	background-attachment: fixed;
	background-size: 100% 100%;
}
</style>
</head>
<body class="login-body body">
	<canvas id="canvas" style="position: absolute;z-index:-1"></canvas>
	<div class="layui-fluid" id="loginDiv" align="center"
		style="box-shadow: rgba(24, 34, 47, 0.7) -15px 15px 15px; width: 440px; height: 438px; z-index: 99999; padding: 10px 10px 0px; background: linear-gradient(230deg, rgba(53, 57, 74, 0) 0%, rgb(132, 127, 129) 100%);">
		<div class="layui-card"
			style="background-color: #93c3b9; background-color: rgba(255, 254, 253, 0.5)">
			<!-- Net的LOGOOOOOO！  -->
			<div class="layui-card-header"
				style="background-color: rgba(255, 255, 255, 0);">
				<h3>Net云课堂</h3>
				<!-- <img src="img/login_1.png" style="height: 35px; "> -->
			</div>
			<!-- 方形框 -->
			<div class="layui-card-body">
				<div class="layui-tab layui-tab-brief" lay-filter="docDemoTabBrief">
					<!-- 选择登录或者注册 -->
					<ul class="layui-tab-title">
						<li class="layui-this">登录</li>
						<li>注册</li>
					</ul>
					<!-- 默认为登录的显示页面 -->
					<div class="layui-tab-content" style="height: 300px">
						<div class="layui-tab-item layui-show" style="left: 10px">
							<form class="layui-form layui-form-pane"
								action="/Net/jsp/Admins/login.do" method="post"
								style="margin-top: 5%">
								<div class="layui-form-item">
									<label class="layui-form-label">用户名</label>
									<div class="layui-input-block">
										<input type="text" id="Aname" name="Aname" name="account"
											class="layui-input" lay-verify="account" placeholder="请输入用户名"
											autocomplete="on" maxlength="20"
											style="width: 240px; border-radius: 6px" />
									</div>
								</div>
								<div class="layui-form-item" style="margin-top: 6%">
									<label class="layui-form-label">密&nbsp;&nbsp;&nbsp;码</label>
									<div class="layui-input-block">
										<input type="password" id="Apassword" name="Apassword"
											class="layui-input" lay-verify="password" placeholder="请输入密码"
											maxlength="20" style="width: 240px; border-radius: 6px" />
									</div>
								</div>
								<div class="layui-form-item" style="margin-top: 6%">
									<!-- 验证码模块 -->
									<label class="layui-form-label">验证码</label>
									<div class="layui-input-block">
										<!--验证码框  -->
										<input type="text" name="vercode" id="LAY-user-login-vercode"
											class="layui-input" placeholder="请输入验证码"
											style="display: inline; width: 40%; border-radius: 6px">
										&nbsp;
										<!-- 验证码图片 -->
										<img src="https://www.oschina.net/action/user/captcha"
											onclick="getImage()" title="看不清，换一张" id="img_rand_code"
											alt="" class="layadmin-user-login-codeimg"
											id="LAY-user-get-vercode">
									</div>
									<%-- <input id="vcode" type="password" class="layui-input" placeholder="字母数字组合"
                                           style="display: inline;width: 40%;border-radius: 6px">
                                    <!--&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;-->
                                    <a href="javascript:resetCode()">
                                        <canvas width="100" height="37" id="verifyCanvas"></canvas>
                                        <img id="img_vcode" alt="4位验证码" width="120" height="37"></a> --%>
								</div>
								<div class="layui-form-item">
									<div class="layui-input-block">
										<a href="forget.jsp">忘记密码,找回？</a>
									</div>
								</div>
								<div class="layui-form-item">
									<!-- <button type="reset" class="layui-btn layui-btn-danger btn-reset">重置</button> -->
									<button type="submit" class="layui-btn layui-btn-fluid"
										lay-submit="" lay-filter="sub" style="border-radius: 6px">立即登录</button>
								</div>
							</form>
						</div>
						<!-- 注册的显示页面 -->
						<div class="layui-tab-item">
							<form class="layui-form" action="/Net/jsp/Admins/Registered.do"
								method="post">
								<div class="layui-form-item">
									<label class="layui-form-label">手&nbsp;&nbsp;机</label>
									<div class="layui-input-block">
										<input type="text" name="cellphone"
											id="LAY-user-login-cellphone" lay-verify="phone"
											placeholder="请输入手机号" class="layui-input"
											style="width: 200px; border-radius: 6px">
									</div>
								</div>
								<div class="layui-form-item">
									<label class="layui-form-label">邮&nbsp;&nbsp;箱</label>
									<div class="layui-input-block">
										<input type="text" name="email" id="LAY-user-login-cellphone"
											lay-verify="email" autocomplete="off" placeholder="请输入邮箱"
											class="layui-input" style="width: 200px; border-radius: 6px">
									</div>
								</div>
								<div class="layui-form-item">
									<label class="layui-form-label">密&nbsp;&nbsp;码</label>
									<div class="layui-input-block">
										<input type="password" name="password" lay-verify="pass"
											placeholder="请填写6到12位密码" autocomplete="off"
											class="layui-input" style="width: 200px; border-radius: 6px">
									</div>
								</div>
								<div class="layui-form-item">
									<label class="layui-form-label">确认密码</label>
									<div class="layui-input-block">
										<input type="password" name="Apassword" lay-verify="pass"
											placeholder="请再次确认密码" autocomplete="off" class="layui-input"
											style="width: 200px; border-radius: 6px">
									</div>
								</div>
								<div class="layui-form-item">
									<label class="layui-form-label">昵&nbsp;&nbsp;称</label>
									<div class="layui-input-block">
										<input type="text" name="nickname"
											id="LAY-user-login-nickname" lay-verify="nickname"
											placeholder="请输入你的昵称" class="layui-input"
											style="width: 200px; border-radius: 6px">
									</div>
								</div>

								<div class="layui-form-item">
									<button class="layui-btn layui-btn-fluid"
										style="border-radius: 6px" lay-submit
										lay-filter="LAY-user-reg-submit">立即注册</button>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- 登录JS -->
	<script src="/Net/layui/layui.js"></script>
	<script type="text/javascript">
		layui.use([ 'form', 'layer' ], function() {
			var $ = layui.jquery, form = layui.form(), layer = layui.layer;
			// 验证
			form.verify({
				account : function(value) {
					if (value == "") {
						return "请输入用户名";
					}
				},
				password : function(value) {
					if (value == "") {
						return "请输入密码";
					}
				},
				code : function(value) {
					if (value == "") {
						return "请输入验证码";
					}
				}
			});
			// 提交监听
			form.on('submit(sub)', function(data) {
				layer.alert(JSON.stringify(data.field), {
					title : '最终的提交信息'
				});
				return false;
			})
		})

		//刷新验证码
		function getImage() {
			//  $("#img_rand_code").attr("src", "" + Date());
			location.reload();
		}
	</script>
</body>
</html>