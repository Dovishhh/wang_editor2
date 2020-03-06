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
    <p>欢迎使用 wangEditor 富文本编辑器</p>
</div>

<script type="text/javascript" src="${pageContext.request.contextPath}/static/wangEditor.min.js"></script>
<script type="text/javascript">
    var E = window.wangEditor
    var editor = new E('#div1')

    // 配置服务器端地址
    editor.customConfig.uploadImgServer = '${pageContext.request.contextPath}/upload';
   //隐藏网络图片菜单（true显示，false隐藏）
    editor.customConfig.showLinImg=false;
    editor.customConfig.uploadImgMaxSize = 3 * 1024 * 1024
 // 限制一次最多上传 5 张图片
    editor.customConfig.uploadImgMaxLength = 5
    editor.customConfig.uploadImgHooks = {
    		// 如果服务器端返回的不是 {errno:0, data: [...]} 这种格式，可使用该配置
        	// （但是，服务器端返回的必须是一个 JSON 格式字符串！！！否则会报错）
        	// 图片上传并返回结果，自定义插入图片的事件（而不是编辑器自动插入图片！！！）
        	customInsert: function (insertImg, result, editor) {
            	// insertImg 是插入图片的函数，editor 是编辑器对象，result 是服务器端返回的结果
            	// 举例：假如上传图片成功后，服务器端返回的是 [url,url,...] 这种格式，即可这样插入图片：
            	for(var i in result){// result 必须是一个 JSON 格式字符串！！！否则报错
            		insertImg('${pageContext.request.contextPath}/static/file/'+result[i]);
            	}
        	}
        }
    editor.create()
</script>
</body>
</html>