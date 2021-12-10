<%--
  Created by IntelliJ IDEA.
  User: ljsy
  Date: 2021/10/26
  Time: 下午 7:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>update Emp</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="stylesheet" type="text/css"
          href="../css/style.css"/>
</head>

<body>
<div id="wrap">
    <div id="top_content">
        <%@ include file="head.jsp" %>
        <div id="content">
            <p id="whereami">
            </p>
            <p>
                <button disabled ><a href="${pageContext.request.contextPath}/user/list">返回</a></button>
            </p>
            <h1>
                修改新闻:
            </h1>
            <form action="${pageContext.request.contextPath}/emp/update" method="post">
                <table cellpadding="0" cellspacing="0" border="0"
                       class="form_table">
                    <tr>
                        <td valign="middle" align="right">
                            姓名:
                        </td>
                        <td valign="middle" align="left">
                            <input type="text" class="inputgri" name="name" value="${emp.name}" />
                            <input type="hidden" name="id" value="${emp.id}"/>
                        </td>
                    </tr>
                    <tr>
                        <td valign="middle" align="right">
                            年龄:
                        </td>
                        <td valign="middle" align="left">
                            <input type="text" class="inputgri" name="age" value="${emp.age}" />
                        </td>
                    </tr>
                    <tr>
                        <td valign="middle" align="right">
                            生日:
                        </td>
                        <td valign="middle" align="left">
                            <input type="text" class="inputgri" name="bir" value="<fmt:formatDate  value="${emp.bir}" pattern="yyyy/MM/dd"/>" />
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
<%--                                    <option <c:if test="${news.type==type}">selected</c:if>  value="${typeStatus.count}" >${type}</option>--%>
<%--                                    </c:forEach>--%>
<%--                                </select>--%>
<%--                            </label>--%>
<%--                        </td>--%>
<%--                    </tr>--%>
<%--                    <tr>--%>
<%--                        <td valign="middle" align="right">--%>
<%--                            内容:--%>
<%--                        </td>--%>
<%--                        <td valign="middle" align="left">--%>
<%--                            <textarea type="text" class="inputgri" name="content" placeholder="新闻内容" >${news.content}</textarea>--%>
<%--                        </td>--%>
<%--                    </tr>--%>
                    <tr>
                        <td valign="middle" align="right">
                            图片:
                        </td>
                        <td valign="middle" align="left">
                            <img class="sm-img" src="${pageContext.request.contextPath}/img/${news.smImg}" />
                            <input type="file" class="inputgri" name="smImg" value="选择图片" />
                        </td>
                    </tr>
                </table>
                <p>
                    <input type="submit" class="button" value="提交修改"/>
                </p>
                <p>
                    <span style="color:red">${requestScope.msg}</span>
                </p>

            </form>
        </div>
    </div>
    <%@ include file="footer.jsp" %>
</div>
</body>
</html>