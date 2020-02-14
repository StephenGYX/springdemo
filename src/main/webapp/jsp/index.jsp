<%--
  Created by IntelliJ IDEA.
  User: Stephen
  Date: 2020/1/25
  Time: 22:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
	<title>Title</title>
	<script src="js/jquery-3.4.1.js"></script>

	<script>
		//页面加载，绑定单击事件
		$(function () {
			$("#btn").click(function () {
				$.ajax({
					url:"resp/testAjax.action",
					contentType:"application/json;charset=UTF-8",
					data:'{"username":"大妹子","password":"123456","money":250}',
					dataType:"json",
					type:"post",
					success:function (data) {
						alert(data);
						alert(data.username);
						alert(data.password);
					}
				})
			});
		});
	</script>
</head>
<body>

<a href="file/toPage.action">跳转文件管理</a><br>
<a href="file/toUploadPage.action">跳转文件上传</a>


<button ></button>
<h3>路径跳转测试</h3><br>
<a href="user/findUser.action">测试SpringMVC和Spring框架</a>

<%--<a href="user/hello.action">入门程序</a><br>--%>
<%--<a href="user/testreq.action?username=gaoyaoxin&password=123456">request测试</a><br>--%>

<%--基本类型、javabean、List和Map数据传输，元素中的name需要与实体类的属性名完全一致，后端会自动进行赋值封装--%>
<%--封装实体类的方式，name要与实体类属性名完全一致，后台能够直接封装成实体类对象--%>
<%--	如果实体类中有引用数据类型，则利用user.uname进行赋值--%>
<form action="user/findUser.action" method="post">
	账号:<input type="text" name="user_Account"><br>
	密码:<input type="password" name="user_Password"><br>
	<input type="submit" value="提交">
</form>

<%--传输的数据需要储存在list和map中，同样需要利用对应的userList,userMap指定位置赋值
<form action="user/saveAccount.action" method="post">
	姓名:<input type="text" name="username"><br>
	密碼:<input type="text" name="password"><br>
	金額:<input type="text" name="money"><br>
	用户姓名:<input type="text" name="userList[0].uname"><br>
	用户年龄:<input type="text" name="userList[0].age"><br>
	用户姓名:<input type="text" name="userMap['1'].uname"><br>
	用户年龄:<input type="text" name="userMap['1'].age"><br>
	<input type="submit" value="提交">
</form>
--%>

<%--自定义转化类型
<form action="user/saveUser.action" method="post">
	用户姓名:<input type="text" name="uname"><br>
	用户年龄:<input type="text" name="age"><br>
	用户生日:<input type="text" name="date"><br>
	<input type="submit" value="提交">
</form>
--%>

<%--常用注解使用--%>

<%--testRequestParam--%>
<a href="anno/testRequestParam.action?uname=哇哈哈">requestParam测试</a><br>


<%--testRequestBody,获取整个请求体--%>
<form action="anno/testRequestBody.action" method="post">
	用户姓名:<input type="text" name="uname"><br>
	用户年龄:<input type="text" name="age"><br>
	<input type="submit" value="提交">
</form><br>


<%--testPathVariable测试,这个测试有点问题！--%>
<a href="anno/testPathVariable.action/10">PathVariable测试</a><br>


<%--testRequestHeader测试--%>
<a href="anno/testRequestHeader.action">requestHeader测试</a><br>


<%--testCookieValue测试--%>
<a href="anno/testCookieValue.action">cookieValue测试</a><br>

<%--modelAttribute，在方法执行前可以先执行--%>
<form action="anno/testModelAttribute.action" method="post">
	用户姓名:<input type="text" name="uname"><br>
	用户年龄:<input type="text" name="age"><br>
	<input type="submit" value="提交">
</form><br>

<%--向Session域中存入值--%>
<a href="anno/testSessionAttributes.action">testSessionAttributes</a><br>
<a href="anno/testGetSessionAttributes.action">testGetSessionAttributes</a><br>
<a href="anno/testDelSessionAttributes.action">testDelSessionAttributes</a><br><br>

<%--跳转响应的方式测试--%>
<h3>响应方式测试</h3><br>

<%--无返回值，直接转发、重定向、输出的情况--%>
<a href="resp/testVoid.action">testVoid</a><br>

<%--modelAndView的方式跳转--%>
<a href="resp/testModelAndView.action">testModelAndView</a><br>

<%--forward和redirect的方式跳转页面--%>
<a href="resp/testForwardOrRedirect.action">testForwardOrRedirect</a><br>


<h3>发送异步请求</h3>
<button id="btn">发送ajax请求</button>

<h3>传统文件上传案例</h3>
<form action="file/testFileUpload.action" method="post" enctype="multipart/form-data">
	<input type="file" name="upload"><br>
	<input type="submit" value="确认上传">
</form>

<h3>SpringMVC文件上传案例</h3>
<form action="file/testFileUpload1.action" method="post" enctype="multipart/form-data">
	<input type="file" name="upload"><br>
	<input type="submit" value="确认上传">
</form>

</body>
</html>
