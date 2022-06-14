<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Account Information</title>
    </head>
    <body>
        <h1>${account.name}</h1>
        <ul>
            <li>username: ${account.username}</li>
            <li>password: ${account.password}</li>
            <li>email: <a href="mailto:${account.email}">${account.email}</a></li>
        </ul>
        <div>
            <!-- add a link to go back to root of application -->

        </div>
    </body>
</html>
