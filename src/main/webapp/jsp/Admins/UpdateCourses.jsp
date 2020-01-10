<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
.header {
	background-color: #FFFFFF;
	height: 40px;
	margin-top: 10px;
	font-size: 30px;
	text-align: center;
}

input[type=text] {
	width: auto;
	padding: 12px 20px;
	margin: 2% 0 0 0;
	box-sizing: border-box;
	border: 1px solid #F0F8FF;
	outline: none;
}

input[type=text]:focus {
	background-color: lightblue;
}

.button {
	position: relative;
	background-color: lightblue;
	border: none;
	font-size: 20px;
	color: white;
	width: 80px;
	height: 40px;
	-webkit-transition-duration: 0.4s; /* Safari */
	transition-duration: 0.4s;
	text-decoration: none;
	overflow: hidden;
	cursor: pointer;
	float: none;
	margin: 5% 0 0 100%;
}

.button:after {
	content: "";
	background: white;
	display: block;
	position: absolute;
	padding-top: 300%;
	padding-left: 350%;
	margin-left: -20px !important;
	margin-top: -120%;
	opacity: 0;
	transition: all 0.8s
}

.button:active:after {
	padding: 0;
	margin: 0;
	opacity: 1;
	transition: 0s
}

.form1 {
	margin-left: 40%;
	margin-top: 2%;
	margin-bottom: 3%;
	width: 21%;
}

label {
	width: 10%;
}

input {
	width: 10%;
}
</style>
</head>
<body>
	<c:if test="${state == '2'}">
		<div class="header">Modify information</div>
		<hr />
		<form action="/Net/jsp/Admins/${messages}" method="post" class="form1">
			<label for="Cid">课程编号</label><input type="text" id="Cid" name="Cid"
				value="${msg.cid}" /> <label for="Tid">老师编号</label><input
				type="text" id="Tid" name="Tid" value="${msg.tid}" /> <label
				for="Sid">种类编号</label><input type="text" id="Sid" name="Sid"
				value="${msg.sid}" /> <label for="Cname">课程名称</label><input
				type="text" id="Cname" name="Cname" value="${msg.cname}" /> <label
				for="Ctime">上传时间</label><input type="text" id="Ctime"
				disabled="disabled" name="Ctime" value="${msg.ctime}" /> <label
				for="Cimage">课程图片</label><input type="text" id="Cimage"
				name="Cimage" value="${msg.cimage}" /> <label for="Cinfo">课程介绍</label><input
				type="text" id="Cinfo" name="Cinfo" value="${msg.cinfo}" /> <label
				for="Curl">课程链接</label><input type="text" id="Curl" name="Curl"
				value="${msg.curl}" /> <input class="button" type="submit"
				value="${message}"> <a href="/Net/jsp/Admins/Welcome.jsp"
				style="margin-left: 0%; margin-top: -50%"><button type="button"
					class="layui-btn layui-btn-primary">返回首页</button></a>
		</form>

	</c:if>
	<c:if test="${state == '1'}">
			您没有权限访问
		</c:if>
	<c:if test="${state == null }">
			干啥呢老弟
	</c:if>
</body>
</html>