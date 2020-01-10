<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<html>
<head>
<meta charset="UTF-8">
<title>购物车</title>

<link rel="stylesheet" href="/Net/layui/css/layui.css">
<script src="/Net/layui/layui.js"></script>
<script src="/Net/layui/lay/modules/jquery.js"></script>
<script src="/Net/layui/lay/modules/element.js"></script>
<link rel="stylesheet" href="css/common.css">
<link rel="stylesheet" href="scripts/miniui/themes/default/miniui.css">
<script>
	//JavaScript代码区域
	layui.use('element', function() {
		var element = layui.element;
	});
</script>
<style>
.layui-footer {
	margin: 0 0 0 -16%;
	text-align: right;
}
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

.header {
	background-color: #393e46;
	color: #ffffff;
	height: 60px;
	
	padding: 0 10% 0 0;
	font-size: 40px;
	text-align: center;
	background-color: rgba(0, 0, 0, 0.7);
}

.goods_list {
	margin: 2% 2% 0 8%;
	width: 100%;
	text-align: center;
}

.layui-table {
	width: 85%;
	text-align: center;
	border-radius: 10px;
}
.layui-table tr th, .layui-table tr td {
	border: 0px;
	border-top-left-radius: 15px;
	border-top-right-radius: 15px;
}
.layui-footer{
	margin:0 0 0 -14%;
	text-align: right;
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
.btn2 {
	width: 90%;
	height: 180px;
	background-color: #E8E8E8;
	border: none;
	border-radius: 10px;
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
.layui-btn-normal{
	background-color: #393e46;
}
table {
	table-layout: fixed; /* 只有定义了表格的布局算法为fixed，下面td的定义才能起作用。 */
}

td {
	word-break: keep-all; /* 不换行 */
	white-space: nowrap; /* 不换行 */
	overflow: hidden; /* 内容超出宽度时隐藏超出部分的内容 */
	text-overflow: ellipsis;
	/* 当对象内文本溢出时显示省略标记(...) ；需与overflow:hidden;一起使用*/
}
</style>
</head>
<body class="layui-layout-body" style="overflow-y:scroll;background-color:#f6f5f5">
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
			
		
			<div class="goods_list">
				<table class="layui-table" style="background-color: #fafafa;">
					<colgroup>
						<col width="28%">
						<col width="50%">
						<col width="22%">
					</colgroup>
					<thead>
						<tr>
							<th colspan="3" style="background-color: #393e46;color: #ffffff;height: 60px;padding: 0 10% 0 0;font-size: 35px;text-align: center;">
								Shopping Cart
							</th>
						</tr>
						<tr style="background-color: #fafafa;">
							<th style="text-align: center;">课程</th>
							<th style="text-align: center;">详细内容</th>
							<th style="text-align: center;">操作</th>
						</tr>
					</thead>
					<tbody style="border-collapse: collapse">
						<c:forEach items="${msg}" var="obj">
							<tr>
								<td>
									<div style="margin: 0 0 5% 0;">
										<a href="/Net/jsp/Courses/CoursesDetail.do/${obj.courses.cid}">
										<c:if test="${obj.courses.cimage != null}" var="flag">
							    			<button class="btn btn2" style="background: url(${obj.courses.cimage}) no-repeat;background-size:100% 100%;">
							    		    </button>
						    		    </c:if>
						    		    <c:if test="${not flag}">
							    		    <button class="btn btn2" style="background: url(https://i0.hdslb.com/bfs/archive/2de1aab69a47d6056056bf70cc1dcef51e6d4c01.jpg) no-repeat;background-size:100% 100%;">
							    		    </button>
						    		    </c:if>
									</div>
					    		    ${obj.courses.cname}
					    		    </a> 
								</td>
								<td>${obj.courses.cinfo}</td>
								<td>
									<div style="margin: 0 0 15% 0;">
										<a style="width: 100%" type="button"
										href="/Net/jsp/Users/DeleteLearns.do/${obj.lid}"
										class="layui-btn layui-btn-radius  layui-btn-normal">删除</a>
									</div>
									<div>
										<a style="width: 100%" type="button"
										href=""
										class="layui-btn layui-btn-radius  layui-btn-normal">立即购买</a>
									</div>
								</td>
							</tr>
						</c:forEach>
						<tr>
							<th colspan="3">
								<!--分页文字信息  --> 当前 ${pageInfo.pageNum }页,总${pageInfo.pages}页,总
								${pageInfo.total } 条记录 <!-- 分页条信息 -->
									<a href="/Net/jsp/Users/QueryLearns.do?pn=1">首页</a>
									<c:if test="${pageInfo.hasPreviousPage }">
										<a href="/Net/jsp/Users/QueryLearns.do?pn=${pageInfo.pageNum-1}">
												<span>&laquo;</span>
										</a>
									</c:if>
									<c:forEach items="${pageInfo.navigatepageNums }" var="page_Num">
										<c:if test="${page_Num == pageInfo.pageNum }">
											<a href="#">${page_Num }</a>
										</c:if>
										<c:if test="${page_Num != pageInfo.pageNum }">
											<a href="/Net/jsp/Users/QueryLearns.do?pn=${page_Num }">${page_Num }</a>
										</c:if>
									</c:forEach>
									<c:if test="${pageInfo.hasNextPage }">
										<a href="/Net/jsp/Users/QueryLearns.do?pn=${pageInfo.pageNum+1 }">
												<span>&raquo;</span>
										</a> 
									</c:if>
									<a href="/Net/jsp/Users/QueryLearns.do?pn=${pageInfo.pages}">末页</a>
							</th>
						</tr>
					</tbody>
				</table>
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