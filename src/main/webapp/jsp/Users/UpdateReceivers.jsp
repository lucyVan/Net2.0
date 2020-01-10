<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<meta charset="utf-8">
<title>添加地址</title>
<meta name="renderer" content="webkit">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=0">
<link rel="stylesheet" href="/Net/layui/css/layui.css">
<script src="/Net/layui/layui.js"></script>
<script src="/Net/layui/lay/modules/jquery.js"></script>
<script src="/Net/layui/lay/modules/element.js"></script>

<script>
	//JavaScript代码区域
	layui.use('element', function() {
		var element = layui.element;
	});
</script>
<style>
.container {
	height: 10%;
	width: 10%;
	margin: 0 50%;
}

.parent {
	position: relative;
}

.header {
	background-color: #FFFFFF;
	height: 60px;
	margin-top: 10px;
	padding: 0 10px 0 0;
	font-size: 45px;
	margin-bottom: -5px;
	text-align: center;
}

.layui-card {
	margin-left: 33%;
	margin-top: 3%;
}

.layui-card-header {
	margin-left: 20%;
}
.layui-input-block{
	margin-left:12%;
}
.layui-footer {
	margin: 0 0 0 -16%;
	text-align: right;
}

.pic1 {
	height: 200px;
}

.pho {
	text-align: center;
	position: absolute;
	margin-top: 3%;
	margin-left: 34%;
}

.button {
	display: inline-block;
	border-radius: 4px;
	background-color: #393e46;
	border: none;
	color: #eeeeee;
	text-align: center;
	font-size: 14px;
	width: 40%;
	transition: all 0.3s;
	cursor: pointer;
	margin: 10%;
	margin-left: 8%;
	height: 40px;
}

.button span {
	cursor: pointer;
	display: inline-block;
	position: relative;
	transition: 0.3s;
}

.button span:after {
	content: '»';
	position: absolute;
	opacity: 0;
	top: 0;
	right: -20px;
	transition: 0.3s;
}

.button:hover span {
	padding-right: 25px;
}

.button:hover span:after {
	opacity: 1;
	right: 0;
}

.layui-table {
	background-color: rgba(0, 0, 0, 0.2);
}

.container {
	height: 10%;
	width: 10%;
	margin: 0 50%;
}

.layui-footer {
	margin: 0 0 0 -14%;
}

.search {
	width: 200%;
	height: 30px;
	border-radius: 18px;
	outline: none;
	border: 1px solid #ccc;
	padding-left: 10%;
	margin: 12% 0 0 100%;
}

.layui-table {
	border-radius: 10px;
	color: #393e46;
}

.layui-table tr th:first-child, .layui-table tr td:first-child {
	/*设置table左边边框*/
	border-left: 0px;
}

.layui-table tr th:last-child, .layui-table tr td:last-child {
	/*设置table右边边框*/
	border-right: 0px;
}
</style>
</head>

<body>
<body class="layui-layout-body" style="overflow-y: scroll;">
	<div class="layui-layout layui-layout-admin">
		<div class="layui-header">
			<div class="layui-logo">Net云课堂</div>
			<!-- 头部区域（可配合layui已有的水平导航） -->
			<ul class="layui-nav layui-layout-left">
				<li class="layui-nav-item"><a href="/Net/jsp/Courses/index.jsp">首页</a>
				</li>
				<li class="layui-nav-item"><a href="javascript:;">课程分类</a>
					<dl class="layui-nav-child">
						<dd>
							<a href="/Net/jsp/Courses/SearchBySpecies.do/1">计算机</a>
						</dd>
						<dd>
							<a href="/Net/jsp/Courses/SearchBySpecies.do/2">Python</a>
						</dd>
						<dd>
							<a href="/Net/jsp/Courses/SearchBySpecies.do/3">ps</a>
						</dd>
						<dd>
							<a href="/Net/jsp/Courses/SearchBySpecies.do/4">机器学习</a>
						</dd>
						<dd>
							<a href="/Net/jsp/Courses/SearchBySpecies.do/5">人工智能</a>
						</dd>
						<dd>
							<a href="/Net/jsp/Courses/SearchBySpecies.do/6">数学</a>
						</dd>
						<dd>
							<a href="/Net/jsp/Courses/SearchBySpecies.do/7">UI设计</a>
						</dd>
						<dd>
							<a href="/Net/jsp/Courses/SearchBySpecies.do/8">JAVA</a>
						</dd>
					</dl></li>
				<li class="layui-nav-item"><a href="">2020考研</a></li>
				<li class="layui-nav-item"><a
					href=<c:url value="/jsp/Courses/QueryTeachers.do"/>>名师专栏</a></li>
			</ul>
			<div class="container">
				<form action="/Net/jsp/Courses/SearchByAnything.do" method="post"
					class="parent">
					<input type="text" id="search" name="search" class="search"
						placeholder="搜索"> <input type="submit" name="" id=""
						class="btn" style="display: none;">
				</form>
			</div>
			<ul class="layui-nav layui-layout-right">
				<c:if test="${state == '1' || state == '2'}">
					<li class="layui-nav-item"><a href="javascript:;"> <img
							src="http://t.cn/RCzsdCq" class="layui-nav-img"> 个人中心
					</a>
						<dl class="layui-nav-child">
							<dd>
								<a href=<c:url value="/jsp/Users/UsersDetial.do"/>>基本资料</a>
							</dd>
							<dd>
								<a href=<c:url value="/jsp/Users/QueryLearns.do"/>>购物车</a>
							</dd>
							<dd>
								<a href=<c:url value="/jsp/Users/QueryNotices.do"/>>通知</a>
							</dd>
							<dd>
								<a href=<c:url value="/jsp/Users/QueryOrders.do"/>>我的订单</a>
							</dd>
							<dd>
								<a href=<c:url value="/jsp/Users/QueryReceivers.do"/>>收货地址</a>
							</dd>
						</dl></li>
					<li class="layui-nav-item"><a
						href=<c:url value="/jsp/Admins/logout.do"/>>退出</a></li>
				</c:if>
				<c:if test="${state == null }">
					<li class="layui-nav-item"><a href="/Net/jsp/Admins/login.do">
							<img src="http://t.cn/RCzsdCq" class="layui-nav-img"> 登录
					</a></li>
				</c:if>
			</ul>
		</div>
	</div>
		<div class="header">Add/modify shipping address</div>
		<hr style="height: 2px; border: none;dotted #185598;" />

		<div class="layui-fluid">
			<div class="layui-row layui-col-space15">
				<div class="layui-col-md12">
					<div class="layui-card">
						<div class="layui-card-body" pad15>
							<div class="layui-form" >
								<form action="/Net/jsp/Users/${messages}" method="post">
								<div class="layui-form-item">
									<label class="layui-form-label">收货人姓名:</label>
									<div class="layui-input-inline">
										<input type="text" name="rname" placeholder="请输入收货人姓名" value="${msg.rname}" class="layui-input">
									</div>
								</div>
								
								<div class="layui-form-item">
									<label class="layui-form-label">手机号码:</label>
									<div class="layui-input-inline">
										<input type="text" name="rtel" placeholder="请输入手机号" value="${msg.rtel}"  class="layui-input">
									</div>
								</div>
								
								<div class="layui-form-item">
									<label class="layui-form-label">省份:</label>
									<div class="layui-input-inline">
										<input type="text" name="rprovince" placeholder="请输入省份" value="${msg.rprovince}" class="layui-input">
									</div>
								</div>
								
								<div class="layui-form-item">
									<label class="layui-form-label">城市:</label>
									<div class="layui-input-inline">
										<input type="text" name="rcity" placeholder="请输入城市" value="${msg.rcity}" class="layui-input">
									</div>
								</div>
								
								<div class="layui-form-item">
									<label class="layui-form-label">地区:</label>
									<div class="layui-input-inline">
										<input type="text" name="rdistrict" placeholder="请输入地区" value="${msg.rdistrict}" class="layui-input">
									</div>
								</div>
								
								<div class="layui-form-item">
									<label class="layui-form-label">详细地址:</label>
									<div class="layui-input-inline">
										<input type="text" name="radress" placeholder="请输入详细地址" value="${msg.radress}" class="layui-input">
									</div>
								</div>
								
								<div class="layui-form-item">
									<div class="layui-input-block">
										<button type="submit" class="layui-btn" lay-submit lay-filter="setmyinfo">确认提交</button>
										<button type="reset" class="layui-btn layui-btn-danger btn-reset">重新填写</button>
									</div>
								</div>
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>