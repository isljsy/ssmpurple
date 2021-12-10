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
                添加员工图片:
            </h1>
            <form  action="${pageContext.request.contextPath}/file/upload" method="post" enctype="multipart/form-data">
                <table cellpadding="0" cellspacing="0" border="0"
                       class="form_table">
                    <tr>
                        <td valign="middle" align="right">
                            图片:
                        </td>
                        <td valign="middle" align="left">
                            <input type="file" class="inputgri" name="img" value="选择图片" />
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
