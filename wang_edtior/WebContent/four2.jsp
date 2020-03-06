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
    
</div>
<script type="text/javascript" src="${pageContext.request.contextPath}/static/wangEditor.min.js"></script>
<script type="text/javascript">
    var E = window.wangEditor
    var editor = new E('#div1')
    editor.create()
    //Js设置内容
    var str='';
    str += '<p>好天气</p>';
    str += '<p>呕</p>';
    str += '<p>lallalalal</p>';
    str += '<img src="${pageContext.request.contextPath}/static/bg2.png" width="200px" />';
    editor.txt.html(str);//设置富文本框中的内容
    editor.txt.append('<p>追加的内容</p>');  //追加不会清除原来的内容
   // editor.txt.clear(); //清空内容
</script>
</body>
</html>