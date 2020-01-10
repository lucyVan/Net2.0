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
<script src="/Net/js/jquery-1.2.6.min.js" type="text/javascript"></script>
<script src="/Net/js/jquery.jparallax.js" type="text/javascript"></script>
<script>
	//JavaScript代码区域
	layui.use('element', function() {
		var element = layui.element;
	});
	$(document).ready(function() {

		$('#parallax').jparallax({
			triggerExposesEdges : true,
			yparallax : false
		}, {
			yparallax : false
		}, {
			yparallax : false
		}, {
			yparallax : false
		}, {
			yparallax : false
		});

	});
</script>
<style>
.container {
	height: 10%;
	width: 10%;
	margin: 0 50%;
	z-index: 1;
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
	background-color: rgba(0, 0, 0, 0.1);
}

.layui-footer {
	margin: 0 0 0 -14%;
	text-align: right;
}

{
margin


:


0;
padding


:


0;
list-style-type


:


none
;


}
a, img {
	border: 0;
	z-index: -1;
}

/* body {
	font: 12px/180% Arial, Helvetica, sans-serif, "新宋体";
	background: #c7c6c9 url(images/background.png) no-repeat center 10px;
} */
.clear {
	clear: both;
}

#parallax {
	position: relative;
	padding-top: 80px;
	overflow: hidden;
	width: 100%;
	height: 750px;
}

/* .win {
	background-image: url("/Net/img/p1.png"), url("/Net/img/p2.png"), url("/Net/img/p3.png"),, url("/Net/img/p4.png");
	background-repeat: no-repeat, no-repeat, no-repeat,no-repeat;
	background-position: absolute,absolute,absolute,absolute;
	background-top:168px,88px,8px,428px;
	background-left:100px,40px,120px,10px;
	background-width:1137px,1020px,900px,750px;
} */
.layui-table tr th, .layui-table tr td {
	border: 0px;
	color: #0A0A0A;
	font-size:15px;
}
</style>
</head>

<body>
<body class="layui-layout-body" style="overflow-y: scroll;">
	<!-- TEST：这是一个超级大的div -->
	<div class="win">
		<div class="layui-layout layui-layout-admin";>
			<div class="layui-header">
				<div class="layui-logo">Net云课堂</div>
				<!-- 头部区域（可配合layui已有的水平导航） -->
				<ul class="layui-nav layui-layout-left">
					<li class="layui-nav-item"><a
						href="/Net/jsp/Courses/index.jsp">首页</a></li>
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
					<form action="" class="parent">
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

			<div class="header" style="background-color: rgba(0, 0, 0, 0.05);">我的消息</div>
			<hr style="height: 2px;" />





			<div class="order">
				<table class="layui-table" >
				<!-- lay-filter="LAY-app-message-all" -->
					<!-- <div style="overflow: hidden; width: 1260px; margin: 0px auto;"> -->

						<colgroup>
							<col width="12%">
							<col width="12%">
							<col>
							<col width="10%">
						</colgroup>
						<thead>
							<tr style="background-color: rgba(0, 0, 0, 0.05);">
								<th style="text-align:center;"><strong>信息编号</strong></th>
								<th style="text-align:center;"><strong>消息状态</strong></th>
								<th style="text-align:center;"><b>订单信息</b></th>
								<th style="text-align:center;"><b>删除</b></th>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${msg}" var="obj">
								<tr>
									<td><strong>${obj.nid}</strong></td>
									<td><b><c:if test="${obj.nstate == '0'}">
								未读
							</c:if> <c:if test="${obj.nstate == '1'}">
								已读
							</c:if></b></td>
									<td><b>${obj.nmsg}</b></td>
									<td><a style="width: 100%" type="button"
										href="/Net/jsp/Users/DeleteNotices.do/${obj.nid}"
										class="layui-btn layui-btn-radius  layui-btn-normal">删除</a></td>
								</tr>
							</c:forEach>
							<tr>
								<th colspan="4">
									<!--分页文字信息  --> 当前 ${pageInfo.pageNum }页,总${pageInfo.pages}页,总
									${pageInfo.total } 条记录 <!-- 分页条信息 --> <a
									href="/Net/jsp/Users/QueryLearns.do?pn=1">首页</a> <c:if
										test="${pageInfo.hasPreviousPage }">
										<a
											href="/Net/jsp/Users/QueryLearns.do?pn=${pageInfo.pageNum-1}">
											<span>&laquo;</span>
										</a>
									</c:if> <c:forEach items="${pageInfo.navigatepageNums }"
										var="page_Num">
										<c:if test="${page_Num == pageInfo.pageNum }">
											<a href="#">${page_Num }</a>
										</c:if>
										<c:if test="${page_Num != pageInfo.pageNum }">
											<a href="/Net/jsp/Users/QueryLearns.do?pn=${page_Num }">${page_Num }</a>
										</c:if>
									</c:forEach> <c:if test="${pageInfo.hasNextPage }">
										<a
											href="/Net/jsp/Users/QueryLearns.do?pn=${pageInfo.pageNum+1 }">
											<span>&raquo;</span>
										</a>
									</c:if> <a href="/Net/jsp/Users/QueryLearns.do?pn=${pageInfo.pages}">末页</a>
								</th>
							</tr>
						</tbody>
				</table>
			</div>
		</div>




		<!-- parallax效果 -->
		<div style="overflow: hidden; width: 1260px; margin: -35% 0 0 0;">
			<div id="parallax" class="clear">
				<div style="width: 1137px; height: 256px;">
					<img style="position: absolute; top: 168px; left: 100px;" alt=""
						src="/Net/img/p1.png" />
				</div>
				<div style="width: 1020px; height: 309ppx;">
					<img style="position: absolute; top: 88px; left: 40px;" alt=""
						src="/Net/img/p2.png" />
				</div>
				<div style="width: 900px; height: 470px;">
					<img style="position: absolute; top: 8px; left: 120px;" alt=""
						src="/Net/img/p3.png" />
				</div>
				<div style="width: 750px; height: 129px;">
					<img style="position: absolute; top: 428px; left: 10px;" alt=""
						src="/Net/img/p4.png" />
				</div>
			</div>
		</div>




		<div class="layui-footer">
			<!-- 底部固定区域 -->
			&nbsp;&nbsp; © Net.com - Net课程，你值得拥有！！！
		</div>


	</div>






</body>

</html>