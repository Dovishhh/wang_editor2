<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
<style type="text/css"> 
.ttt{text-align:center;}
</style>
</head>
<body>
<table border="1" bgcolor="#eCFFFF" align="center" >
    <tr>
	    <td>招聘对象</td>
	    <td><input type="text" size="10" value="行业客户经理"/></td>
    </tr>
     <tr>
	    <td>招聘人数</td>
	    <td><input type="text" size="3" value="2"/>人</td>
    </tr>
     <tr>
	    <td>工作地点</td>
	    <td><input type="text"  value="上海"/></td>
    </tr>
     <tr>
	    <td>工资待遇</td>
	    <td><input type="text" size="9" value="面议"/></td>
    </tr>
     <tr>
	    <td>发布日期</td>
	    <td><input type="text" size="6" value="2005-12-18"/></td>
    </tr>
     <tr>
	    <td>有效期限</td>
	    <td><input type="text" size="3" value="20"/>天</td>
    </tr>
      <tr>
	    <td >招聘要求</td>
	    <td>
		     <div id="editor">
		        <p>欢迎使用 <b>wangEditor</b> 富文本编辑器</p>
		    </div>
    	</td>
    </tr>
    <tr>
	    <td colspan="2"  class="ttt"><input type="submit" value="确定" />&nbsp;
	        <input type="reset" value="重置" /></td>
    </tr>
</table>
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