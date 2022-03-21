<%-- 
    Document   : checkinRoom
    Created on : Mar 5, 2022, 1:49:41 AM
    Author     : Admin
--%>

<%@page import="Dal.roomDBContext"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    int ID = Integer.valueOf(request.getParameter("roomID"));
    roomDBContext room = new roomDBContext();
    int check = room.updateStatusRoom(ID, 1);
    response.sendRedirect("ordermanagement.jsp");
%>
