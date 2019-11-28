<%--
  Created by IntelliJ IDEA.
  User: wzh82
  Date: 2019/5/2
  Time: 14:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="../background/commons/info.jsp" %>
<%@ include file="../background/commons/tanchuceng.jsp" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>上架物品</title>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/css/demo.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/src/css/dialog.css">
    <script src="<%=request.getContextPath()%>/src/jquery.dialog.js"></script>
</head>
<body>
<!-- 文件上传时必须要设置表单的enctype="multipart/form-data"-->
<form action="${pageContext.request.contextPath}/UploadServlet"
      method="post" enctype="multipart/form-data">
    <br><br><br/><br/>
    <div style="margin-left: 35px">
        <div>
            <c:if test="${msg!=null}">
                <%--${msg}--%>
                <input onclick="returnUpload()" type="button" value="返回">
            </c:if>
            上传照片：
            <input type="file" name="file">
        </div>
    </div>
    <div>
        <input type="submit" style="margin-left: 170px;margin-top: 50px;width: 150px;height: 50px" value="上传">
    </div>
</form>
</body>
<script>
    function returnUpload() {
        window.history.back(-1);
    }
</script>
</html>
