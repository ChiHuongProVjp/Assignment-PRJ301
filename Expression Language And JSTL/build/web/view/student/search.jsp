<%-- 
    Document   : search
    Created on : Jan 21, 2022, 11:23:28 AM
    Author     : Sap-lap
--%>

<%@page import="model.Student"%>
<%@page import="model.Department"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
         <script>
            function submitForm()
            {
                document.getElementById("searchForm").submit();
            }
            
            function deleteStudent(id)
            {
                var result = confirm("Are you sure?");
                if(result)
                {
                    window.location.href = "delete?id=" + id;
                }
            }
            
        </script>
    </head>
    <body>
        <form action="search" method="GET" id="searchForm"> 
            Department: <select name="did" onchange="submitForm();">
                <option value="-1" >Please select a department</option>
                <c:forEach items="${requestScope.depts}" var="d">
                <option 
                    ${(d.getId()==requestScope.did)?"selected=\"selected\"":""}
                    value="${d.id}" >${d.name}</option>
                </c:forEach>
            </select>
        </form>
        <br/>
        <table border="1px">
            <tr>
                <td>Id</td>
                <td>Name</td>
                <td>Gender</td>
                <td>Dob</td>
                <td>Deparmtent</td>
                <td></td>
            </tr>
            <c:forEach items="${requestScope.students}" var="s">
            <tr>
                <td>${s.id}</td>
                <td>${s.name}</td>
                <td>${s.gender}</td>
                <td>${s.dob}</td>
                <td>${s.dept.name}</td>
                <td><a href="edit?id=${s.id}">Edit</a>
                    <a href="#" onclick="deleteStudent(${s.id})">Delete</a>
                </td>
            </tr>
            </c:forEach>
        </table> 
        <a href="insert">Insert</a>
    </body>
</html>
