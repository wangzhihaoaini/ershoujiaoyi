<%--
  Created by IntelliJ IDEA.
  User: wzh82
  Date: 2019/5/5
  Time: 11:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="../background/commons/info.jsp" %>
<%@include file="../background/commons/tanchuceng.jsp" %>
<html>
<head>
    <title>发送通知</title>
    <style>
        #information {
            margin-left: 40%;
            height: 40px;
            width: 200px;
            border-radius: 10px;
        }
    </style>
</head>
<body>
<div>
<textarea wrap="virtual" placeholder="通知对象为全部会员" maxlength="200" style="resize:none;width:100%;height: 100px;
       border:1px solid gray;margin-top: 10px;padding: 10px;
       border-radius: 5px" id="comment_text"></textarea>
</div>
<div>
    <button onclick="information()" id="information">发送</button>
</div>
</body>
<script>
    function information() {
        var strContent = $("#comment_text").val();
        if (strContent.trim() === "") {
            layer.msg("内容不能为空!", {icon: 2, time: 3000});
            return;
        }
        $.ajax({
            type: "post",
            url: "<%=request.getContextPath()%>/InformationServlet",
            data:
                {
                    "action": "informaionToAll",
                    "content": strContent
                },
            dataType: "text",
            success: function (msg) {
                $.sendSuccess(msg, 3000, function () {
                    console.log('sendSuccess closed');
                });
            }
        })
    }
</script>
</html>
