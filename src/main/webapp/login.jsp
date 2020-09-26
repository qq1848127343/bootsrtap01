<%--
  Created by IntelliJ IDEA.
  User: 123456
  Date: 2020-09-17
  Time: 14:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>登录界面</title>
    <script type="text/javascript" src="js/jquery.min.js"></script>
    <script type="text/javascript" src="js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="css/bootstrap.css" />
    <style>

    </style>
</head>
<body>
    <form id="user_form">
        <div class="row">
            <fieldset class="col-md-6 col-md-offset-3">
            <legend>登录</legend>
            <div id="uiddiv" class="form-group has-feedback">
                <label for="uid" class="control-label">用户名：</label>
                <input type="text" class="form-control" name="uname" id="uid" placeholder="请输入用户名">
                <span id="spuid" class="glyphicon glyphicon-remove form-control-feedback"></span>
            </div>
            <div id="pwddiv" class="form-group has-feedback">
                <label for="pwd" class="control-label">密码：</label>
                <input type="password" class="form-control" name="pwd" id="pwd" placeholder="请输入密码">
                <span id="sppwd" class="glyphicon glyphicon-remove form-control-feedback"></span>
            </div>

            <a id="dl" href="#" class="btn btn-default col-md-3 col-md-offset-2">登录</a>
            <a id="zc" class="btn btn-default col-md-3 col-md-offset-2">注册</a>
            </fieldset>
        </div>
    </form>

<script type="text/javascript">
    //验证用户名
    $("#uid").blur(function () {
        var uid=$("#uid").val();
        if(uid==undefined||uid==""){
            alert("用户名不能为空");
            $("#uiddiv").attr("class","form-group has-error has-feedback");
            $("#spuid").attr("class","glyphicon glyphicon-remove form-control-feedback");
        }else {
            $("#uiddiv").attr("class","form-group has-success has-feedback");
            $("#spuid").attr("class","glyphicon glyphicon-ok form-control-feedback");
        }
    });

    //验证密码
    $("#pwd").blur(function () {
        var pwd=$("#pwd").val();
        if(pwd==undefined||pwd==""){
            alert("密码不能为空");
            $("#pwddiv").attr("class","form-group has-error has-feedback");
            $("#sppwd").attr("class","glyphicon glyphicon-remove form-control-feedback");
        }else {
            $("#pwddiv").attr("class","form-group has-success has-feedback");
            $("#sppwd").attr("class","glyphicon glyphicon-ok form-control-feedback");
        }
    });

    $("#dl").click(function () {
        var yz=$("#sppwd").attr("class")+$("#spuid").attr("class");
        if(yz.indexOf("glyphicon-remove") >= 0){
            return;
        }
        var user={
            'uname':$("#uid").val(),
            'pwd':$("#pwd").val()
        };
        //登录
        $.post("dl.action",user,function (data) {
            //回调函数    等操作处理完成了，才会触发
            if(data=="登录失败"){
                alert(data);
                return;
            }
            window.location ="index.jsp";
        },"text");
    });
</script>
</body>
</html>
