
layui.use(['form','jquery','layer'], function(){
	var form = layui.form;
	var $ = layui.jquery;
	var layer = layui.layer;

	//监听提交
	form.on('submit(login)', function(data){
		// console.log(data.field);

		//查询该领域的题目
		$.ajax({
			type:"post",
			url:"UserServlet?methodName=dologin",
			//预期服务器返回的数据类型;
			datatype:"text",
			//从该js会发出到服务器的数据
			data:data.field,
			//从servlet接收的数据
			success:function (msg) {
				// var obj = JSON.parse(msg);
				console.log(msg);
				// alert(obj.msg);
				if(msg==="yes"){
					layer.msg("登录成功！", {time:9000});
					location.href = "UserServlet?methodName=backToMenu";
				}else {
					layer.msg("登录失败！");
				}
			},
			error:function () {
				alert("服务器正忙.....");
			}
		});
		return false;
	});
});


$("#register").on('click',function () {
	alert("注册");
});


layui.use("layer", function () {
	var layer = layui.layer;
	$("#p1").click(function () {
		layer.open({
			type: 1
			,title: '新用户注册' //不显示标题栏
			,closeBtn: false
			,area: '450px;'
			,shade: 0.8
			,id: 'register' //设定一个id，防止重复弹出
			,resize: false
			,btn: ['注册', '返回']
			,btnAlign: 'c'
			,moveType: 1 //拖拽模式，0或者1
			,content: $("#test")
			,
			yes:function(){
				form.on()
				var btn = layero.find('.layui-layer-btn');

			},
			cancel:function(){

			}
			// success: function(layero){
			// 	var btn = layero.find('.layui-layer-btn');
			// 	btn.find('.layui-layer-btn0').attr({
			// 		href: 'http://www.layui.com/'
			// 		,target: '_blank'
			// 	});
			// }
		});
	});
});