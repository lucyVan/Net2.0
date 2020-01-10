<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>  
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
			.layui-body{
				margin: 0 0 0 -10%;
			}
			.layui-table{
				width: 97%;
			}
			table{  
			    width:80px;  
			    table-layout:fixed;/* 只有定义了表格的布局算法为fixed，下面td的定义才能起作用。 */  
			}  
			td{  
			    width:60%;  
			    word-break:keep-all;/* 不换行 */  
			    white-space:nowrap;/* 不换行 */  
			    overflow:hidden;/* 内容超出宽度时隐藏超出部分的内容 */  
			    text-overflow:ellipsis;/* 当对象内文本溢出时显示省略标记(...) ；需与overflow:hidden;一起使用*/  
			}  
		</style>
	</head>

	<body class="layui-layout-body">
	<c:if test="${state == '2'}">
		<div class="layui-layout layui-layout-admin">
			<div class="layui-header">
				<ul class="layui-nav" lay-filter="" style="padding-left: 5%; padding-right: -15%;">
					<li class="layui-nav-item">
						<a href="/Net/jsp/Admins/QueryCourses.do">Courses</a>
					</li>
					<li class="layui-nav-item">
						<a href="/Net/jsp/Admins/QueryFlows.do">Flows</a>
					</li>
					<li class="layui-nav-item">
						<a href="/Net/jsp/Admins/QueryLearns.do">Learns</a>
					</li>
					<li class="layui-nav-item">
						<a href="/Net/jsp/Admins/QueryNotices.do">Notices</a>
					</li>
					<li class="layui-nav-item">
						<a href="/Net/jsp/Admins/QueryOrders.do">Orders</a>
					</li>
					<li class="layui-nav-item">
						<a href="/Net/jsp/Admins/QueryReceivers.do">Receivers</a>
					</li>
					<li class="layui-nav-item">
						<a href="/Net/jsp/Admins/QuerySpecies.do">Species</a>
					</li>
					<li class="layui-nav-item">
						<a href="/Net/jsp/Admins/QueryTeachers.do">Teachers</a>
					</li>
					<li class="layui-nav-item">
						<a href="/Net/jsp/Admins/QueryUsers.do">Users</a>
					</li>
				</ul>
				<ul class="layui-nav layui-layout-right">
					<li class="layui-nav-item">
						<a href="javascript:;">
							<img src="http://t.cn/RCzsdCq" class="layui-nav-img"> 个人中心
						</a>
						<dl class="layui-nav-child">
							<dd>
								<a href="/Net/jsp/Admins/logout.do">退出</a>
							</dd>
						</dl>
					</li>
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
								<th>物流编号</th>
								<th>订单编号</th>
								<th>物流省份</th>
								<th>物流城市</th>
								<th>物流区县</th>
								<th>物流地址</th>
								<th>修改</th>
								<th>删除</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${msg}" var="obj">
								<tr>
									<td>${obj.fid}</td>
									<td>${obj.oid}</td>
									<td>${obj.fprovince}</td> 
									<td>${obj.fcity}</td>
									<td>${obj.fdistrict}</td>
									<td>${obj.fadress}</td>
									<td>
									<a style="width:100%" type="button" href="/Net/jsp/Admins/DeleteFlows.do/${obj.fid}"  class="layui-btn layui-btn-radius  layui-btn-normal">删除</a>
									</td>
									<td>
									<a style="width:100%" type="button" href="/Net/jsp/Admins/UpdateFlows.do/${obj.fid}" class="layui-btn layui-btn-radius  layui-btn-normal">修改</a>
									</td>
								</tr>
							</c:forEach>
							<tr> 
								<th colspan="8">
									<a style="width:100%" type="button" href="/Net/jsp/Admins/InsertFlows.do" class="layui-btn layui-btn-radius  layui-btn-normal">添加</a><br>
								</th>
							</tr>
							<tr> 
								<th colspan="8">
							        <!--分页文字信息  -->
							              当前 ${pageInfo.pageNum }页,总${pageInfo.pages}页,总 ${pageInfo.total } 条记录
							        <!-- 分页条信息 -->
				                    <a href="/Net/jsp/Admins/QueryFlows.do?pn=1">首页</a>
				                    <c:if test="${pageInfo.hasPreviousPage }">
				                        <a href="/Net/jsp/Admins/QueryFlows.do?pn=${pageInfo.pageNum-1}">
				                        	<span>&laquo;</span>
				                        </a>
				                    </c:if>
				                    <c:forEach items="${pageInfo.navigatepageNums }" var="page_Num">
				                        <c:if test="${page_Num == pageInfo.pageNum }">
				                            <a href="#">${page_Num }</a>
				                        </c:if>
				                        <c:if test="${page_Num != pageInfo.pageNum }">
				                            <a href="/Net/jsp/Admins/QueryFlows.do?pn=${page_Num }">${page_Num }</a>
				                        </c:if>
				                    </c:forEach>
				                    <c:if test="${pageInfo.hasNextPage }">
				                        <a href="/Net/jsp/Admins/QueryFlows.do?pn=${pageInfo.pageNum+1 }"> 
				                        	<span>&raquo;</span>
				                        </a>
				                    </c:if>
				                    <a href="/Net/jsp/Admins/QueryFlows.do?pn=${pageInfo.pages}">末页</a>
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