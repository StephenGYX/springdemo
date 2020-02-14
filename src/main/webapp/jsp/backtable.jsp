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
	<title>后台数据表</title>
	<link rel="stylesheet" href="<%=path+"/layui/css/layui.css"%>" media="all">

	<script type="text/javascript" src="<%=path+"/js/jquery-3.4.1.js"%>"></script>
	<script type="text/javascript" src="<%=path+"/js/json2.js"%>"></script>
	<script type="text/javascript" src="<%=path+"/layui/layui.js"%>" charset="utf-8"></script>
	<script type="text/javascript" src="<%=path+"/js/backtable.js"%>"></script>
</head>
<body>
<br>
<form class="layui-form" action="">
	<div class="layui-form-item">
		<label class="layui-form-label">注册时间</label>

		<div class="layui-input-inline">
			<input type="date" name="startdate" required lay-verify="required" placeholder="请选择开始时间" autocomplete="off"
			       class="layui-input">
		</div>

		<label class="layui-form-label">至</label>

		<div class="layui-input-inline">
			<input type="date" name="enddate" required lay-verify="required" placeholder="请选择结束时间" autocomplete="off"
			       class="layui-input">
		</div>

		<label class="layui-form-label">用户名</label>
		<div class="layui-input-inline">
			<input type="text" name="username" required lay-verify="required" placeholder="请输入用户名"
			       autocomplete="off"
			       class="layui-input">
		</div>

		<div class="layui-input-inline">
			<button class="layui-btn" style="width: 100px" lay-submit lay-filter="query">查询</button>
		</div>
	</div>
</form>

<table class="layui-hide" id="test" lay-filter="test"></table>
<input type="hidden" id="hid" value=<%=path+"/UserServlet"%>>

<script type="text/html" id="toolbarDemo">
	<div class="layui-btn-container">
		<button class="layui-btn layui-btn-sm" lay-event="getCheckData">获取选中行数据</button>
		<button class="layui-btn layui-btn-sm" lay-event="getCheckLength">获取选中数目</button>
		<button class="layui-btn layui-btn-sm" lay-event="isAll">验证是否全选</button>

<%--		<div id="queryUser">--%>
<%--			<form class="layui-form" action="">--%>
<%--				<div class="layui-form-item">--%>
<%--					<label class="layui-form-label">用户名</label>--%>
<%--					<div class="layui-input-inline">--%>
<%--						<input type="text" name="account" required lay-verify="required" value="gaoyaoxin" placeholder="请输入账号" autocomplete="off"--%>
<%--						       class="layui-input">--%>
<%--					</div>--%>
<%--				</div>--%>
<%--				<div class="layui-form-item">--%>
<%--					<div class="layui-input-inline">--%>
<%--						<button class="layui-btn" style="width: 100px" lay-submit lay-filter="query">查询</button>--%>
<%--					</div>--%>
<%--				</div>--%>
<%--			</form>--%>
<%--		</div>--%>
	</div>
</script>

<script type="text/html" id="barDemo">
	<a class="layui-btn layui-btn-xs" lay-event="edit">禁用/启用</a>
	<a class="layui-btn layui-btn-danger layui-btn-xs" lay-event="del">删除</a>
</script>
</body>
</html>
