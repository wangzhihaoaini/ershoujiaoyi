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
    <title>二货商城-个人中心</title>
    <link rel="icon" href="<%=request.getContextPath()%>/image/logo2.ico" type="image/x-icon"/>
</head>
<body>
<!-- start header -->
<jsp:include page="../head/header.jsp"/>
<!--end header -->

<!-- self_info -->

<div style="overflow: auto" class="grzxbj">
    <div class="selfinfo center">
        <div class="lfnav fl">
            <div class="ddzx">订单中心</div>
            <div class="subddzx">
                <ul>
                    <li><a href="<%=request.getContextPath()%>/OrderlistServlet?action=findAll"
                           style="color:#ff6700;font-weight:bold;">我的订单</a></li>
                </ul>
            </div>
            <div class="ddzx">个人中心</div>
            <div class="subddzx">
                <ul>
                    <li>
                        <a href="<%=request.getContextPath()%>/UserServlet?action=findOne&username=${sessionScope.username}">我的个人中心</a>
                    </li>
                    <li><a href="<%=request.getContextPath()%>/InformationServlet?action=findAll">消息通知</a></li>
                    <li><a href="<%=request.getContextPath()%>/ershouServlet?action=findOneSale">我的上架</a></li>
                </ul>
            </div>
        </div>
        <div class="rtcont fr">
            <div class="ddzxbt">交易订单</div>
            <c:if test="${requestScope.sizezxc==0}">
                <div style="margin-left: 320px;margin-top: 150px ;font-family: 'Microsoft YaHei UI';font-size: 20px">
                    还没有任何订单,快快去选购心爱的商品吧!
                </div>
                <br/>
            </c:if>
            <c:forEach items="${requestScope.orderlist}" var="list">
                <div class="ddxq">
                    <div class="ddspt fl"><img src="<%=request.getContextPath()%>/image/${list.wupinImage}"
                                               height="80px" width="80px"></div>
                    <div class="ddbh fl">订单号:${list.orderlistNumber}</div>
                    <div class="ztxx fr">
                        <ul>
                            <li>${list.isDelivered}</li>
                            <li>￥${list.totalCost}</li>
                            <li>${list.date}</li>
                            <li>
                                <button class="confirmDescConfirmIcon" id="${list.id}"
                                        style="border-radius: 10px;margin-top: 12px;background:rgba(236,216,255,0.53)">
                                    订单详情
                                </button>
                            </li>
                        </ul>
                    </div>
                    <div class="clear"></div>
                </div>
            </c:forEach>
            <div style="margin-left: 350px;padding-top: 50px;">
                <c:if test="${requestScope.sizezxc>0}">
                    <a href="OrderlistServlet?action=findAll&index=1">首页</a>
                    <c:if test="${requestScope.index!=1}">
                        <a href="OrderlistServlet?action=findAll&index=${requestScope.index-1}">上一页</a>
                    </c:if>
                    <c:if test="${requestScope.index==1}">
                        <a style="color:#3f86ff">到顶啦</a>
                    </c:if>
                    <c:forEach var="i" begin="1" step="1" end="${requestScope.end}">
                        <a href="OrderlistServlet?action=findAll&index=${i}">【${i}】</a>
                    </c:forEach>
                    <c:if test="${requestScope.index<requestScope.end}">
                        <a href="OrderlistServlet?action=findAll&index=${requestScope.index+1}">下一页</a>
                    </c:if>
                    <c:if test="${requestScope.index==requestScope.end}">
                        <a style="color:#3f86ff">到底啦</a>
                    </c:if>
                    <a href="OrderlistServlet?action=findAll&index=${requestScope.end}">尾页</a>
                    <div style="margin-left: 150px;display: inline;">
                        当前页:第${requestScope.index}页
                    </div>
                </c:if>
            </div>
        </div>
        <div class="clear"></div>
    </div>
</div>
<div onclick="smoothscroll()" style="float: right"><img src="<%=request.getContextPath()%>/image/topback.png"
                                                        height="40px" width="40px" title="返回顶部"></div>

<jsp:include page="../footer/footer.jsp"/>
<script>
    $('.confirmDescConfirmIcon').click(function () {
        var realId = this.id;
        $.ajax({
            type: "post",
            url: "<%=request.getContextPath()%>/OrderlistServlet",
            data: {
                "action": "findOne",
                "id": realId
            },
            dateType: "json",
            success: function (jsonObject) {
                //将json对象格式化为js可以操作的对象
                var realJsonObject = eval("(" + jsonObject + ")");
                layer.open({
                    title: this.text,
                    type: 2,
                    skin: 'layui-layer-rim', //加上边框
                    area: [window.screen.width / 1.25 + 'px', window.screen.height / 1.25 + 'px'], //宽高
                    maxmin: true, //开启最大化最小化按钮
                    content: "<%=request.getContextPath()%>/foreground/dingdanDetail.jsp",
                    success: function (layero, index) {
                        // 获取子页面的iframe
                        var iframe = window['layui-layer-iframe' + index];
                        // 向子页面的全局函数child传参
                        iframe.child(realJsonObject);
                    }
                })
            }
        });
    });

    function smoothscroll() {
        var currentScroll = document.documentElement.scrollTop || document.body.scrollTop;
        if (currentScroll > 0) {
            window.requestAnimationFrame(smoothscroll);
            window.scrollTo(0, currentScroll - (currentScroll / 5));
        }
    }
</script>
</body>
</html>
