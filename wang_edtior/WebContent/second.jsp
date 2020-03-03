<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>
 <div id="div1" style="border:1px solid #ccc;"></div>
 <!-- 可以使用min-height 实现编辑区域自动增加高度 -->
 <div  style="padding:5px 0;color:#ccc;">中间隔离带</div>
 <div id="div2" style="border:1px solid #ccc;height:400px;">

        <p>请输入内容</p>
 </div>
    <!-- 注意， 只需要引用 JS，无需引用任何 CSS ！！！-->
    <script type="text/javascript" src="${pageContext.request.contextPath }/static/wangEditor.min.js"></script>
    <script type="text/javascript">
        var E = window.wangEditor    //把window.wangEditor的值赋给变量E
        var editor1 = new E('#div1','#div2')  //把 值赋给变量editor1
        // 或者 var editor = new E( document.getElementById('editor') )
        editor1.create()  //此处使用了create方法创建了富文本框
    </script>
</body>
</html>