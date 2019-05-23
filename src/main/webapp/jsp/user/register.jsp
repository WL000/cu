<%--
  Created by IntelliJ IDEA.
  User: LEYE
  Date: 2018/12/16
  Time: 18:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<link href="css/style.css" type="text/css" rel="stylesheet">
<!--引用页面背景模板-->
<link rel="stylesheet" href="css/background/login.css" type="text/css" media="all"/>
<link rel="stylesheet" href="css/background/tx.css">
<html>
<head>
    <title>用户注册</title>
</head>
<body>
<div id="bg">
    <canvas></canvas>
    <canvas></canvas>
    <canvas></canvas>
</div>
<form name="frmuser" action="">
    <table border="1" class="table1">
        <caption align="center"><b><h1>用户注册</h1></b></caption>
        <tr>
            <td align="center">姓名:</td>
            <td><input type="text" value="" name="user_name" size="30"/></td>
        </tr>
        <tr>
            <td align="center">性别:</td>
            <td>
                <input type="radio" value="男" name="sex" size="1"/>男
                <input type="radio" value="女" name="sex" size="1"/>女
                &nbsp;&nbsp;籍贯:<select id="" name="birth_place">
                <option value="河北" selected="selected">河北</option>
                <option value="新疆">新疆</option>
                <option value="江苏">江苏</option>
                <option value="北京">北京</option>
            </select>
            </td>
        </tr>
        <tr>
            <td align="center">班级:</td>
            <td><input placeholder="请输入班级" type="text" name="clazz" size="30"/></td>
        </tr>
        <tr>
            <td align="center">学号:</td>
            <td><input type="text" placeholder="请输入学号" name="user_no" size="30"/></td>
        </tr>
        <tr>
            <td align="center">住址:</td>
            <td><input type="text" placeholder="请输入住址" name="address" size="30"/></td>
        </tr>
    </table>
    <table border="1" class="table1">
        <tr>
            <td align="center">
                <input type="button" class="login-button" value="添加" onclick="addUser()"/>
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
