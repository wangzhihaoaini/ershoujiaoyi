<%--
  Created by IntelliJ IDEA.
  User: wzh82
  Date: 2019/5/2
  Time: 11:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="../background/commons/info.jsp" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>修改上架物品信息</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport"
          content="width=device-width,user-scalable=yes, minimum-scale=0.4, initial-scale=0.8,target-densitydpi=low-dpi"/>
</head>
<body>
<div class="x-body">
    <form class="layui-form">
        <input hidden="hidden" id="hiddenId" value="">
        <div class="layui-form-item">
            <label for="title" class="layui-form-label">
                <span class="x-red">*</span>物品名称
            </label>
            <div class="layui-input-inline">
                <input value="" type="text" id="title" name="title" class="layui-input">
            </div>
        </div>
        <div class="layui-form-item">
            <label for="deal" class="layui-form-label">
                <span class="x-red">*</span>交易方式
            </label>
            <div class="layui-input-inline">
                <input value="" type="text" id="deal" name="deal"
                       class="layui-input">
            </div>
        </div>
        <div class="layui-form-item">
            <label for="where" class="layui-form-label">
                <span class="x-red">*</span>交易地点
            </label>
            <div class="layui-input-inline">
                <input value="" type="text" id="where" name="where"
                       class="layui-input">
            </div>
        </div>
        <div class="layui-form-item">
            <label for="price" class="layui-form-label">
                <span class="x-red">*</span>物品价格
            </label>
            <div class="layui-input-inline">
                <input value="" type="text" id="price" name="price"
                       class="layui-input">
            </div>
        </div>
        <div class="layui-form-item">
            <label for="sell_phone" class="layui-form-label">
                <span class="x-red">*</span>联系方式
            </label>
            <div class="layui-input-inline">
                <input value="" type="text" id="sell_phone" name="sell_phone"
                       class="layui-input">
            </div>
        </div>
        <div class="layui-form-item">
            <label for="introduce" class="layui-form-label">
                <span class="x-red">*</span>商品简介
            </label>
            <div class="layui-input-inline">
                <input value="" type="text" id="introduce" name="introduce"
                       class="layui-input">
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">
            </label>
            <button onclick="update()" class="layui-btn" lay-filter="update" lay-submit="" style="margin-left: 80px">
                更新
            </button>
        </div>
    </form>
</div>
<script>
    function update() {
        $.ajax({
            type: "post",
            url: "<%=request.getContextPath()%>/ershouServlet",
            data: {
                "action": "update",
                "id": $("#hiddenId").val(),
                "title": $("#title").val(),
                "deal": $("#deal").val(),
                "where": $("#where").val(),
                "price": $("#price").val(),
                "sellPhone": $("#sell_phone").val(),
                "introduce": $("#introduce").val()
            },
            dateType: "text",
            success: function (msg) {
                if (msg === "更新成功!") {
                    alert(msg);
                    window.reload(true);
                } else {
                    alert(msg);
                }
            }
        });
    }

    function child(object1) {
        //在这里你可以写你的jquery $(function(){ })   等等操作
        var id = object1.id;
        var title = object1.title;
        var deal = object1.deal;
        var where = object1.where;
        var price = object1.price;
        var sell_phone = object1.sellPhone;
        var introduce = object1.introduce;
        $("#hiddenId").val(id);
        $("#title").val(title);
        $("#deal").val(deal);
        $("#where").val(where);
        $("#price").val(price);
        $("#sell_phone").val(sell_phone);
        $("#introduce").val(introduce);
    }
</script>
</body>