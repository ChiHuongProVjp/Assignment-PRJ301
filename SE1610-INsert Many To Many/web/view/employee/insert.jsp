<%-- 
    Document   : insert
    Created on : Mar 4, 2022, 11:14:10 AM
    Author     : Ngo Tung Son
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action="insert" method="POST">
            Id: <input type="text" name="id"/> <br/>
            Name: <input type="text" name="name"/> <br/>
            Gender: <input type="radio" name="gender" value="male"/> Male 
            <input type="radio" name="gender" value="female"/> Female 
            <br/>
            Dob: <input type="date" name="dob"/> <br/>
            <c:forEach items="${requestScope.skills}" var="s">
                <input type="checkbox" value="${s.id}" name="skid"/> ${s.name} <br/>
            </c:forEach>
            
            <input type="submit" value="Save"/>
        </form>
    </body>
</html>
