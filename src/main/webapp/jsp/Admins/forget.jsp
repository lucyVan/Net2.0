<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<meta charset="UTF-8">
<title>找回密码</title>
<!-- 顺序不能更改！！！！！ -->
<link rel="stylesheet" href="/Net/layui/css/layui.css">
<script type="text/javascript" src="/Net/layui/layui.js"></script>
<script type="text/javascript" src="/Net/layui/lay/modules/jquery.js"></script>
<script type="text/javascript" src="/Net/jquery/dist/jquery.min.js"></script>
<script type="text/javascript" src="/Net/layui/lay/modules/element.js"></script>
<script type="text/javascript" src="/Net/css/bootstrap.min.css"></script>
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
.login-box {
	margin-left: 33%;
	margin-top: 11%;
}

.title {
	margin-left: 11%;
}
</style>
</head>





<body class="login-body body"
	style="background-image: url('/Net/img/1.JPG'); background-repeat: no-repeat; background-attachment: fixed; background-size: 100% 100%;">
	<canvas id="canvas" style="position: absolute;z-index:-1"></canvas>

	<div class="layui-fluid" id="loginDiv" align="center"
		style="box-shadow: rgba(24, 34, 47, 0.7) -15px 15px 15px; width: 400px; height: 370px; z-index: 99999; padding: 10px 10px 0px; background: linear-gradient(230deg, rgba(53, 57, 74, 0) 0%, rgb(132, 127, 129) 100%);">
		<div class="layui-card"
			style="background-color: #93c3b9; background-color: rgba(255, 254, 253, 0.5)">
			<!-- Net的LOGOOOOOO！  -->
			<div class="layui-card-header"
				style="background-color: rgba(255, 255, 255, 0);">
				<h3>找回密码</h3>
				<!-- <img src="img/login_1.png" style="height: 35px; "> -->
			</div>
			<!-- 方形框 -->
			<div class="layui-card-body">
				<div class="layui-tab layui-tab-brief" lay-filter="docDemoTabBrief">
					<!-- 找回密码 -->
					<!-- <h4>找回密码</h4> -->
					<!-- 内容框 -->
					<div class="layui-tab-content" style="height: 275px">
						<div class="layui-tab-item layui-show" style="left: 10px">
							<form class="layui-form layui-form-pane"
								action="/Net/jsp/Admins/forget.do" method="post">

								<div class="layui-form-item">
									<label class="layui-form-label">手&nbsp;&nbsp;机</label>
									<div class="layui-input-block">
										<input type="text" name="cellphone"
											id="LAY-user-login-cellphone" lay-verify="phone"
											placeholder="请输入注册时的手机号" class="layui-input"
											style="width: 225px; border-radius: 6px">
									</div>
								</div>
								<div class="layui-form-item" style="margin-top: 6%">
									<label class="layui-form-label">新&nbsp;&nbsp;密&nbsp;&nbsp;码</label>
									<div class="layui-input-block">
										<input type="password" id="password" name="password"
											class="layui-input" lay-verify="password"
											placeholder="请填写6到12位密码" maxlength="20"
											style="width: 225px; border-radius: 6px" />
										<!-- <input type="password" name="password" lay-verify="pass" placeholder="请填写6到12位密码" 
									 autocomplete="off" class="layui-input"> -->
									</div>
								</div>
								<div class="layui-form-item" style="margin-top: 6%">
									<label class="layui-form-label">确&nbsp;认&nbsp;密&nbsp;码</label>
									<div class="layui-input-block">
										<input type="password" name="apassword" lay-verify="pass"
											placeholder="请再次填写6到12位密码" autocomplete="off"
											class="layui-input" style="width: 225px; border-radius: 6px">
										<!-- <input type="password" id="Apassword" name="Apassword" 
                                	class="layui-input" lay-verify="password" placeholder="请填写6到12位密码" maxlength="20" 
                                	 style="width: 240px;border-radius: 6px" /> -->
										<!-- <input type="password" name="password" lay-verify="pass" placeholder="请填写6到12位密码" 
									 autocomplete="off" class="layui-input"> -->
									</div>
								</div>
								<div class="layui-form-item" style="margin-top: 6%">
									<!-- 验证码模块 -->
									<label class="layui-form-label">验证码</label>
									<div class="layui-input-block">
										<!--验证码框  -->
										<input type="text" name="vercode" id="LAY-user-login-vercode"
											class="layui-input" placeholder="输入验证码"
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
									<!-- <button type="reset" class="layui-btn layui-btn-danger btn-reset">重置</button> -->
									<button type="submit" class="layui-btn layui-btn-fluid"
										lay-submit="" lay-filter="sub" style="border-radius: 6px">立即登录</button>
								</div>
							</form>
						</div>

					</div>
				</div>
			</div>
		</div>
	</div>











	<!-- 忘记密码JS -->
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