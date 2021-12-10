<%--
  Created by IntelliJ IDEA.
  User: ljsy
  Date: 2021/10/27
  Time: 下午 5:10
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.util.Date" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div id="header">
    <div id="rightheader">
        <p>
        <h2>
            <b>${sessionScope.user.username}</b>
            <a href="${pageContext.request.contextPath}/file/upload">修改底部背景图片</a>
            <a href="${pageContext.request.contextPath}/pages/LogoutServlet">退出</a>
        </h2>
            <%
                Date date = new Date();
                request.setAttribute("date",date);
            %>
            <fmt:formatDate  value="${requestScope.date}" pattern="yyyy年MM月dd日 H:mm "/>
            <br/>
        </p>
        
    </div>
    <div id="topheader">
        <h1 id="title">
            <a href="#">新闻后台管理系统</a>
        </h1>
    </div>
    <div id="navigation">
    </div>
</div>
