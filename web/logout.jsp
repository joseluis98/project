<%-- 
    Document   : logout
    Created on : Feb 21, 2016, 11:27:46 PM
    Author     : JoseDesk
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>


<%
session.setAttribute("userid", null);
session.invalidate();
response.sendRedirect("index.jsp");
%>