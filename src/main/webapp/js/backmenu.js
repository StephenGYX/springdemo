function classchange(node) {

	var className = $(node)[0].className;

	if(className==="layui-nav-item layui-nav-itemed"){

		$(node)[0].className = "layui-nav-item";

	}else if(className==="layui-nav-item"){

		$(node)[0].className = "layui-nav-item layui-nav-itemed";
	}

	console.log(className);
}