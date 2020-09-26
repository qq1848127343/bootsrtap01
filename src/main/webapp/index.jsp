<%--
  Created by IntelliJ IDEA.
  User: 123456
  Date: 2020-09-17
  Time: 17:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>主页</title>
    <script type="text/javascript" src="js/jquery.min.js"></script>
    <script type="text/javascript" src="js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="css/bootstrap.css" />
    <link rel="stylesheet" href="css/bootstrap-table.css">
    <script src="js/bootstrap-table.js"></script>
<%-- 汉化文件，放在 bootstrap-table.js 后面--%>
    <script src="js/bootstrap-table-zh-CN.js"></script>
</head>
<body>
<div id="toolbar">

    <form class="form-inline">


        <div class="input-group">
            <span class="input-group-addon">姓名</span>
            <input type="text" id="searchname" class="form-control" placeholder="请输入姓名">
            <div class="input-group-btn">
                <input type="button" class="btn btn-success" id="btnsearch" value="查询">
            </div>
        </div>

        <input class="btn btn-primary" data-toggle="modal" data-target="#adduserwin" value ="添加"  />

    </form>
</div>
    <table id="userbg" class="table table-bordered table-hover">

    </table>




    <script type="text/javascript">
        var userbg={
            columns: [{
                checkbox: true,
                visible: true                  //是否显示复选框
            }, {
                field: 'id',
                title: 'ID',
                sortable: true
            }, {
                field: 'name',
                title: '性名',
                sortable: true
            }, {
                field: 'uname',
                title: '用户名',
                sortable: true
            }, {
                field: 'pwd',
                title: '密码',
                sortable: true
            }, {
                field: 'sex',
                title: '性别'
            }],
            url: 'queryUserbycond2.action',     //请求后台的URL（*）
            method: 'GET',                      //请求方式（*）
            pagination: true,                   //是否显示分页（*）
            sortable: true,                     //是否启用排序
            sortOrder: "asc",                   //排序方式
            sidePagination: "server",           //分页方式：client客户端分页，server服务端分页（*）
            toolbar: '#toolbar',              //工具按钮用哪个容器
            pageNumber:1,
            pageSize:3,
            pageList: [3, 5, 10, 20],        //可供选择的每页的行数（*）
            search: true,                      //是否显示表格搜索
            strictSearch: true,
            showToggle: true,                   //是否显示详细视图和列表视图的切换按钮
            showRefresh: true,                  //是否显示刷新按钮
            clickToSelect: true,                //是否启用点击选中行
            //得到查询的参数
            queryParams : function (params) {
                //这里的键的名字和控制器的变量名必须一直，这边改动，控制器也需要改成一样的
                var temp = {
                    rows: params.limit,                         //页面大小
                    page: (params.offset / params.limit) + 1  //页码
                };
                return temp;
            }
        };
        $('#userbg').bootstrapTable(userbg);

    </script>
</body>
</html>
