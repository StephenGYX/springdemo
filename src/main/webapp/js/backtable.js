var hidNode;
var path;

window.onload = function () {
	hidNode = document.getElementById("hid");
	path = hidNode.value;
};

layui.use('table', function(){
	var table = layui.table;

	table.render({
		elem: '#test'
		,url:path+'?methodName=queryUser'
		,toolbar: '#toolbarDemo' //开启头部工具栏，并为其绑定左侧模板
		,page: true
		,limit: 5
		,limits:[5,10,20,30,40]
		,title: '用户数据表'
		,cols: [[
			{type: 'checkbox', fixed: 'left'}
			// ,{field:'user_Id', title:'序号', width:80, fixed: 'left', unresize: true, sort: true}
			,{field:'user_Name', title:'用户名', unresize: true, width:100}
			,{field:'user_Regtime', title:'注册时间', width:180}
			,{field:'user_Score', title:'积分', width:100}
			,{field:'user_Upnum', title:'上传数量', width:100}
			,{field:'user_Downnum', title:'下载数量', width:100}
			,{field:'user_Statue', title:'用户状态', width:120}
			,{fixed: 'right', title:'操作', toolbar: '#barDemo', width:150}
		]]

	});

	//头工具栏事件
	table.on('toolbar(test)', function(obj){
		var checkStatus = table.checkStatus(obj.config.id);
		switch(obj.event){
			case 'getCheckData':
				var data = checkStatus.data;
				layer.alert(JSON.stringify(data));
				break;
			case 'getCheckLength':
				var data = checkStatus.data;
				layer.msg('选中了：'+ data.length + ' 个');
				break;
			case 'isAll':
				layer.msg(checkStatus.isAll ? '全选': '未全选');
				break;

			//自定义头工具栏右侧图标 - 提示
			case 'LAYTABLE_TIPS':
				layer.alert('这是工具栏右侧自定义的一个图标按钮');
				break;
		};
	});

	//监听行工具事件
	table.on('tool(test)', function(obj){
		var data = obj.data;
		//console.log(obj)
		if(obj.event === 'del'){
			layer.confirm('真的删除行么', function(index){
				obj.del();
				layer.close(index);
			});
		} else if(obj.event === 'edit'){
			layer.prompt({
				formType: 2
				,value: data.email
			}, function(value, index){
				obj.update({
					email: value
				});
				layer.close(index);
			});
		}
	});
});