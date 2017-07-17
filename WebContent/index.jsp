<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html xmlns:v="urn:schemas-microsoft-com:vml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>流程图DEMO</title>
<!--[if lt IE 9]>
<?import namespace="v" implementation="#default#VML" ?>
<![endif]-->
<link rel="stylesheet" type="text/css" href="gooflow/codebase/GooFlow.css"/>
<script type="text/javascript" src="gooflow/jquery.min.js"></script>
<script type="text/javascript" src="gooflow/GooFunc.js"></script>
<script type="text/javascript" src="gooflow/codebase/GooFlow.js"></script>
<script type="text/javascript" src="gooflow/codebase/GooFlow_color1.js"></script>
<script type="text/javascript">
var property = {
	width:1200,
	height:540,
	toolBtns:["start round mix","end round","task","node","chat","state","plug","join","fork","complex mix"],
	haveHead:true,
	headLabel:true,
	headBtns:["new","open","save","undo","redo","reload"],//如果haveHead=true，则定义HEAD区的按钮
	haveTool:true,
	haveGroup:true,
	useOperStack:true
};
var remark = {
	cursor:"选择指针",
	direct:"结点连线",
	start:"入口结点",
	end:"结束结点",
	task:"任务结点",
	node:"自动结点",
	chat:"决策结点",
	state:"状态结点",
	plug:"附加插件",
	fork:"分支结点",
	join:"联合结点",
	complex:"复合结点",
	group:"组织划分框编辑开关"
};
var demo;
$(document).ready(function(){
	demo = $.createGooFlow($("#demo"), property);
	demo.setNodeRemarks(remark);
	demo.loadData(jsondata);
});
var out;
function Export() {
	var data = demo.exportData();
	alert(data.title);
    document.getElementById("result").value=JSON.stringify(demo.exportData());
}
</script>
</head>
<body>
<div id="demo" style="margin:10px"></div>
<input id="submit" type="button" value='导出结果' onclick="Export()"/>
<textarea id="result" style="width:1000px;height:800px"></textarea>
</body>
</html>