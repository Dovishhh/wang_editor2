<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>
 <div id="editor">
        <p>欢迎使用 <b>wangEditor</b> 富文本编辑器</p>
    </div>

    <!-- 注意， 只需要引用 JS，无需引用任何 CSS ！！！-->
    <script type="text/javascript" src="${pageContext.request.contextPath }/static/wangEditor.min.js"></script>
    <script type="text/javascript">
        var E = window.wangEditor    //把window.wangEditor的值赋给变量E
        var editor = new E('#editor')  //把 new E('#editor') 的值赋给变量editor
        // 或者 var editor = new E( document.getElementById('editor') )
        editor.create()  //此处使用了create方法创建了富文本框
    </script>
</body>
</html>