<%@ page import="java.util.Date" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: ljsy
  Date: 2021/10/26
  Time: 下午 7:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>regist</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="stylesheet" type="text/css" href="css/style.css"/>
</head>
<body>
<div id="wrap">
    <div id="top_content">
        <div id="header">
            <div id="rightheader">
                <p>
                    <%
                        Date date = new Date();
                        request.setAttribute("date", date);
                    %>
                    <fmt:formatDate value="${requestScope.date}" pattern="yyyy年MM月dd日"/>
                    <br/>
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
        <div id="content">
            <p id="whereami">
            </p>
            <h1>
                注册
            </h1>
            <form action="${pageContext.request.contextPath}/RegisterServlet" method="post">
                <table cellpadding="0" cellspacing="0" border="0"
                       class="form_table">
                    <tr>
                        <td valign="middle" align="right">
                            用户名:
                        </td>
                        <td valign="middle" align="left">
                            <input type="text" class="inputgri" name="username"/>
                        </td>
                    </tr>
                    <tr>
                        <td valign="middle" align="right">
                            密码:
                        </td>
                        <td valign="middle" align="left">
                            <input type="password" class="inputgri" name="password"/>
                        </td>
                    </tr>
                    <tr>
                        <td valign="middle" align="right">
                            生日:
                        </td>
                        <td valign="middle" align="left">
                            <input class="inputgri" name="birthday" placeholder="2000-01-01"/>
                        </td>
                    </tr>
<%--                    <tr>--%>
<%--                        <td valign="middle" align="right">--%>
<%--                            性别:--%>
<%--                        </td>--%>
<%--                        <td valign="middle" align="left">--%>
<%--                            男--%>
<%--                            <input type="radio" class="inputgri" name="sex" value="m" checked="checked"/>--%>
<%--                            女--%>
<%--                            <input type="radio" class="inputgri" name="sex" value="f"/>--%>
<%--                        </td>--%>
<%--                    </tr>--%>
                    <tr>
                        <td valign="middle" align="right">
                            验证码:
                            <a href="javascript:reloadCode();">
                                <img id=checkcode src="${pageContext.request.contextPath }/ImageServlet"/></a>
                            <a href="javascript:reloadCode();">换一张</a></td>
                        <td valign="middle" align="left">
                            <input id="number" type="text" class="inputgri" name="number"/>
                        </td>
                    </tr>
                </table>
                <p>
                    <input type="submit" class="button" value="注册 &raquo;"/>
                </p>
            </form>
        </div>
    </div>
    <div id="footer">
        <div id="footer_bg">
            www.julyview.com
        </div>
    </div>
</div>
</body>
<script>
    function reloadCode(){
        var time=new Date().getTime();
        document.getElementById("checkcode").src="<%=request.getContextPath()%>/ImageServlet?d="+time;
    }
</script>
</html>
