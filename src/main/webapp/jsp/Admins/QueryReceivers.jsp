﻿<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1">
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
	margin: 0 0 0 -10%;
}

.layui-table {
	width: 97%;
}
</style>
</head>

<body class="layui-layout-body">
	<c:if test="${state == '2'}">
		<div class="layui-layout layui-layout-admin">
			<div class="layui-header">
				<ul class="layui-nav" lay-filter=""
					style="padding-left: 5%; padding-right: -15%;">
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

			<!-- 内容主体区域 -->
			<div style="padding: 15%;">
				<div class="layui-body">
					<table class="layui-table">
						<colgroup>
							<col width="150">
							<col width="200">
							<col>
						</colgroup>
						<thead>
							<tr>
								<th>地址编号</th>
								<th>用户编号</th>
								<th>收货人名称</th>
								<th>收货人电话</th>
								<th>收获省</th>
								<th>收获市</th>
								<th>收获区县</th>
								<th>收获地址</th>
								<th>修改</th>
								<th>删除</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${msg}" var="obj">
								<tr>
									<td>${obj.rid}</td>
									<td>${obj.uid}</td>
									<td>${obj.rname}</td>
									<td>${obj.rtel}</td>
									<td>${obj.rprovince}</td>
									<td>${obj.rcity}</td>
									<td>${obj.rdistrict}</td>
									<td>${obj.radress}</td>
									<td><a style="width: 100%" type="button"
										href="/Net/jsp/Admins/DeleteReceivers.do/${obj.rid}"
										class="layui-btn layui-btn-radius  layui-btn-normal">删除</a></td>
									<td><a style="width: 100%" type="button"
										href="/Net/jsp/Admins/UpdateReceivers.do/${obj.rid}"
										class="layui-btn layui-btn-radius  layui-btn-normal">修改</a></td>
								</tr>
							</c:forEach>
							<tr>
								<th colspan="10"><a style="width: 100%" type="button"
									href="/Net/jsp/Admins/InsertReceivers.do"
									class="layui-btn layui-btn-radius  layui-btn-normal">添加</a><br>
								</th>
							</tr>
							<tr>
								<th colspan="10">
									<!--分页文字信息  --> 当前 ${pageInfo.pageNum }页,总${pageInfo.pages}页,总
									${pageInfo.total } 条记录 <!-- 分页条信息 --> <a
									href="/Net/jsp/Admins/QueryReceivers.do?pn=1">首页</a> <c:if
										test="${pageInfo.hasPreviousPage }">
										<a
											href="/Net/jsp/Admins/QueryReceivers.do?pn=${pageInfo.pageNum-1}">
											<span>&laquo;</span>
										</a>
									</c:if> <c:forEach items="${pageInfo.navigatepageNums }"
										var="page_Num">
										<c:if test="${page_Num == pageInfo.pageNum }">
											<a href="#">${page_Num }</a>
										</c:if>
										<c:if test="${page_Num != pageInfo.pageNum }">
											<a href="/Net/jsp/Admins/QueryReceivers.do?pn=${page_Num }">${page_Num }</a>
										</c:if>
									</c:forEach> <c:if test="${pageInfo.hasNextPage }">
										<a
											href="/Net/jsp/Admins/QueryReceivers.do?pn=${pageInfo.pageNum+1 }">
											<span>&raquo;</span>
										</a>
									</c:if> <a
									href="/Net/jsp/Admins/QueryReceivers.do?pn=${pageInfo.pages}">末页</a>
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
	</c:if>
	<c:if test="${state == '1'}">
			您没有权限访问
		</c:if>
	<c:if test="${state == null }">
			干啥呢老弟
	</c:if>
</body>

</html>