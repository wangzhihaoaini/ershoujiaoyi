<%--
  Created by IntelliJ IDEA.
  User: wzh82
  Date: 2019/4/10
  Time: 22:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="../background/commons/tanchuceng.jsp" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>二货商城-搜索列表</title>
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/static/css/style.css">
    <link rel="icon" href="<%=request.getContextPath()%>/image/logo2.ico" type="image/x-icon"/>
</head>
<body>
<!-- start header -->
<jsp:include page="../head/header.jsp"/>
<!--end header -->

<!-- start danpin -->
<div class="danpin center" style="overflow: auto">

    <div class="biaoti center">搜索关键字：<span id="title">${requestScope.title}</span></div>
    <div class="main center">
        <c:if test="${requestScope.size==0}">
            <script>
                $.sendWarning('很抱歉，没有您想要的商品', 3000, function () {
                    console.log('sendWarning closed');
                });
            </script>
        </c:if>
        <c:if test="${requestScope.size!=0}">
            <c:forEach items="${requestScope.searchList}" var="list">
                <div class="mingxing fl mb20" style="border:2px solid #fff;width:230px;cursor:pointer;"
                     onmouseout="this.style.border='2px solid #fff'" onmousemove="this.style.border='2px solid red'">
                    <div class="sub_mingxing"><a
                            href="<%=request.getContextPath()%>/ershouServlet?action=queryDetail&wupinId=${list.id}"><img
                            src="<%=request.getContextPath()%>/image/${list.image}" alt=""></a></div>
                    <div class="pinpai"><a
                            href="<%=request.getContextPath()%>/ershouServlet?action=queryDetail&wupinId=${list.id}">${list.title}</a>
                    </div>
                    <div class="youhui">${list.introduce}</div>
                    <div class="jiage">${list.price}元</div>
                </div>
            </c:forEach>
        </c:if>
        <div class="clear"></div>
    </div>
</div>
<div style="position: relative;left: 640px">
    <a href="ershouServlet?action=search&title=${requestScope.title}&index=1">首页</a>
    <c:if test="${requestScope.index!=1}">
        <a href="ershouServlet?action=search&title=${requestScope.title}&index=${requestScope.index-1}">上一页</a>
    </c:if>
    <c:if test="${requestScope.index==1}">
        <a style="color:#3f86ff">到顶啦</a>
    </c:if>
    <c:forEach var="i" begin="1" step="1" end="${requestScope.end}">
        <a href="ershouServlet?action=search&title=${requestScope.title}&index=${i}">【${i}】</a>
    </c:forEach>
    <c:if test="${requestScope.index<requestScope.end}">
        <a href="ershouServlet?action=search&title=${requestScope.title}&index=${requestScope.index+1}">下一页</a>
    </c:if>
    <c:if test="${requestScope.index==requestScope.end}">
        <a style="color:#3f86ff">到底啦</a>
    </c:if>
    <a href="ershouServlet?action=search&title=${requestScope.title}&index=${requestScope.end}">尾页</a>
    <div style="margin-left: 350px;display: inline;">
        当前页:第${requestScope.index}页
    </div>
</div>
<div onclick="smoothscroll()" style="float: right"><img src="<%=request.getContextPath()%>/image/topback.png"
                                                        height="40px" width="40px" title="返回顶部"></div>
<jsp:include page="../footer/footer.jsp"/>
</body>
<script>
    function smoothscroll() {
        var currentScroll = document.documentElement.scrollTop || document.body.scrollTop;
        if (currentScroll > 0) {
            window.requestAnimationFrame(smoothscroll);
            window.scrollTo(0, currentScroll - (currentScroll / 5));
        }
    }
</script>
</html>
