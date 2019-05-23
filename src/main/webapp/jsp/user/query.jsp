<%--
  Created by IntelliJ IDEA.
  User: LEYE
  Date: 2018/12/16
  Time: 16:29
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<link href="css/style.css" type="text/css" rel="stylesheet">
<!--引用页面背景模板-->
<link rel="stylesheet" href="css/background/login.css" type="text/css" media="all"/>
<link rel="stylesheet" href="css/background/tx.css">
<html>
<head>
    <title>查询界面</title>
</head>
<body>
<div id="bg">
    <canvas></canvas>
    <canvas></canvas>
    <canvas></canvas>
</div>
<form name="frmuser" method="post" action="">
    <table border="1" class="table1">
        <caption align="center"><b><h1>用户查询</h1></b></caption>
        <tr>
            <td align="center">请输入用户ID:</td>

        </tr>
        <tr>
            <td><input type="text" value="" name="user_id" size="30"/></td>
        </tr>
    </table>
    <table border="1" class="table1">
        <tr>
            <td align="center">
                <input type="button" class="login-button" value="查询" onclick="toquery()"/>
                &nbsp;&nbsp;&nbsp;
                <input type="reset" class="login-button" value="重置"/>
                &nbsp;&nbsp;&nbsp;
                <input type="button" class="login-button" value="取消" onclick="cancel()"/>
            </td>
        </tr>
    </table>
</form>
<script type="text/javascript" src="js/function.js">
</script>
<!--应用美化模板-->
<script src="js/background/jquery-3.3.1.min.js"></script>
<script src="js/background/canva_moving_effect.js"></script>
</body>
</html>
