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
    <title>用户列表</title>
</head>
<body>
<div id="bg">
    <canvas></canvas>
    <canvas></canvas>
    <canvas></canvas>
</div>
<form name="frmuser" method="post" action="">
    <table border="1">
        <caption align="center"><b><h1>用户列表</h1></b></caption>
        <tr>
            <td align="right">
                <input type="button" name="btnadd"
                       class="login-button" value="添加" onclick="useradd()">
                <input type="button" name="btnadd"
                       class="login-button" value="查询" onclick="query()">
            </td>
        </tr>
    </table>
    <table border="1">
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
            <th>操作</th>
        </tr>
        </thead>
        <c:forEach var="user" items="${userlist}">
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
                <td>
                    <input type="button" name="btndelete"
                           class="login-button" value="删除" onclick="userdel()">
                    <input type="button" name="btnedit"
                           class="login-button" value="修改" onclick="useredit()">
                </td>
            </tr>
        </c:forEach>
    </table>
</form>
<script type="text/javascript" src="js/function.js">
</script>
<!--应用美化模板-->
<script src="js/background/jquery-3.3.1.min.js"></script>
<script src="js/background/canva_moving_effect.js"></script>
</body>
</html>
