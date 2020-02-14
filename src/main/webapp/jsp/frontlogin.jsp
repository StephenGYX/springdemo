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
	String cssPath = application.getContextPath() + "/front/css/";
	String layUIPath = application.getContextPath() + "/front/layui/";
	String jsPath = application.getContextPath() + "/front/js/";
	String jspPath = application.getContextPath() + "/front/jsp/";
	String path = application.getContextPath();
%>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>前台用户登录</title>
	<link rel="stylesheet" href="<%=path+"/layui/css/layui.css"%>" media="all">
	<link rel="stylesheet" href="<%=path+"/css/frontloginstyle.css"%>" media="all">

	<script type="text/javascript" src="<%=path+"/js/jquery-3.4.1.js"%>"></script>
	<script type="text/javascript" src="<%=path+"/js/json2.js"%>"></script>
	<script type="text/javascript" src="<%=path+"/layui/layui.js"%>" charset="utf-8"></script>
	<script type="text/javascript" src="<%=path+"/js/frontlogin.js"%>"></script>
</head>
<body style="background-image: url(<%=path+"/images/1.jpg"%>)">
<div id="userlogin">
	<h2 style="text-align: center">前台用户登录</h2>
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
				<button class="layui-btn" style="width: 90px" lay-submit lay-filter="login">登录</button>
				<input class="layui-btn" style="width: 90px" type="button" id="p1" value="注册">
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
		<div class="layui-form-item" style="padding-top: 30px">
			<label class="layui-form-label">昵称</label>
			<div class="layui-input-inline">
				<input type="text" name="name" required lay-verify="required" placeholder="请输入昵称" autocomplete="off"
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
				<option value="小学">小学</option>
				<option value="初中">初中</option>
				<option value="高中">高中</option>
				<option value="大专">大专</option>
				<option value="本科">本科</option>
				<option value="研究生">研究生</option>
				<option value="博士">博士</option>
			</select>
		</div>
	</div>

		<div class="layui-form-item">
			<label class="layui-form-label">职业</label>
			<div class="layui-input-inline">
				<select name="job" lay-filter="job">
					<option value="-1">请选择</option>
					<option value="教师">教师</option>
					<option value="企业管理人员">企业管理人员</option>
					<option value="律师">律师</option>
					<option value="商人">商人</option>
					<option value="运动员">运动员</option>
					<option value="公务员">公务员</option>
					<option value="厨师">厨师</option>
					<option value="其他">其他</option>
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

		<div class="layui-form-item">
			<div class="layui-input-block" id="registerbtn">
				<button class="layui-btn" lay-submit lay-filter="reg">注册</button>
				<button type="reset" class="layui-btn layui-btn-primary">重置</button>
			</div>
		</div>
	</form>
</div>

</body>
</html>
