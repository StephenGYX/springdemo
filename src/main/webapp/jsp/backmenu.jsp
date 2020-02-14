<%--
  Created by IntelliJ IDEA.
  User: Stephen
  Date: 2019/12/1
  Time: 11:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	String  cssPath = application.getContextPath()+"/background/css/";
	String  layUIPath = application.getContextPath()+"/background/layui/";
	String  jsPath = application.getContextPath()+"/background/js/";
	String  jspPath = application.getContextPath()+"/background/jsp/";
	String  path = application.getContextPath();
%>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>后台管理菜单</title>
	<link rel="stylesheet" href="<%=path+"/layui/css/layui.css"%>" media="all">

	<script type="text/javascript" src="<%=path+"/js/jquery-3.4.1.js"%>"></script>
	<script type="text/javascript" src="<%=path+"/js/json2.js"%>"></script>
	<script type="text/javascript" src="<%=path+"/layui/layui.js"%>" charset="utf-8"></script>
	<script type="text/javascript" src="<%=path+"/js/backmenu.js"%>"></script>
</head>
<body class="layui-layout-body">
<div class="layui-layout layui-layout-admin">

	<div class="layui-header" style="text-align: right">
		<ul class="layui-nav">
			<div style="text-align: left;float: left" >
				<li class="layui-nav-item">后台管理平台</li>
			</div>
			<li class="layui-nav-item" lay-unselect="">
				<a href="javascript:;"><img src="//t.cn/RCzsdCq" class="layui-nav-img">欢迎你，管理员</a>
			</li>
		</ul>
	</div>


	<div class="layui-side layui-bg-black">
		<div class="layui-side-scroll">
			<div id="aside" style="float:left;display: block">
				<ul class="layui-nav layui-nav-tree layui-inline" lay-filter="demo">
					<li class="layui-nav-item layui-nav-itemed">用户管理
						<dl class="layui-nav-child">
							<dd><a href="UserServlet?methodName=toUserTable" target="myframe">前台用户管理</a></dd>
						</dl>
					</li>

					<li class="layui-nav-item layui-nav-itemed">文档管理
						<dl class="layui-nav-child">
							<dd><a href="" target="myframe">文档审核</a></dd>
							<dd><a href="" target="myframe">文档配置</a></dd>
						</dl>
					</li>
					<li class="layui-nav-item layui-nav-itemed">日志管理
						<dl class="layui-nav-child">
							<dd><a href="" target="myframe">日志列表</a></dd>
						</dl>
					</li>
					<li class="layui-nav-item layui-nav-itemed">系统配置
						<dl class="layui-nav-child">
							<dd><a href="" target="myframe">上传奖励配置</a></dd>
							<dd><a href="" target="myframe">注册奖励配置</a></dd>
						</dl>
					</li>
				</ul>
			</div>
		</div>
	</div>

<div class="layui-body" id="section" style="float:right;" >
	<iframe name="myframe" id="myframe" style="height: 100%;width: 100%" frameborder="0"></iframe>
</div>


</div>

</body>
</html>
