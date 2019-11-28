<%--
  Created by IntelliJ IDEA.
  User: wzh82
  Date: 2019/4/7
  Time: 14:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="../background/commons/tanchuceng.jsp" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>二货商城-用户注册</title>
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/static/css/login.css">
    <link rel="icon" href="<%=request.getContextPath()%>/image/logo2.ico" type="image/x-icon"/>
</head>
<script type="text/javascript">
    function changeThis() {
        //再访问一次验证码的Servlet
        //把img的src属性
        var imgObject = $("#verifyCode");
        imgObject.attr("src", "${pageContext.request.contextPath}/getCode" + newUrl());
    }

    function newUrl() {
        var timestamp = (new Date()).valueOf();
        var url = "?timestamp=" + timestamp;
        console.log(456);
        return url;
    }

</script>
<body>
<div style="overflow: auto">
    <input type="hidden" name="action" value="register">
    <div class="regist">
        <div class="regist_center">
            <div class="regist_top">
                <div class="left fl">会员注册</div>
                <div class="right fr"><a href="<%=request.getContextPath()%>/GoIndexServlet" target="_self">二货商城</a>
                </div>
                <div class="clear"></div>
                <div class="xian center"></div>
            </div>
            <div class="regist_main center">
                <div class="username">用&nbsp;&nbsp;户&nbsp;&nbsp;名:&nbsp;&nbsp;<input class="shurukuang" type="text"
                                                                                     id="username" name="username"
                                                                                     placeholder="请输入你的用户名"/><span>请不要输入汉字</span>
                </div>
                <div class="username">密&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;码:&nbsp;&nbsp;<input
                        class="shurukuang" type="password" id="password" name="password" placeholder="请输入你的密码"/><span>请输入6位以上字符</span>
                </div>

                <div class="username">确认密码:&nbsp;&nbsp;<input class="shurukuang" type="password" id="repassword"
                                                              name="repassword"
                                                              placeholder="请确认你的密码"/><span>两次密码要输入一致哦</span></div>
                <div class="username">手&nbsp;&nbsp;机&nbsp;&nbsp;号:&nbsp;&nbsp;<input class="shurukuang" type="text"
                                                                                     id="tel" name="tel"
                                                                                     placeholder="请填写正确的手机号"/><span>填写下手机号吧，方便我们联系您！</span>
                </div>
                <div class="username">学&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;校:&nbsp;&nbsp;<input
                        class="shurukuang" type="text" id="college" name="college" placeholder="请填写所在院校"/><span>快去寻找同校小伙伴！</span>
                </div>
                <div class="username">
                    <div class="left fl">验&nbsp;&nbsp;证&nbsp;&nbsp;码:&nbsp;&nbsp;<input class="yanzhengma" type="text"
                                                                                        id="code" name="code"
                                                                                        placeholder="请输入验证码"/></div>
                    <div class="right fl"><img id="verifyCode" onclick="changeThis()"
                                               src="${pageContext.request.contextPath}/getCode"></div>
                    <div class="clear"></div>
                </div>
            </div>
            <div class="regist_submit">
                <input onclick="register()" class="submit" type="button" value="立即注册">
            </div>
        </div>
    </div>
</div>
<jsp:include page="../footer/footer.jsp"/>
</body>
<script type="text/javascript">
    function register() {
        var username = document.getElementById("username").value;
        var password = document.getElementById("password").value;
        var repassword = document.getElementById("repassword").value;
        var tel = document.getElementById("tel").value;
        var college = document.getElementById("college").value;
        var code = document.getElementById("code").value;
        $.ajax({
            type: "post",
            url: "<%=request.getContextPath()%>/checkCode",
            data: {
                "action": "register",
                "username": username,
                "password": password,
                "repassword": repassword,
                "tel": tel,
                "college": college,
                "code": code
            },
            dateType: "text",
            success: function (msg) {
                if ("注册成功！" === msg) {
                    $.sendSuccessToTop(msg, 3000, function () {
                        console.log('sendSuccessToTop closed');
                    });
                    window.setTimeout("window.location='login.jsp'", 3000);
                } else {
                    $.sendWarning(msg, 3000, function () {
                        console.log('sendWarning closed');
                    });
                }
            }
        });
    }
</script>
</html>
