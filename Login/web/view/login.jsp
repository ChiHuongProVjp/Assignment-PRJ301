<%-- 
    Document   : login
    Created on : Feb 28, 2022, 11:06:54 AM
    Author     : 03623
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action="login" method="POST"> 
            Username: <input type="username" name="taikhoan"/>
            <br/>
            Password: <input type="password" name="matkhau" />
            <br/>
            <input type="submit" value="Login"/>
        </form>
    </body>
</html>
