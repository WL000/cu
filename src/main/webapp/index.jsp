<!--首页界面-->
<!DOCTYPE HTML>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!--引用页面背景模板-->
<link rel="stylesheet" href="css/background/login.css" type="text/css" media="all"/>
<link rel="stylesheet" href="css/background/tx.css">
<html>
<head>
    <title>用户管理系统首页</title>
</head>
<body>
<div id="bg">
    <canvas></canvas>
    <canvas></canvas>
    <canvas></canvas>
</div>
<h1>用户管理系统</h1>
<div class="sub-main-w3">
    <input type="submit" value="用户列表" onclick="login()">
</div>
<div class="sub-main-w3">
    <input type="submit" value="查询" onclick="query()">
</div>
<div class="footer">
    <p>Copyright &copy; 计科1603王磊.</p>
</div>
<script type="text/javascript" src="js/function.js">
</script>

<!--应用美化模板-->
<script src="js/background/jquery-3.3.1.min.js"></script>
<script src="js/background/canva_moving_effect.js"></script>
</body>
</html>