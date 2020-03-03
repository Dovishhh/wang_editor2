<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
<style type="text/css">
*{padding:0px;margin:0px;}
   .box{width:100%;height:100%;}
   .box1{width:100%;height:40px;border:1px solid #ccc;}
   .box1 ul{list-style:none;}
   .box1 ul li{float:left;padding:10px 0px 0px 250px;}
  .box2{width:30%;height:80%;float:left;z-index:999;border:1px solid #ccc;}
   .box2 ul{list-style:none;}
   .box2 ul li{float:left;padding:10px 0px 200px 248px;}
   .box3{width:50%;height:auto;float:left;padding:50px 0px 50px 0px;border:1px solid #ccc;z-index:999;}
   .box4{float:left;z-index:999;margin-top:100px;}
</style>
</head>
<body>
 <div class="box">
       <div class="box1">
        <ul>
           <li>新闻</li>
           <li>运动</li>
           <li>游戏</li>
           <li>教育</li>
        </ul>
       </div>
       <div class="box2">
        <ul>
           <li>国内新闻</li>
           <li>国际新闻</li>
           <li>热点新闻</li>
        </ul>
       </div>
       <div class="box3">
         <p>哈哈哈哈哈</p>
       </div>
       <div class="box4">
       <div id="editor">
        <p>欢迎使用 <b>wangEditor</b> 富文本编辑器</p>
    </div>
       </div>
    </div>
        <!-- 注意， 只需要引用 JS，无需引用任何 CSS ！！！-->
    <script type="text/javascript" src="${pageContext.request.contextPath }/static/wangEditor.min.js"></script>
    <script type="text/javascript">
        var E = window.wangEditor    //把window.wangEditor的值赋给变量E
        var editor = new E('#editor')  //把 new E('#editor') 的值赋给变量editor
     
        editor.create()  //此处使用了create方法创建了富文本框
        // 禁用编辑功能，在create方法之后
        editor.$textElem.attr('contenteditable', false) 
        // 开启编辑功能
	   // editor.$textElem.attr('contenteditable', true)
    </script>
</body>
</html>