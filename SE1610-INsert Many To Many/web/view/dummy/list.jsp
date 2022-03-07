<%-- 
    Document   : list
    Created on : Feb 23, 2022, 11:06:57 AM
    Author     : SAP-LAP-FPT
--%>

<%@page import="model.Dummy"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <%
            ArrayList<Dummy> dummies = (ArrayList<Dummy>)request.getAttribute("dummies");
            Integer pageindex = (Integer)request.getAttribute("pageindex");
            Integer totalpage = (Integer)request.getAttribute("totalpage");
        %>
        <script src="../js/pagger.js" type="text/javascript"></script>
    </head>
    <body>
        <table>
            <tr>
                <td>Id</td>
                <td>Name</td>
            </tr>
            <% for (Dummy d : dummies) {
            %>
            <tr>
                <td><%=d.getId() %></td>
                <td><%=d.getName()%></td>
            </tr>
            <%}%>
        </table>
        <div id="pagger"> </div>
        <script> 
            pagger('pagger',<%=pageindex%>,<%=totalpage%>);
        </script>
    </body>
</html>
