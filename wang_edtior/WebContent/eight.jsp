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
    // 关闭粘贴样式的过滤(true去掉样式，false为文本自带的格式)
    editor.customConfig.pasteFilterStyle = false;
  
    // 忽略粘贴内容中的图片(true忽略，false不忽略)
    editor.customConfig.pasteIgnoreImg = false;

    // 自定义处理粘贴的文本内容
    editor.customConfig.pasteTextHandle = function (content) {
        // content 即粘贴过来的内容（html 或 纯文本），可进行自定义处理然后返回
        //返回的是最后粘贴到输入框中的内容
        return content + '<p>在粘贴内容后面追加一行</p>'
    }
    editor.create()
</script>
</body>
</html>