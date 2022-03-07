<%-- 
    Document   : list
    Created on : Feb 21, 2022, 11:02:43 AM
    Author     : SAP-LAP-FPT
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="model.Report"%>
<%@page import="model.Account"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <% 
            Account account = (Account)request.getSession().getAttribute("account");
            ArrayList<Report> reports = (ArrayList<Report>)request.getAttribute("reports");
        %>
    </head>
    <body>
        <%=account.getUsername()%> <br/>
        <table>
            <tr>
                <td>Id</td>
                <td>Name</td>
            </tr>
            <% for (Report r : reports) {
            %>
            <tr>
                <td><%=r.getId()%></td>
                <td><%=r.getTitle()%></td>
            </tr>
            <%}%>
        </table>
    </body>
</html>
