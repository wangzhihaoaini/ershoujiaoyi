<%--
  Created by IntelliJ IDEA.
  User: wzh82
  Date: 2019/4/8
  Time: 22:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="../background/commons/info.jsp" %>
<%@ include file="../background/commons/tanchuceng.jsp" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>二货商城-上架物品详情</title>
    <link rel="icon" href="<%=request.getContextPath()%>/image/logo2.ico" type="image/x-icon"/>
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/static/css/style.css">
    <style>
        .confirmDescConfirmIcon {
            height: 50px;
            width: 120px;
            margin-left: 720px;
            border-radius: 5px;
            background: lightcyan;
        }

        .update {
            height: 50px;
            width: 120px;
            margin-left: 250px;
            border-radius: 5px;
            background: lightcyan;
        }

        .deliver {
            height: 50px;
            width: 120px;
            margin-left: 650px;
            margin-bottom: 30px;
            border-radius: 5px;
            background: lightcyan;
        }

        #realImage {
            margin-left: 270px;
            display: inline;
        }
    </style>
</head>
<body>
<!-- self_info -->
<div style="height: auto" class="grzxbj">
    <div class="selfinfo center">
        <div class="lfnav fl">
            <div class="ddzx">卖家</div>
            <div class="subddzx">
                <ul>
                    <li id="sellUser"></li>
                </ul>
            </div>
            <div class="ddzx">联系方式</div>
            <div class="subddzx">
                <ul>
                    <li id="sellPhone"></li>
                </ul>
            </div>
            <div class="ddzx">上架日期</div>
            <div class="subddzx">
                <ul>
                    <li id="date"></li>
                </ul>
            </div>
        </div>
        <div class="rtcont fr">
            <input hidden="hidden" id="hiddenId" value="">
            <div class="ddzxbt">物品详情</div>
            价格:
            <div id="price" style="display: inline;"></div>
            <br/><br/><br/><br/>
            商品展示:
            <div id="display">
                <img src="" id="realImage" height="310px" width="350px"></div>
            商品介绍:
            <div id="introduce" style="display: inline;"></div>
        </div>
        <button class="update" onclick="update()">修改信息</button>
        <button class="confirmDescConfirmIcon">下架该物品</button>
        <button class="deliver" onclick="deliver()">我已发货</button>
        <div class="clear"></div>
    </div>
</div>
<script>
    var object1;

    function child(realJsonObject) {
        //在这里你可以写你的jquery $(function(){ })   等等操作
        object1 = realJsonObject;
        var id = realJsonObject.id;
        var image = realJsonObject.image;
        var price = realJsonObject.price;
        var sellUser = realJsonObject.sellUser;
        var sellPhone = realJsonObject.sellPhone;
        var introduce = realJsonObject.introduce;
        var date = realJsonObject.date;
        $("#hiddenId").val(id);
        $("#realImage").attr("src", "../image/" + image);
        $("#price").html("￥" + price);
        $("#sellUser").html(sellUser);
        $("#sellPhone").html(sellPhone);
        $("#introduce").html(introduce);
        $("#date").html(date);
    }

    //更新物品信息
    function update() {
        layer.open({
            title: this.text,
            type: 2,
            skin: 'layui-layer-rim', //加上边框
            area: [window.screen.width / 3.5 + 'px', window.screen.height / 1.8 + 'px'], //宽高
            maxmin: true, //开启最大化最小化按钮
            content: "<%=request.getContextPath()%>/foreground/shangjiaUpdate.jsp",
            success: function (layero, index) {
                // 获取子页面的iframe
                var iframe = window['layui-layer-iframe' + index];
                // 向子页面的全局函数child传参
                iframe.child(object1);
            }
        })
    }

    $('.confirmDescConfirmIcon').click(function () {
        $.sendConfirm({
            hideHeader: true,
            withIcon: true,
            desc: '确定要下架吗?',
            button: {
                confirm: '确定',
                cancel: '取消'
            },
            onConfirm: function () {
                var id = $("#hiddenId").val();
                $.ajax({
                    type: "post",
                    url: "<%=request.getContextPath()%>/ershouServlet",
                    data: {
                        "action": "deleteOne",
                        "id": id
                    },
                    dateType: "text",
                    success: function (msg) {
                        if (msg === "下架成功!") {
                            $.sendSuccessToTop(msg, 3000, function () {
                                console.log('sendSuccessToTop closed');
                            });
                            // 获得frame索引
                            var index = parent.layer.getFrameIndex(window.name);
                            //关闭当前frame
                            window.setTimeout("parent.layer.close(index);", 3000);
                            window.setTimeout("window.parent.location.reload();", 3000);
                        } else {
                            $.sendWarning(msg, 3000, function () {
                                console.log('sendWarning closed');
                            });
                        }
                    }
                });
            },
            onCancel: function () {
                console.log('点击取消！');
            },
            onClose: function () {
                console.log('点击关闭！');
            }
        });
    });

    //已发货，并通知买家
    function deliver() {
        var id = $("#hiddenId").val();
        $.ajax({
            type: "post",
            url: "<%=request.getContextPath()%>/ershouServlet",
            data: {
                "action": "delivered",
                "id": id
            },
            dateType: "text",
            success: function (msg) {
                if (msg === "已通知买家,请注意买家动态!") {
                    $.sendSuccessToTop(msg, 3000, function () {
                        console.log('sendSuccessToTop closed');
                    });
                    // 获得frame索引
                    var index = parent.layer.getFrameIndex(window.name);
                    //关闭当前frame
                    window.setTimeout("parent.layer.close(index);", 3000);
                    window.setTimeout("window.parent.location.reload();", 3000);
                } else {
                    $.sendWarning(msg, 3000, function () {
                        console.log('sendWarning closed');
                    });
                }
            }
        });
    }
</script>
</body>
</html>