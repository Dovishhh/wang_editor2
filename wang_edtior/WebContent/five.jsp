<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>
<div id="div1">
    <p>欢迎使用 wangEditor 编辑器</p>
    <img src="${pageContext.request.contextPath}/static/bg2.png"  />
</div>
<button id="btn1">获取html</button>
<button id="btn2">获取text</button>

<script type="text/javascript" src="${pageContext.request.contextPath}/static/wangEditor.min.js"></script>
<script type="text/javascript">
    var E = window.wangEditor
    var editor = new E('#div1')
    editor.create()
    //单击btn1时：addEventListener? js的方法，用于给元素添加事件，
	    		  //第一个参数是事件，
	    		 //第二个参数是事件触发后执行的方法
    document.getElementById('btn1').addEventListener('click', function () {
        // 读取 html
        alert(editor.txt.html())   //可以获取所有内容，包括标签
    }, false)
    
        //单击btn2时： 
    document.getElementById('btn2').addEventListener('click', function () {
        // 读取 text
        alert(editor.txt.text()) //只能获取文本内容
    }, false)

</script>
</body>
</html>