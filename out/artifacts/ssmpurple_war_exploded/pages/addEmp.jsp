<%--
  Created by IntelliJ IDEA.
  User: ljsy
  Date: 2021/10/26
  Time: 下午 7:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>add Emp</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="stylesheet" type="text/css"
          href="../css/style.css" />
</head>

<body>
<div id="wrap">
    <div id="top_content">
        <%@ include file="head.jsp"%>
        <div id="content">
            <p id="whereami">
            </p>
            <h1>
                添加员工:
            </h1>
            <form  action="${pageContext.request.contextPath}/emp/add" method="post">
                <table cellpadding="0" cellspacing="0" border="0"
                       class="form_table">
                    <tr>
                        <td valign="middle" align="right">
                            姓名:
                        </td>
                        <td valign="middle" align="left">
                            <input type="text" class="inputgri" name="name" />
                        </td>
                    </tr>
                    <tr>
                        <td valign="middle" align="right">
                            年龄:
                        </td>
                        <td valign="middle" align="left">
                            <input type="text" class="inputgri" name="age" />
                        </td>
                    </tr>
                    <tr>
                        <td valign="middle" align="right">
                            生日:
                        </td>
                        <td valign="middle" align="left">
                            <input type="text" class="inputgri" name="bir" />
                        </td>
                    </tr>
<%--                    <tr>--%>
<%--                        <td valign="middle" align="right">--%>
<%--                            分类:--%>
<%--                        </td>--%>
<%--                        <td valign="middle" align="left">--%>
<%--                            <label>--%>
<%--                                <select name="typeId" >--%>
<%--                                    <c:forEach items="${requestScope.types}" var="type" varStatus="typeStatus">--%>
<%--                                        <option value="${typeStatus.count}" >${type}</option>--%>
<%--                                    </c:forEach>--%>
<%--                                </select>--%>
<%--                            </label>--%>
<%--                        </td>--%>
<%--                    </tr>--%>
                    <tr>
                        <td valign="middle" align="right">
                            内容:
                        </td>
                        <td valign="middle" align="left">
                            <textarea type="text" class="inputgri" name="content" placeholder="新闻内容" ></textarea>
                        </td>
                    </tr>
                    <tr>
                        <td valign="middle" align="right">
                            图片:
                        </td>
                        <td valign="middle" align="left">
                            <input type="file" class="inputgri" name="smImg" value="选择图片" />
                        </td>
                    </tr>
                </table>
                <p>
                    <input type="submit" class="button" value="添加" />
                </p>
            </form>
        </div>
    </div>
    <%@ include file="footer.jsp"%>
</div>
</body>
</html>
