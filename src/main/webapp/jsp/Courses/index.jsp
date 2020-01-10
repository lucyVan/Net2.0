<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
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
	height: 30px;
	width: 30px;
	top: 6px;
	left: 30%;
	border: none;
	outline: none;
	cursor: pointer;
}

.word1 {
	margin: 2% 0 0 2%;
	font-size: 25px;
}

.btn2 {
	width: 22%;
	height: 200px;
	background-color: #E8E8E8;
	border: none;
	color: black;
	padding: 15px 32px;
	text-align: center;
	text-decoration: none;
	display: inline-block;
	font-size: 16px;
	margin: 2% 1% 0 1.5%;
	cursor: pointer;
	-webkit-transition-duration: 0.4s; /* Safari */
	transition-duration: 0.4s;
}

.btn2:hover {
	box-shadow: 0 12px 16px 0 rgba(0, 0, 0, 0.24), 0 17px 50px 0
		rgba(0, 0, 0, 0.19);
}

.btn3 {
	width: 17.5%;
	height: 200px;
	background-color: #E8E8E8;
	border: none;
	color: black;
	padding: 15px 32px;
	text-align: center;
	text-decoration: none;
	display: inline-block;
	font-size: 16px;
	margin: 2% 1% 0 1%;
	cursor: pointer;
	-webkit-transition-duration: 0.4s; /* Safari */
	transition-duration: 0.4s;
}

.btn3:hover {
	box-shadow: 0 12px 16px 0 rgba(0, 0, 0, 0.24), 0 17px 50px 0
		rgba(0, 0, 0, 0.19);
}

.footer{
		width: 100%;
		height: 200px;
		background-color: #F0F0F0;
		margin-top: 5%;
		border-radius: 25px 25px 0 0;
		text-align: center;
}
</style>
</head>

<body class="layui-layout-body" style="overflow-y: scroll;">
	<div class="layui-layout layui-layout-admin">
		<div class="layui-header">
			<div class="layui-logo">Net云课堂</div>
			<!-- 头部区域（可配合layui已有的水平导航） -->
			<ul class="layui-nav layui-layout-left">
				<li class="layui-nav-item"><a href="">首页</a></li>
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
					<li class="layui-nav-item"><a href="/Net/jsp/Admins/login.jsp">
							<img src="http://t.cn/RCzsdCq" class="layui-nav-img"> 登录
					</a></li>
				</c:if>
			</ul>
		</div>
		<script>
			//JavaScript代码区域
			layui.use('element', function() {
				var element = layui.element;
			});
		</script>
		<div class="layui-carousel" id="test1">
			<div carousel-item>
				<div><img src="/Net/img/turn1.png" style="width: 100%;height: 100%;"></div>
				<div><img src="/Net/img/turn2.png" style="width: 100%;height: 100%;"></div>
				<div><img src="/Net/img/turn3.png" style="width: 100%;height: 100%;"></div>
				<div><img src="/Net/img/turn4.png" style="width: 100%;height: 100%;"></div>
				<div><img src="/Net/img/turn5.png" style="width: 100%;height: 100%;"></div>
				<div><img src="/Net/img/turn6.png" style="width: 100%;height: 100%;"></div>
			</div>
		</div>
		<script>
			layui.use('carousel', function() {
				var carousel = layui.carousel;
				//建造实例
				carousel.render({
					elem : '#test1',
					width : '100%',//设置容器宽度
					height : '440px',
					arrow : 'always' //始终显示箭头
				//,anim: 'updown' //切换动画方式
				});
			});
		</script>
		<div class="word1">
			<p>&nbsp;&nbsp;&nbsp;微专业<font size="3">&nbsp;&nbsp;&nbsp;Net云课堂大推荐课程，让学习有章有序</font></p>
		</div>
		<!-- style="background-image: url(course12.png);" --> 
		&nbsp;&nbsp;
		<a href="CoursesDetial1.jsp"><button class="btn btn2" style="background-image: url(/Net/img/courses11.png); background-repeat:no-repeat;  background-size:100% 100%;"></button></a>
		<button class="btn btn2" style="background-image: url(/Net/img/courses12.png); background-repeat:no-repeat;  background-size:100% 100%;"></button>
		<button class="btn btn2" style="background-image: url(/Net/img/courses13.png);background-repeat:no-repeat;  background-size:100% 100%;"></button>
		<button class="btn btn2" style="background-image: url(/Net/img/courses14.png);background-repeat:no-repeat; background-size:100% 100%;"></button>
		<div class="word1">
			<p>&nbsp;&nbsp;&nbsp;系列课程</p>
		</div>
		&nbsp;&nbsp;
		<button class="btn btn2" style="background-image: url(/Net/img/courses24.png);  background-repeat:no-repeat;  background-size:100% 100%;"></button>
		<button class="btn btn2" style="background-image: url(/Net/img/courses22.png);  background-repeat:no-repeat;  background-size:100% 100%;"></button>
		<button class="btn btn2" style="background-image: url(/Net/img/courses23.png);  background-repeat:no-repeat;  background-size:100% 100%;"></button>
		<button class="btn btn2" style="background-image: url(/Net/img/courses21.png);  background-repeat:no-repeat;  background-size:100% 100%;"></button>
		<div class="word1">
			<p>&nbsp;&nbsp;&nbsp;计算机<font size="3">&nbsp;&nbsp;&nbsp;&nbsp;前沿技术&nbsp;&nbsp;&nbsp;程序设计与开发&nbsp;&nbsp;&nbsp;计算机基础与应用&nbsp;&nbsp;&nbsp;软件工程&nbsp;&nbsp;&nbsp;网络与安全</font></p>
		</div>
		&nbsp;&nbsp;
		<a href="CoursesDetial1.jsp"><button class="btn btn3" style="background-image: url(/Net/img/courses31.png); background-repeat:no-repeat;  background-size:100% 100%;"></button></a>
		<button class="btn btn3" style="background-image: url(/Net/img/courses35.png); background-repeat:no-repeat;  background-size:100% 100%;"></button>
		<button class="btn btn3" style="background-image: url(/Net/img/courses34.png); background-repeat:no-repeat;  background-size:100% 100%;"></button>
		<button class="btn btn3" style="background-image: url(/Net/img/courses32.png); background-repeat:no-repeat;  background-size:100% 100%;"></button>
		<button class="btn btn3" style="background-image: url(/Net/img/courses33.png); background-repeat:no-repeat;  background-size:100% 100%;"></button>
		<div class="word1">
			<p>&nbsp;&nbsp;&nbsp;外语<font size="3">&nbsp;&nbsp;&nbsp;&nbsp;通用英语&nbsp;&nbsp;&nbsp;综合语种&nbsp;&nbsp;&nbsp;跨文化交际&nbsp;&nbsp;&nbsp;翻译&nbsp;&nbsp;&nbsp;文学与语言学</font></p>
		</div>
		&nbsp;&nbsp;
		<button class="btn btn3" style="background-image: url(/Net/img/courses41.png); background-repeat:no-repeat;  background-size:100% 100%;"></button>
		<button class="btn btn3" style="background-image: url(/Net/img/courses42.png); background-repeat:no-repeat;  background-size:100% 100%;"></button>
		<button class="btn btn3" style="background-image: url(/Net/img/courses43.png); background-repeat:no-repeat;  background-size:100% 100%;"></button>
		<button class="btn btn3" style="background-image: url(/Net/img/courses44.png); background-repeat:no-repeat;  background-size:100% 100%;"></button>
		<button class="btn btn3" style="background-image: url(/Net/img/courses45.png); background-repeat:no-repeat;  background-size:100% 100%;"></button>
		<div class="word1">
			<p>&nbsp;&nbsp;&nbsp;理学<font size="3">&nbsp;&nbsp;&nbsp;&nbsp;数学&nbsp;&nbsp;&nbsp;物理&nbsp;&nbsp;&nbsp;化学&nbsp;&nbsp;&nbsp;天文学&nbsp;&nbsp;&nbsp;大气与海洋</font></p>
		</div>
		&nbsp;&nbsp;
		<button class="btn btn3" style="background-image: url(/Net/img/courses51.png); background-repeat:no-repeat;  background-size:100% 100%;"></button>
		<button class="btn btn3" style="background-image: url(/Net/img/courses52.png); background-repeat:no-repeat;  background-size:100% 100%;"></button>
		<button class="btn btn3" style="background-image: url(/Net/img/courses53.png); background-repeat:no-repeat;  background-size:100% 100%;"></button>
		<button class="btn btn3" style="background-image: url(/Net/img/courses54.png); background-repeat:no-repeat;  background-size:100% 100%;"></button>
		<button class="btn btn3" style="background-image: url(/Net/img/courses55.png); background-repeat:no-repeat;  background-size:100% 100%;"></button>
	
		<div class="word1">
			<p>&nbsp;&nbsp;&nbsp;哲学<font size="3">&nbsp;&nbsp;&nbsp;&nbsp;历史&nbsp;&nbsp;&nbsp;社会&nbsp;&nbsp;&nbsp;思政</font></p>
		</div>
		&nbsp;&nbsp;
		<button class="btn btn3" style="background-image: url(/Net/img/courses61.png); background-repeat:no-repeat;  background-size:100% 100%;"></button>
		<button class="btn btn3" style="background-image: url(/Net/img/courses62.png); background-repeat:no-repeat;  background-size:100% 100%;"></button>
		<button class="btn btn3" style="background-image: url(/Net/img/courses63.png); background-repeat:no-repeat;  background-size:100% 100%;"></button>
		<button class="btn btn3" style="background-image: url(/Net/img/courses64.png); background-repeat:no-repeat;  background-size:100% 100%;"></button>
		<button class="btn btn3" style="background-image: url(/Net/img/courses65.png); background-repeat:no-repeat;  background-size:100% 100%;"></button>
</body>
</html>

