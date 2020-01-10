<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Admins</title>
<link rel="stylesheet" href="/Net/layui/css/layui.css">
<script src="/Net/layui/layui.js"></script>
<script src="/Net/layui/lay/modules/jquery.js"></script>
<script src="/Net/layui/lay/modules/element.js"></script>
<style>
.layui-footer {
	margin: 0 0 0 -16%;
	text-align: right;
}

.layui-body {
	margin: 0 0 0 -15%;
}
</style>
</head>

<body class="layui-layout-body">
	<div class="layui-layout layui-layout-admin">
		<div class="layui-header">
			<ul class="layui-nav" style="padding-left: 5%; padding-right: -15%;">
				<li class="layui-nav-item"><a
					href="/Net/jsp/Admins/QueryCourses.do">Courses</a></li>
				<li class="layui-nav-item"><a
					href="/Net/jsp/Admins/QueryFlows.do">Flows</a></li>
				<li class="layui-nav-item"><a
					href="/Net/jsp/Admins/QueryLearns.do">Learns</a></li>
				<li class="layui-nav-item"><a
					href="/Net/jsp/Admins/QueryNotices.do">Notices</a></li>
				<li class="layui-nav-item"><a
					href="/Net/jsp/Admins/QueryOrders.do">Orders</a></li>
				<li class="layui-nav-item"><a
					href="/Net/jsp/Admins/QueryReceivers.do">Receivers</a></li>
				<li class="layui-nav-item"><a
					href="/Net/jsp/Admins/QuerySpecies.do">Species</a></li>
				<li class="layui-nav-item"><a
					href="/Net/jsp/Admins/QueryTeachers.do">Teachers</a></li>
				<li class="layui-nav-item"><a
					href="/Net/jsp/Admins/QueryUsers.do">Users</a></li>
			</ul>
			<ul class="layui-nav layui-layout-right">
				<li class="layui-nav-item"><a href="javascript:;"> <img
						src="http://t.cn/RCzsdCq" class="layui-nav-img"> 个人中心
				</a>
					<dl class="layui-nav-child">
						<dd>
							<a href="/Net/jsp/Admins/logout.do">退出</a>
						</dd>
					</dl></li>
			</ul>
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