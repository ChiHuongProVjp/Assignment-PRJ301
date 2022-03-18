<%-- 
    Document   : checkOutRoom
    Created on : Mar 5, 2022, 1:53:30 AM
    Author     : Admin
--%>

<%@page import="Dal.roomDBContext"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    int ID = Integer.valueOf(request.getParameter("roomID"));
    System.out.println(ID);
    roomDBContext room = new roomDBContext();
    int check = room.updateStatusRoom(ID, 0);
    response.sendRedirect("ordermanagement.jsp");
%>
