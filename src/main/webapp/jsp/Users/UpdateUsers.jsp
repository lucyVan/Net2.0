<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
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
			.pic1{
				height: 200px;
			}
			.pho{
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
				width: 30%;
				transition: all 0.3s;
				cursor: pointer;
				margin: 10%;
				margin-left: 30%;
				height: 40px;
				}
			
			.layui-table{
				background-color: rgba(0,0,0,0.2);
			}
			.container {
				height: 10%;
				width: 10%;
				margin: 0 50%;
			}
			.layui-footer{
				margin:0 0 0 -14%;
				text-align:right;
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
			.layui-table{
				border-radius: 10px;
				color:#393e46;
			}
			.layui-table tr th,.layui-table tr td {
	            border: 0px;
	        }
	        .subm{
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
		</style>
</head>

<body class="layui-layout-body" style="overflow-y:scroll;background-size:cover" background="/Net/img/Skiing.png;">
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
					</dl>
				</li>
				<li class="layui-nav-item"><a href="">2020考研</a></li>
				<li class="layui-nav-item"><a href=<c:url value="/jsp/Courses/QueryTeachers.do"/>>名师专栏</a></li>
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
					<li class="layui-nav-item">
						<a href="javascript:;">
							<img src="http://t.cn/RCzsdCq" class="layui-nav-img">
							个人中心
						</a>
						<dl class="layui-nav-child">
							<dd><a href=<c:url value="/jsp/Users/UsersDetial.do"/>>基本资料</a></dd>
							<dd><a href=<c:url value="/jsp/Users/QueryLearns.do"/>>购物车</a></dd>
							<dd><a href=<c:url value="/jsp/Users/QueryNotices.do"/>>通知</a></dd>
							<dd><a href=<c:url value="/jsp/Users/QueryOrders.do"/>>我的订单</a></dd>
							<dd><a href=<c:url value="/jsp/Users/QueryReceivers.do"/>>收货地址</a></dd>
						</dl>
					</li>
					<li class="layui-nav-item"><a href=<c:url value="/jsp/Admins/logout.do"/>>退出</a></li>
				</c:if>
				<c:if test="${state == null }">
					<li class="layui-nav-item"><a href="/Net/jsp/Admins/login.do">
							<img src="http://t.cn/RCzsdCq" class="layui-nav-img"> 登录
					</a></li>
				</c:if>
			</ul>
		</div>
				
		<div class="table" style="padding: 10% 27% 20% 27%">
			<form class="layui-form layui-form-pane" action="/Net/jsp/Users/${messages}" method="post">
			<table class="layui-table" >
						<colgroup>
							<col width="25%">
							<col width="75%">
							<col>
						</colgroup>
							<tr>
								<th>用户编号</th>
								<th><input type="text" style="background-color: transparent;border:0px;" id="Uid" name="Uid" readOnly="readOnly" value="${msg.uid}" /> </th>
							</tr>
							<tr>
								<th>用户昵称</th>
								<th><input type="text" style="background-color: transparent;border:0px;" id="Uname" name="Uname" value="${msg.uname}" /></th>
							</tr>
							<tr>
								<th>用户性别</th>
								<th><input type="text" style="background-color: transparent;border:0px;" id="Usex" name="Usex" value="${msg.usex}" /></th>
							</tr>
							<tr>
								<th>用户电话</th>
								<th><input type="text" style="background-color: transparent;border:0px;" id="Utel" name="Utel" value="${msg.utel}" /></th>
							</tr>
							<tr>
								<th>用户邮箱</th>
								<th><input type="text" style="background-color: transparent;border:0px;" id="Uemail" name="Uemail" value="${msg.uemail}" /></th>
							</tr>
							<tr>
								<th>用户密码</th>
								<th><input type="text" style="background-color: transparent;border:0px;" id="Upassword" name="Upassword" value="${msg.upassword}" /> </th>
							</tr>
							<tr>
								<th>用户创建时间</th>
								<th><input type="text" style="background-color: transparent;border:0px;" id="Ucreatetime" name="Ucreatetime" disabled="disabled" value="<fmt:formatDate value="${msg.ucreatetime}" pattern="yyyy-MM-dd"/>" /></th>
							</tr>
							<tr>
								<th>感兴趣的</th>
								<th><input type="text" style="background-color: transparent;border:0px;" id="Sname" name="Sname" value="${msg.species.sname}" /></th>
							</tr>					
					</table>
					<button class="button" type="submit" style="vertical-align:middle;color: #eeeeee;">${message}</button>
			</form>
		</div>
	</div>
	<script>
		//JavaScript代码区域
		layui.use('element', function() {
			var element = layui.element;

		});
	</script>
</body>



<!-- 
<body>
	<h1>修改用户信息界面</h1>
	<form action="/Net/jsp/Users/${messages}" method="post">
		用户编号<input type="text" id="Uid" name="Uid" readOnly="readOnly"
			value="${msg.uid}" /> 
			用户名字<input type="text" id="Uname" name="Uname"
			value="${msg.uname}" /> 
			用户性别<input type="text" id="Usex" name="Usex"
			value="${msg.usex}" /> 
			用户电话<input type="text" id="Utel" name="Utel"
			value="${msg.utel}" /> 
			用户邮箱<input type="text" id="Uemail"
			name="Uemail" value="${msg.uemail}" /> 
			用户密码<input type="text"
			id="Upassword" name="Upassword" value="${msg.upassword}" /> 
			用户创建时间<input
			type="text" id="Ucreatetime" name="Ucreatetime" disabled="disabled"
			value="<fmt:formatDate value="${msg.ucreatetime}" pattern="yyyy-MM-dd"/>" />
		用户头像<input type="text" id="Uimage" name="Uimage" value="${msg.uimage}" />
		用户课程种类<input type="text" id="Sname" name="Sname" value="${mssg.sname}" />
		<input type="submit" value="${message}">
	</form>
</body>
 -->
</html>