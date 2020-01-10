<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<meta name="referrer" content="no-referrer" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1">
<title>首页</title>
<link rel="stylesheet" href="/Net/layui/css/layui.css">
<script src="/Net/layui/layui.js"></script>
<script src="/Net/layui/lay/modules/jquery.js"></script>
<script src="/Net/layui/lay/modules/element.js"></script>
<style>
.container {
	height: 10%;
	width: 10%;
	margin: 0 50%;
}

.parent {
	position: relative;
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

.btn {
	height: 35px;
	width: 35px;
	background: url("images/topbar.png") no-repeat -2px -99px;
	top: 6px;
	left: 30%;
	border: none;
	outline: none;
	cursor: pointer;
}

.word1 {
	margin: 2% 0 0 2%;
	font-size: 20px;
}

.btn2 {
	width: 30%;
	height: 250px;
	background-color: #E8E8E8;
	border: none;
	color: black;
	padding: 15px 32px;
	text-align: left;
	text-decoration: none;
	display: inline-block;
	font-size: 16px;
	margin: 2% 1% 0 1%;
	cursor: pointer;
	-webkit-transition-duration: 0.4s; /* Safari */
	transition-duration: 0.4s;
}

.btn2:hover {
	box-shadow: 0 12px 16px 0 rgba(0, 0, 0, 0.24), 0 17px 50px 0
		rgba(0, 0, 0, 0.19);
}

.div {
	font-size: 20px;
	text-align: center;
}

.info {
	height: 230px;
	background-color: #00AEAE;
}

.timage {
	margin: 5% 0 5% 8%;
	float: left;
	border-radius: 50%;
	overflow: hidden;
}
</style>
</head>
<body class="layui-layout-body" style="overflow-y: scroll;">
	<div class="layui-layout layui-layout-admin">
		<div class="layui-header">
			<div class="layui-logo">Net云课堂</div>
			<ul class="layui-nav layui-layout-left">
				<li class="layui-nav-item"><a href="/Net/jsp/Courses/index.jsp">首页</a></li>
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
						placeholder="搜索"> <input type="submit"
						style="display: none;">
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
					<li class="layui-nav-item"><a href="/Net/jsp/Admins/login.jsp">
							<img src="http://t.cn/RCzsdCq" class="layui-nav-img"> 登录
					</a></li>
				</c:if>
			</ul>
		</div>

		<!-- 内容主体区域 -->
		<div class="info">
			<div class="timage">
				<img
					src="https://ss3.bdstatic.com/70cFv8Sh_Q1YnxGkpoWK1HF6hhy/it/u=3761033024,638576009&fm=27&gp=0.jpg"
					width="100px" height="100px" />
			</div>
			<div class="tinfo"
				style="position: relative; left: 5%; top: 20%; width: 60%;">
				<font color="#FFFFFF" size="5px"> ${msg[0].teachers.tname}
					&nbsp ${msg[0].teachers.tsex}<br /> <br />
				</font> <font color="#FFFFFF" size="3px"> ${msg[0].teachers.ttel}<br />
					${msg[0].teachers.taddr}<br /> ${msg[0].teachers.tinfo}
				</font>
			</div>
		</div>

		<div class="layui-tab layui-tab-brief" lay-filter="docDemoTabBrief">
			<div class="layui-tab-content" style="height: 100px;">
				<div class="layui-tab-item"></div>
				<div class="layui-tab-item layui-show">
					<c:forEach items="${msg}" var="obj">
						<a href="/Net/jsp/Courses/CoursesDetail.do/${obj.cid}"> <c:if
								test="${obj.cimage != null}">
								<button class="btn btn2"
									style="background: url(${obj.cimage}) no-repeat;background-size:100% 100%;">
								</button>
							</c:if> <c:if test="${obj.cimage == null}">
								<button class="btn btn2"
									style="background: url(https://i0.hdslb.com/bfs/archive/2de1aab69a47d6056056bf70cc1dcef51e6d4c01.jpg) no-repeat; background-size: 100% 100%;">
								</button>
							</c:if>
						</a>
					</c:forEach>
				</div>
			</div>
		</div>
	</div>
	<script>
		//JavaScript代码区域
		layui.use('element', function() {
			var element = layui.element;

		});
	</script>
</body>
</html>