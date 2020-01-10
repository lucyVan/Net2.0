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
body {
	background:;
}

.layui-footer {
	margin: 0 0 0 -16%;
	text-align: right;
}

.info {
	width: 100%;
}

.cimage {
	margin: 5% 0 5% 6.5%;
	float: left;
}

.box {
	margin: 5% 0 5% 5%;
	float: left;
	width: 550px;
	height: 300px;
	border-radius: 25px 25px 25px 25px;
	background-color: white;
	box-shadow: 10px 10px 5px #DCDCDC;
}

.cinfo {
	margin: 5% 3% 5% 5%;
	float: left;
}

.layui-tab {
	margin: 0 0 0 5%;
	float: left;
}

.content {
	margin: 0 5% 0 0;
	width: 1100px;
}
.con1{
	background-color: #FFFFF4;
	width:100%;
	height:150px;
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
.parent {
	position: relative;
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

</style>
</head>
<body class="layui-layout-body" style="overflow-y: scroll;">
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
		<div class="info">
			<div class="cimage">
				<img src="/Net/img/31.png" width="500px" height="300px" />

			</div>

			<div class="box">
				<div class="cinfo">
					<font size="5px">移动计算及应用开发技术<br /> <br />
					</font> <font size="2px" color="8E8E8E"> 1270027人学过<br /> <br />
					</font> <font size="3px"> ￥你猜<br /> <br />
					</font> <font size="4px"> 授课教师：李永乐<br /> <br />
					</font>
					<button type="button"
						class="layui-btn layui-btn-lg layui-btn-primary layui-btn-radius">
						<a href=<c:url value="/jsp/Users/InsertLearns.do/${msg.cid}"/>>加入购物车</a> 
					</button>
					<button type="button"
						class="layui-btn layui-btn-lg layui-btn-primary layui-btn-radius">
						<a href="/Net/img/1.mp4"> 立即观看 </a>
					</button>
				</div>
			</div>
		</div>

		<div class="layui-tab layui-tab-brief" lay-filter="docDemoTabBrief">
			<ul class="layui-tab-title">
				<li></li>
				<li class="layui-this">课程详情</li>
				<li>用户评价</li>
				<li></li>
			</ul>
			<div class="layui-tab-content" style="height: 100px;">
				<div class="layui-tab-item"></div>
				<div class="layui-tab-item layui-show">
					<div class="content">
						<blockquote class="layui-elem-quote layui-quote-nm">
						<div class="con1">
						<font size="3"></br></br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;当前，移动互联网正在席卷整个世界，而移动计算的相关理论和技术是构建移动互联网的基础。本课程以移动计算三要素为核心，从信息传输的基本原理、移动定位技术以及移动应用开发（Android平台）技术展开讲解。形式上采用练习和实验相结合的方式，课程内容以问题驱动的方式促进学生主动思考。</br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;—— 课程团队</font>
						</div>
						</br><p><b>课程概述</b></p>
						<p>本课程计划8周，讲授4个主题。每个主题由多个单元组成，每个单元包括课程视频讲解、单元作业和单元测试三个部分。课程视频为课程核心部分，课程视频中的思考题和练习题为课程实践部分，发布给学生，由学生课后自主完成，完成情况可提交网上讨论。课程视频：每一讲包含一个专题知识，其课程视频按照知识点拆分成多个独立而又相互串联的知识模块。每段视频约10-15分钟左右。视频中的练习题目帮助学生深入理解移动系统和程序设计，促进学生动手实践。探索性的练习主要在论坛上发布和讨论，鼓励学生在论坛中对前沿性和学术性的问题展开讨论，并提供相关的工程案例和辅助教学资源，促进学生工程能力的锻炼。练习题目包括关键知识点的检验、编程知识和实验等内容。在课程考核中实验的占比较重。通过实验让学生把所学的知识吸收和内化。实验的自主完成部分主要用于检验学生的工程规划和设计能力。期末考试在网站上完成，提供多项主客观题目，并要求同学在规定时间完成（32小时）。成绩60分以上为合格，85分及以上为优秀，并可申请相应证书。</p>
						</br><p><b>授课目的</b></p>
						<p>通过本课程的学习，您能够了解移动计算的特点和发展趋势，比较全面地掌握移动计算的基本概念、原理，各种开发平台和工具，以及移动应用程序的基本结构和设计方法。通过实践，了解移动设备和无线网络的使用方法，培养您对移动应用软件开发的兴趣和编程思维方法，提高分析问题、解决问题及实践操作的能力，为今后从事计算机软件开发工作打下良好的基础。</p>
						</br><p><b>预备知识</b></p>
						<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;面对象程序设计（Java/C++）</p>
						<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;计算机网络</p>
						<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;数据库原理</p>
						<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;软件工程</p>
						</br><p><b>证书要求</b></p>
						<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;完成单元作业和单元测试；</p>
						<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;通过期末测试；</p> 
						</br><p><b>参考资料</b></p>
						<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;移动计算技术，徐明，曹建农，彭伟，清华大学出版社，2008</p>
						<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;移动计算，袁满，孙永东等，哈尔滨工业大学出版社，2008</p>
						<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;移动计算，张德干，科学出版社，2009</p>
						<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;移动计算原理-基于UML和XML的移动应用设计与开发，Reza B.Far著，顾国昌等译，电子工业出版社，2006</p>
						<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;移动互联网技术及业务，张传福，电子工业出版社，2012</p>
						<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;第一行代码Android，郭霖，人民邮电出版社，2014</p>
						<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;深入理解Android内核设计思想，林学森，人民邮电出版社，2014</p>
						<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Android开发艺术探索，任玉刚，电子工业出版社，2015</p>
						</br></br></br></br>
						</blockquote>
					</div>
				</div>
				<div class="layui-tab-item">
				<img alt="" src="content1.png">
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