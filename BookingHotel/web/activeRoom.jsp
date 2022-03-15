<%-- 
    Document   : activeRoom
    Created on : Mar 7, 2022, 10:08:28 PM
    Author     : Admin
--%>


<%@page import="Dal.roomDBContext"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    int ID = Integer.valueOf(request.getParameter("roomID"));
    System.out.println(ID);
    roomDBContext room = new roomDBContext();
    int check = room.updateClockRoom(ID, 1);
    response.sendRedirect("roommanage.jsp");
%>
