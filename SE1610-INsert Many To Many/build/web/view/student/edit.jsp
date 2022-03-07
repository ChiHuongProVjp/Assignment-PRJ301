<%-- 
    Document   : edit
    Created on : Feb 11, 2022, 11:09:48 AM
    Author     : SAP-LAP-FPT
--%>

<%@page import="model.Student"%>
<%@page import="java.util.ArrayList"%>
<%@page import="model.Department"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page isELIgnored = "false" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>


<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>

    </head>
    <body>

        ${1+1} <br/>
        ${1 eq 1} <br/>
        ${requestScope.student.name} <br/>
        ${requestScope["student"]["name"]} <br/>
        ${sessionScope.account.username} <br/>

        <form action="edit" method="POST">
            Id: ${requestScope.student.id} <input type="hidden" name="id" value="${requestScope.student.id}" /> <br/>
            Name: <input type="text" name="name" value="${requestScope.student.name}"/> <br/>
            Gender: <input type="radio" 
                           <c:if test="${requestScope.student.gender}">
                               checked="checked"
                           </c:if>
                           name="gender" value="male"/> Male 
            <input type="radio" 
                   <c:if test="${not requestScope.student.gender}">
                       checked="checked"
                   </c:if>
                   name="gender" value="female"/> Female 
            <br/>
            Dob: <input type="date" name="dob" value="${requestScope.student.dob}" /> <br/>
            Department: <select name="did">
                <c:forEach items="${requestScope.depts}" var="d">
                    <option
                        ${(d.getId() eq s.getDept().getId())?"selected=\"selected\"":""}
                        value="${d.id}">${d.name}</option>
                </c:forEach>
            </select>
            <br/>
            <input type="submit" value="Save"/>
        </form>
    </body>
</html>
