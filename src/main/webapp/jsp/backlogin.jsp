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
	String cssPath = application.getContextPath() + "/background/css/";
	String layUIPath = application.getContextPath() + "/background/layui/";
	String jsPath = application.getContextPath() + "/background/js/";
	String jspPath = application.getContextPath() + "/background/jsp/";
	String path = application.getContextPath();
%>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>后台管理员登录</title>
	<link rel="stylesheet" href="<%=path+"/layui/css/layui.css"%>" media="all">
	<link rel="stylesheet" href=<%=path+"/css/backloginstyle.css"%>>

	<script type="text/javascript" src="<%=path+"/js/jquery-3.4.1.js"%>"></script>
	<script type="text/javascript" src="<%=path+"/js/json2.js"%>"></script>
	<script type="text/javascript" src="<%=path+"/layui/layui.js"%>" charset="utf-8"></script>
	<script type="text/javascript" src="<%=path+"/js/backlogin.js"%>"></script>
</head>
<body style="background-image: url(<%=path+"/images/1.jpg"%>)">

<div id="userlogin">
	<h2 style="text-align: center">后台管理员登录</h2>
	<form class="layui-form" action=""><br>
		<div class="layui-form-item">
			<label class="layui-form-label">账号</label>
			<div class="layui-input-inline">
				<input type="text" name="account" required lay-verify="required" value="gaoyaoxin" placeholder="请输入账号" autocomplete="off"
				       class="layui-input">
			</div>
		</div>
		<div class="layui-form-item">
			<label class="layui-form-label">密码</label>
			<div class="layui-input-inline">
				<input type="password" name="password" required lay-verify="required" value="gaoyaoxin" placeholder="请输入密码"
				       autocomplete="off"
				       class="layui-input">
			</div>
		</div>

		<div class="layui-form-item">
			<div class="layui-input-block">
				<button class="layui-btn" style="width: 190px" lay-submit lay-filter="login">登录</button>
			</div>
		</div>
	</form>
</div>


<div style="display:none" id="test">
	<form class="layui-form" action="">
	<div class="layui-form-item" style="padding-top: 30px">
		<label class="layui-form-label">账号</label>
		<div class="layui-input-inline">
			<input type="text" name="account" required lay-verify="required" placeholder="请输入账号" autocomplete="off"
			       class="layui-input">
		</div>
	</div>
	<div class="layui-form-item">
		<label class="layui-form-label">密码</label>
		<div class="layui-input-inline">
			<input type="password" name="password" required lay-verify="required" placeholder="请输入密码"
			       autocomplete="off"
			       class="layui-input">
		</div>
	</div>

	<div class="layui-form-item">
		<label class="layui-form-label">确认密码</label>
		<div class="layui-input-inline">
			<input type="password" name="confirm" required lay-verify="required" placeholder="请再次输入密码"
			       autocomplete="off"
			       class="layui-input">
		</div>
	</div>

	<div class="layui-form-item">
		<label class="layui-form-label">性别</label>
		<div class="layui-input-block">
			<input type="radio" name="sex" value="男" title="男" checked="">
			<input type="radio" name="sex" value="女" title="女">
		</div>
	</div>

	<div class="layui-form-item">
		<label class="layui-form-label">学历</label>
		<div class="layui-input-inline">
			<select name="education" lay-filter="education">
				<option value="-1">请选择</option>
				<option value="0">小学</option>
				<option value="1">初中</option>
				<option value="2">高中</option>
				<option value="3">大专</option>
				<option value="4">本科</option>
				<option value="5">研究生</option>
				<option value="6">博士</option>
			</select>
		</div>
	</div>

		<div class="layui-form-item">
			<label class="layui-form-label">职业</label>
			<div class="layui-input-inline">
				<select name="job" lay-filter="job">
					<option value="-1">请选择</option>
					<option value="0">教师</option>
					<option value="1">企业管理人员</option>
					<option value="2">律师</option>
					<option value="3">商人</option>
					<option value="4">运动员</option>
					<option value="5">公务员</option>
					<option value="6">厨师</option>
					<option value="7">其他</option>
				</select>
			</div>
		</div>

		<div class="layui-form-item">
			<div class="layui-inline">
				<label class="layui-form-label">手机号</label>
				<div class="layui-input-inline">
					<input type="tel" name="phone" lay-verify="required|phone" autocomplete="off" class="layui-input" placeholder="请输入手机号">
				</div>
			</div>
		</div>

		<div class="layui-inline">
			<label class="layui-form-label">邮箱</label>
			<div class="layui-input-inline">
				<input type="text" name="email" lay-verify="email" autocomplete="off" class="layui-input" placeholder="请输入邮箱">
			</div>
		</div>
	</form>
</div>

<%--<input class="layui-btn" type="button" id="p1">--%>
<%--<p id="p1">点我测试弹出层</p>--%>

<%--<script>--%>
<%--	layui.use("layer", function () {--%>
<%--		var layer = layui.layer;--%>
<%--		$("#p1").click(function () {--%>
<%--			layer.open({--%>
<%--				type: 1,--%>
<%--				area: ['500px', '300px'],--%>
<%--				content: $("#test")--%>
<%--			});--%>
<%--		});--%>
<%--	});--%>
<%--</script>--%>

</body>
</html>
