<%-- 
    Document   : unActiveRoom
    Created on : Mar 8, 2022, 12:55:39 AM
    Author     : Admin
--%>

<%@page import="Dal.roomDBContext"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    int ID = Integer.valueOf(request.getParameter("roomID"));
    System.out.println(ID);
    roomDBContext room = new roomDBContext();
    int check = room.updateClockRoom(ID, 0);
    response.sendRedirect("roommanage.jsp");
%>

