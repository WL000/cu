<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<link href="css/style.css" type="text/css" rel="stylesheet">
<!--引用页面背景模板-->
<link rel="stylesheet" href="css/background/login.css" type="text/css" media="all"/>
<link rel="stylesheet" href="css/background/tx.css">
<html>
<head>
    <title>修改用户信息</title>
</head>
<body>
<div id="bg">
    <canvas></canvas>
    <canvas></canvas>
    <canvas></canvas>
</div>
<form name="frmuser" action="">

    <table border="1" class="table1">
        <input type="hidden" name="user_id" value="${user.user_id}">
        <caption align="center"><b><h1>修改用户信息</h1></b></caption>
        <tr>
            <td align="center">姓名:</td>
            <td><input type="text" value="${user.user_name}" name="user_name" size="30"/></td>
        </tr>
        <tr>
            <td align="center">性别:</td>
            <td>
                <c:set var="sex" value="${user.sex}"></c:set>
                <c:if test="${sex=='男'}">
                    <input type="radio" test="${sex=='男'}" name="sex" size="1" checked/>男
                    <input type="radio" value="女" name="sex" size="1"/>女
                </c:if>
                <c:if test="${sex=='女'}">
                    <input type="radio" test="${sex=='女'}" name="sex" size="1" checked/>女
                    <input type="radio" value="男" name="sex" size="1"/>男
                </c:if>
                &nbsp;&nbsp;籍贯:
                <c:set var="brith_place" value="${user.birth_place}"></c:set>
                <select name="birth_place">
                <c:if test="${brith_place=='河北'}">
                    <option value="河北" selected>河北</option>
                </c:if>
                <c:if test="${brith_place=='新疆'}">
                    <option value="新疆" selected>新疆</option>
                </c:if>
                <c:if test="${brith_place=='江苏'}">
                    <option value="江苏" selected>江苏</option>
                </c:if>
                <c:if test="${brith_place=='北京'}">
                    <option value="北京" selected>北京</option>
                </c:if>
                    <option value="新疆">新疆</option>
                    <option value="江苏">江苏</option>
                    <option value="北京">北京</option>
            </select>
            </td>
        </tr>
        <tr>
            <td align="center">班级:</td>
            <td><input placeholder="请输入班级" type="text" value="${user.clazz}" name="clazz" size="30"/></td>
        </tr>
        <tr>
            <td align="center">学号:</td>
            <td><input type="text" placeholder="请输入学号" value="${user.user_no}" name="user_no" size="30"/></td>
        </tr>
        <tr>
            <td align="center">住址:</td>
            <td><input type="text" placeholder="请输入住址" value="${user.address}" name="address" size="30"/></td>
        </tr>
    </table>
    <table border="1" class="table1">
        <tr>
            <td align="center">
                <input type="button" class="login-button" value="提交" onclick="tj()"/>
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
