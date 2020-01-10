<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>


<html>

<head>
<meta charset="UTF-8">
<title>订单管理</title>

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

.order {
	margin: 5% 2% 0 5%;
	width: 100%;
	text-align: center;
}

.layui-table {
	width: 90%;
	text-align: center;
}

.pic1 {
	height: 200px;
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

.layui-footer{
	margin:0 0 0 -14%;
	text-align: right;
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
	
		<div class="header">My order</div>
		<hr style="height: 2px;" />
	
		<div class="order">
			<table class="layui-table">
				<colgroup>
					<col width="8%">
					<col>
					<col width="8%">
					<col width="20%">
					<col width="18%">
					<col width="8%">
				</colgroup>
				<thead>
					<tr style="background-color: #FBFBFB;">
						<th style="text-align: center;">订单编号</th>
						<th style="text-align: center;">用户评价</th>
						<th style="text-align: center;">商品价格</th>
						<th style="text-align: center;">交易时间</th>
						<th style="text-align: center;">交易状态</th>
						<th style="text-align: center;">物流详情</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${msg}" var="obj">
						<tr>
							<td>${obj.oid}</td>
							<td>${obj.oevaul}</td>
							<td>${obj.cprice}</td>
							<td><fmt:formatDate value="${obj.ocreatetime}"
									pattern="yyyy-MM-dd HH:mm:ss" /></td>
							<td><a href="/Net/jsp/Users/UpdateOrders.do/${obj.oid}"
								class="layui-btn layui-btn-radius  layui-btn-normal">评价</a><a
								href="/Net/jsp/Users/DeleteOrders.do/${obj.oid}"
								class="layui-btn layui-btn-radius  layui-btn-normal">删除</a></td>
							<td><a href="/Net/jsp/Users//QueryFlows.do/${obj.oid}"
								class="layui-btn layui-btn-radius  layui-btn-normal">查看</a></td>
						</tr>
					</c:forEach>
					<tr>
						<th colspan="6">
							<!--分页文字信息  --> 当前 ${pageInfo.pageNum }页,总${pageInfo.pages}页,总
							${pageInfo.total } 条记录 <!-- 分页条信息 --> <a
							href="/Net/jsp/Users/QueryOrders.do?pn=1">首页</a> <c:if
								test="${pageInfo.hasPreviousPage }">
								<a href="/Net/jsp/Users/QueryOrders.do?pn=${pageInfo.pageNum-1}">
									<span>&laquo;</span>
								</a>
							</c:if> <c:forEach items="${pageInfo.navigatepageNums }" var="page_Num">
								<c:if test="${page_Num == pageInfo.pageNum }">
									<a href="#">${page_Num }</a>
								</c:if>
								<c:if test="${page_Num != pageInfo.pageNum }">
									<a href="/Net/jsp/Users/QueryOrders.do?pn=${page_Num }">${page_Num }</a>
								</c:if>
							</c:forEach> <c:if test="${pageInfo.hasNextPage }">
								<a href="/Net/jsp/Users/QueryOrders.do?pn=${pageInfo.pageNum+1 }">
									<span>&raquo;</span>
								</a>
							</c:if> <a href="/Net/jsp/Users/QueryOrders.do?pn=${pageInfo.pages}">末页</a>
						</th>
					</tr>
				</tbody>
			</table>
		</div>
	</div>
</body>

</html>