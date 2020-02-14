var hidNode;
var path;

window.onload = function () {
	hidNode = document.getElementById("hid");
	path = hidNode.value;
	// alert(path+'/file/fileUpload.action');
};

layui.use(['upload','layer','form'], function() {
	var $ = layui.jquery
		, upload = layui.upload
		, layer = layui.layer
		, form = layui.form;

	//选完文件后不自动上传
	upload.render({
		elem: '#test8'
		,url: path+'/file/fileUpload.action' //改成您自己的上传接口
		,accept:'file'
		,auto: false
		,data:{
			filename:function () {
				return $('#filename').val();
			},
			fileintroduction:function () {
				return $('#fileintroduction').val();
			},
			filescore:function () {
				return $('#filescore').val();
			}
		}
		,multiple: false
		,bindAction: '#test9'
		// ,choose: function (obj) {
		// 	alert(obj);
		// }
		,before: function(obj){ //obj参数包含的信息，跟 choose回调完全一致，可参见上文。
			layer.load(); //上传loading
		}
		,done: function(res, index, upload){
			if(res.code == 0){
				alert("上传成功");
				// layer.msg('上传成功');
			}
			layer.closeAll('loading'); //关闭loading
		}
		,error: function(index, upload){
			layer.closeAll('loading'); //关闭loading
		}
	});

	//监听提交
	form.on('submit(demo1)', function(data){
		$('#test9').click();
		return false;
	});
});