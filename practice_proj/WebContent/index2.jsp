<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
<style type="text/css">
*{padding:0;margin:0;}
 .box1{width:100%;height:30px;background-color:lightgray;}
 h3{text-align:center;color:white;}
.box2{width:100%;height:30px;background-color:gray;z-index:999;float:left;}
.box2 ul {list-style:none;}
.box2 ul li{float:left;}
.box3{width:100%;height:50px;background-color:white;z-index:999;float:left;}
.box3 ul {list-style:none;}
.box3 ul li{float:left;margin-top:20px;padding-left:20px;}
.box4{width:100%;height:30px;background-color:lightgray;z-index:999;float:left;padding-left:20px;}
.box5{width:100%;height:30px;background-color:lightgray;z-index:999;float:left;padding-left:20px;}
</style>
</head>
<body>
<div class="box1">
   <h3>产品管理</h3>
</div>
<div class="box2">
  <ul>
    <li style="padding-right:60px;">管理导航：</li>
    <li style="padding-right:40px;">产品类别添加</li>
     <li>产品信息管理</li>
  </ul>
</div>
<div class="box3">
  <ul>
    <li><input type="button" value="添加产品内容"></li>
    
    <li>产品类别<li>
      <select>
      <option selected>|--请选择产品类别|--</option>
      <option>1</option>
      <option>2</option>
      </select>
    </li>&nbsp;&nbsp;
    <li>关键字搜索&nbsp;</li>
    <li><input type="text"></li>
    <li><input type="submit" value="搜索"></li>
  </ul>
</div>
<div class="box4">
 <input type="button" value="中文产品列表" style="margin-top:5px"/>
</div>
<table border="1">
<tr>
<td>选择语言：</td>
<td clospan="3"><input type="radio">中文</td>
</tr>
<tr>
<td>产品分类：</td>
<td>
<select>
<option>YSi...</option>
</select></td>
<td>发布日期：</td>
<td><input type="text" value="2006-12-6"></td>
</tr>
<tr>
<td>产品名称：</td>
<td><input type="text" value="YsI..."></td>
<td>附件名称：</td>
<td><input type="text" ></td>
</tr>
<tr>
<td>添加附件：</td>
<td><input type="text" value="..."></td>
<td></td>
<td><input type="submit" value="删除">&nbsp;
<input type="submit" value="查看"></td>
</tr>
<tr>
<td>简要介绍：</td>
<td><textarea >
...
</textarea></td>
<td>添加产品介绍图片</td>
<td><input type="submit" value="删除">&nbsp;
<input type="reset" disabled="disabled"value="复原"></td>
</tr>
</table>
<div class="box5">
<h3>产品内容</h3>
</div>
 <div id="div1">
    	<p>欢迎使用 wangEditor 富文本编辑器</p>
	</div>
<script src="${pageContext.request.contextPath}/static/wangEditor.min.js"></script>
<script>
    var E = window.wangEditor;
    var editor = new E('#div1');
 	// 上传图片到服务器(处理上传的后台代码)
    editor.customConfig.uploadImgServer = '${pageContext.request.contextPath}/upload';
 	// 隐藏“网络图片”菜单(true是显示--默认，false隐藏)
    editor.customConfig.showLinkImg = false;
 	// 将每张图片大小限制为 3M(单位为字节)
    editor.customConfig.uploadImgMaxSize = 3 * 1024 * 1024;
 	// 限制一次最多能传几张图片，默认为 10000 张（即不限制），需要限制可自己配置
	// 限制一次最多上传 5 张图片
	editor.customConfig.uploadImgMaxLength = 5;
 	// 监听函数，可使用监听函数在上传图片的不同阶段做相应处理
 	editor.customConfig.uploadImgHooks = {
		
    	customInsert: function (insertImg, result, editor) {
        	
        	for(var i in result){
        		//表示文件上传到服务器的路径
        		insertImg('${pageContext.request.contextPath}/static/file/'+result[i]);
        	}
    	}
    }
 	
    editor.create();
</script>
</body>
</html>