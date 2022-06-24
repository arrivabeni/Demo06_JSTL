<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Accounts</title>
    </head>
    <body>
        <h1>Accounts</h1>

        <h3>Page ${page}</h3>

        <!-- display a table of all of the accounts -->
        <table>
            <tr>
                <th>Name</th>
                <th>Link</th>
            </tr>
            <c:forEach items="${accounts}" var="user">
                <tr>
                    <td>${user.name}</td>
                    <td><a href="<c:url value='/account'>
                               <c:param name='username' value='${user.username}'/>
                    </c:url>">Detail</a></td>
                </tr>
            </c:forEach>
        </table>

        <!-- handle paging: forward/back -->


    </body>
</html>
