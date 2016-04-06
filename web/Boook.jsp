<%-- 
    Document   : dbTest
    Created on : Feb 3, 2016, 8:59:35 AM
    Author     : joselap
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Book A Car</title>
        <style>
            .rightCustom{
                position: inherit;
                top: 30%;
                left: 500%;
                margin-top: 40px;
                margin-left: 550px;
            }
        </style>

    </head>
    <body>
        <%@include file="NavBar.jsp" %>




        <%@include file="form.jsp" %>


        <br>
        <div style="position:relative;">
            <img src="images/airport.jpg"
                 style="position:absolute; top:-260px; right:130px; z-index:10; width:560px; height:280px; border:none;"
                 alt="Airport"
                 />

        </div>




        <%@include file="footer.jsp" %>
    </body>
</html>
