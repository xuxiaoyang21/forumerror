<%--
  Created by IntelliJ IDEA.
  User: Mxia
  Date: 2016/12/18
  Time: 13:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>发布新主题</title>
    <link href="http://cdn.bootcss.com/font-awesome/4.5.0/css/font-awesome.min.css" rel="stylesheet">
    <link href="http://cdn.bootcss.com/bootstrap/2.3.1/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="/static/css/style.css">
    <link rel="stylesheet" href="/static/js/editer/styles/simditor.css">
</head>
<body>
<%@include file="../include/headBar.jsp"%>
<div class="container">
    <div class="box">
        <div class="box-header">
            <span class="title"><i class="fa fa-plus"></i> 发布新主题</span>
        </div>

        <form action="" style="padding: 20px">
            <label class="control-label">主题标题</label>
            <input type="text" style="width: 100%;box-sizing: border-box;height: 30px" placeholder="请输入主题标题，如果标题能够表达完整内容，则正文可以为空">
            <label class="control-label">正文</label>
            <textarea name="" id="editor"></textarea>

            <select name="" id="" style="margin-top:15px;">
                <option value="">请选择节点</option>
                <option value="">问与答</option>
                <option value="">分享</option>
                <option value="">Java</option>
            </select>

        </form>
        <div class="form-actions" style="text-align: right">
            <button class="btn btn-primary">发布主题</button>
        </div>


    </div>
    <!--box end-->
</div>
<!--container end-->
<script src="http://cdn.bootcss.com/jquery/1.11.2/jquery.min.js"></script>
<script src="js/editer/scripts/module.min.js"></script>
<script src="js/editer/scripts/hotkeys.min.js"></script>
<script src="js/editer/scripts/uploader.min.js"></script>
<script src="js/editer/scripts/simditor.min.js"></script>
<script>
    $(function(){
        var editor = new Simditor({
            textarea: $('#editor')
            //optional options
        });
    });
</script>

</body>
</html>
