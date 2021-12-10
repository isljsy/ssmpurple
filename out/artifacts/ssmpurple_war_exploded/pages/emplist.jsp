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
    <title>emplist</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <%@ include file="css.jsp" %>
</head>
<body>
<div id="wrap">
    <div id="top_content">
        <%@ include file="head.jsp" %>
        <div id="content">
            <p id="whereami">
            </p>
            <h1>
                Welcome! ${sessionScope.user.username}
            </h1>
            <div>
                <table class="table table-striped">
                    <thead class="thead-dark">
                    <tr>
                        <th>
                            ID
                        </th>
                        <th>
                            姓名
                        </th>
                        <th>
                            年龄
                        </th>
                        <th>
                            生日
                        </th>
                        <th>
                            操作
                        </th>
                    </tr>
                    </thead>
                    <c:forEach items="${empList}" var="emp" varStatus="index">
                        <tr>
                            <th>
                                    ${emp.id}
                            </th>
                            <td>
                                    ${emp.name}
                            </td>
                            <td>
                                    ${emp.age}
                            </td>
                            <td>
                                <fmt:formatDate value="${emp.bir}" pattern="yyyy.M.d"/>
                            </td>
                            <td>
                                <a href="${pageContext.request.contextPath}/emp/delete?id=${emp.id}">删除</a>
                                <a href="${pageContext.request.contextPath}/emp/update?id=${emp.id}">修改</a>
                            </td>
                        </tr>
                    </c:forEach>
                </table>
            </div>
            <p class="pages">
                <a href="${pageContext.request.contextPath}/pages/NewsListServlet?page=${requestScope.page.pageNo-1}">上一页</a>
                <c:forEach items="${requestScope.page.pagesList}" var="pages">
                    <a
                            <c:if test="${requestScope.page.pageNo==pages}">class="current-page"</c:if>
                            href="${pageContext.request.contextPath}/pages/NewsListServlet?page=${pages}">${pages}
                    </a>
                </c:forEach>
                <a href="${pageContext.request.contextPath}/pages/NewsListServlet?page=${requestScope.page.pageNo+1}">下一页</a>
            </p>
            <p>
                <input type="button" class="button" value="添加员工"
                       onclick="location='${pageContext.request.contextPath}/emp/add'"/>
            </p>
        </div>
    </div>
    <%@ include file="footer.jsp" %>
</div>
</body>
</html>
