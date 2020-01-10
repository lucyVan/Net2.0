<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
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

.layui-body {
	margin: 0 6% 0 -7%;
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
	width: 17.5%;
	height: 230px;
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

.btn2:hover {
	box-shadow: 0 12px 16px 0 rgba(0, 0, 0, 0.24), 0 17px 50px 0
		rgba(0, 0, 0, 0.19);
}

.div {
	font-size: 20px;
	text-align: center;
}

.layui-footer {
	margin: 0 0 0 -14%;
}

table {
	width: 80px;
	table-layout: fixed; /* 只有定义了表格的布局算法为fixed，下面td的定义才能起作用。 */
}

td {
	width: 60%;
	word-break: keep-all; /* 不换行 */
	white-space: nowrap; /* 不换行 */
	overflow: hidden; /* 内容超出宽度时隐藏超出部分的内容 */
	text-overflow: ellipsis;
	/* 当对象内文本溢出时显示省略标记(...) ；需与overflow:hidden;一起使用*/
}
</style>
</head>

<body class="layui-layout-body">
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
		<!-- 内容主体区域 -->
		<div style="padding: 15%;">
			<div class="layui-body">
				<table class="layui-table">
					<colgroup>
						<col width="8%">
						<col width="8%">
						<col width="10%">
						<col width="11%">
						<col>
						<col width="8%">
					</colgroup>
					<thead>
						<tr>
							<th>老师名字</th>
							<th>老师性别</th>
							<th>老师电话</th>
							<th>老师地址</th>
							<th>老师信息</th>
							<th>开设课程</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${msg}" var="obj">
							<tr>
								<td>${obj.tname}</td>
								<td>${obj.tsex}</td>
								<td>${obj.ttel}</td>
								<td>${obj.taddr}</td>
								<td>${obj.tinfo}</td>
								<td><a style="width: 100%" type="button"
									href="/Net/jsp/Courses/QueryCoursesByTeachers.do/${obj.tid}"
									class="layui-btn layui-btn-radius  layui-btn-normal">查看</a></td>
							</tr>
						</c:forEach>
						<tr>
							<th colspan="6">
								<!--分页文字信息  --> 当前 ${pageInfo.pageNum }页,总${pageInfo.pages}页,总
								${pageInfo.total } 条记录 <!-- 分页条信息 --> <a
								href="/Net/jsp/Courses/QueryTeachers.do?pn=1">首页</a> <c:if
									test="${pageInfo.hasPreviousPage }">
									<a
										href="/Net/jsp/Courses/QueryTeachers.do?pn=${pageInfo.pageNum-1}">
										<span>&laquo;</span>
									</a>
								</c:if> <c:forEach items="${pageInfo.navigatepageNums }" var="page_Num">
									<c:if test="${page_Num == pageInfo.pageNum }">
										<a href="#">${page_Num }</a>
									</c:if>
									<c:if test="${page_Num != pageInfo.pageNum }">
										<a href="/Net/jsp/Courses/QueryTeachers.do?pn=${page_Num }">${page_Num }</a>
									</c:if>
								</c:forEach> <c:if test="${pageInfo.hasNextPage }">
									<a
										href="/Net/jsp/Courses/QueryTeachers.do?pn=${pageInfo.pageNum+1 }">
										<span>&raquo;</span>
									</a>
								</c:if> <a
								href="/Net/jsp/Courses/QueryTeachers.do?pn=${pageInfo.pages}">末页</a>
							</th>
						</tr>
					</tbody>
				</table>
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