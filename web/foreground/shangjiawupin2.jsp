<%--
  Created by IntelliJ IDEA.
  User: wzh82
  Date: 2019/5/2
  Time: 14:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="../background/commons/info.jsp" %>
<html>
<head>
    <title>上架物品</title>
</head>
<body>
<input hidden="hidden" id="fileName" value="${requestScope.fileName}">
<br/><br/><br/>
<div>
    <label class="layui-form-label">物品名称:</label>
    <div class="layui-input-block">
        <input type="text" id="title" placeholder="请控制16字以内"
               class="layui-input" style="width: 300px">
    </div>
</div>
<br/>
<div style="margin-left: 35px">
    <input hidden="hidden" id="leixing" value="">
    物品类型:&nbsp;&nbsp;&nbsp;
    <select id="select1" lay-verify="type1" style="width: 300px">
        <option>手机</option>
        <option>电脑</option>
        <option>配件</option>
        <option>电器</option>
        <option>书籍</option>
        <option>娱乐</option>
        <option>运动</option>
        <option>代步</option>
    </select>
</div>
<br>
<div>
    <label class="layui-form-label">交易方式:</label>
    <div class="layui-input-block">
        <input type="text" id="deal" placeholder="请控制10字以内"
               class="layui-input" style="width: 300px">
    </div>
</div>
<br/>
<div>
    <label class="layui-form-label">物品地点:</label>
    <div class="layui-input-block">
        <input type="text" id="didian" placeholder="请控制50字以内"
               class="layui-input" style="width: 300px">
    </div>
</div>
<br/>
<div>
    <label class="layui-form-label">物品价格:</label>
    <div class="layui-input-block">
        <input type="text" id="price" placeholder="请直接输入金额"
               class="layui-input" style="width: 300px">
    </div>
</div>
<br/>
<div>
    <label class="layui-form-label">卖家:</label>
    <div class="layui-input-block">
        <input type="text" id="sellUser" value="${sessionScope.username}" readonly="readonly"
               class="layui-input" style="width: 300px">
    </div>
</div>
<br/>
<div>
    <label class="layui-form-label">联系方式:</label>
    <div class="layui-input-block">
        <input type="text" id="sellPhone" placeholder="请输入手机号"
               class="layui-input" style="width: 300px">
    </div>
</div>
<br/>
<div>
    <label class="layui-form-label">物品描述:</label>
    <div class="layui-input-block">
        <input type="text" id="introduce" placeholder="请控制在120字以内"
               class="layui-input" style="width: 300px">
    </div>
</div>
<div>
    <button onclick="upload2()" style="margin-left: 170px;width: 150px;height: 50px">上架</button>
</div>
</body>
<script>
    function upload2() {
        $.ajax({
            type: "post",
            url: "<%=request.getContextPath()%>/ershouServlet",
            data: {
                "action": "add",
                "title": $("#title").val(),
                "type": $("#leixing").val(),
                "image": $("#fileName").val(),
                "deal": $("#deal").val(),
                "didian": $("#didian").val(),
                "price": $("#price").val(),
                "sellUser": $("#sellUser").val(),
                "sellPhone": $("#sellPhone").val(),
                "introduce": $("#introduce").val()
            },
            dateType: "text",
            success: function (msg) {
                if (msg === "上架成功!") {
                    alert(msg);
                } else {
                    alert(msg);
                }
            }
        });
    }

    var type = $('#select1 option:selected').text();
    $("#leixing").val(type);

    $("#select1").change(function () {
        //要触发的事件
        var type = $('#select1 option:selected').text();
        $("#leixing").val(type);
    });
</script>
</html>
