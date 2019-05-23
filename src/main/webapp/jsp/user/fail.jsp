<%--
  Created by IntelliJ IDEA.
  User: LEYE
  Date: 2018/12/17
  Time: 1:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>注意,操作失败</title>
</head>
<body>
<!--引用页面背景模板-->
<link rel="stylesheet" href="css/background/login.css" type="text/css" media="all"/>
<link rel="stylesheet" href="css/background/tx.css">
<div id="bg">
    <canvas></canvas>
    <canvas></canvas>
    <canvas></canvas>
</div>
<A  href="/toUserList" ><h1 align="center" style="color: orangered">您的操作失败啦,用户名或者用户id不得为空!!!!点击跳转至用户列表</h1></A>
<script src="js/background/jquery-3.3.1.min.js"></script>
<script src="js/background/canva_moving_effect.js"></script>
</body>
</html>
