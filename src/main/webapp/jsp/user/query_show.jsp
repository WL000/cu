<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<link href="css/style.css" type="text/css" rel="stylesheet">
<!--引用页面背景模板-->
<link rel="stylesheet" href="css/background/login.css" type="text/css" media="all"/>
<link rel="stylesheet" href="css/background/tx.css">
<html>
<head>
    <title>查询用户信息</title>
</head>
<body>
<div id="bg">
    <canvas></canvas>
    <canvas></canvas>
    <canvas></canvas>
</div>
<form name="frmuser" method="post" action="">
    <table border="1" class="table1">
        <thead>
        <tr>
            <th>选择</th>
            <th>编号</th>
            <th>姓名</th>
            <th>性别</th>
            <th>籍贯</th>
            <th>班级</th>
            <th>学号</th>
            <th>住址</th>
        </tr>
        </thead>
            <tr>
                <td align="center">
                    <input type="radio" name="user_id" value="${user.user_id}">
                </td>
                <td align="center">${user.user_id}</td>
                <td align="center">${user.user_name}</td>
                <td align="center">${user.sex}</td>
                <td align="center">${user.birth_place}</td>
                <td align="center">${user.clazz}</td>
                <td align="center">${user.user_no}</td>
                <td align="center">${user.address}</td>
            </tr>
    </table>
    <table border="1" class="table1">
        <tr>
            <td align="center">
                <input type="button" name="btndelete"
                       class="login-button" value="删除" onclick="userdel()">
                <input type="button" name="btnedit"
                       class="login-button" value="修改" onclick="useredit()">
                <input type="button" class="login-button" value="取消" onclick="cancel()"/>
            </td>
        </tr>
    </table>
<script type="text/javascript" src="js/function.js">
</script>
<!--应用美化模板-->
<script src="js/background/jquery-3.3.1.min.js"></script>
<script src="js/background/canva_moving_effect.js"></script>
</form>
</body>
</html>
