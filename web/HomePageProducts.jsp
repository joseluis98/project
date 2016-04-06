<%-- 
    Document   : HomePageProducts
    Created on : Mar 20, 2016, 2:26:14 PM
    Author     : JoseDesk
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Pick a Date</title>

    </head>
    <body>



        <%
            //get the session attruibutes to a string 
            String Airport = request.getParameter("Air");
            String carID = request.getParameter("carID");


        %>

        <%@include file="NavBar.jsp" %>


        <h2 class="text-center">Choose The Dates:</h2>
        <%@include file="redirect.jsp" %>


        <%@include file="footer.jsp" %>
    </body>
</html>
