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
        <title>Records</title>
    </head>
    <body>
        <%@include file="NavBar.html" %>

        <%

            // Read RDS connection information from the environment
            Connection conn = null;
            String dbName = ("CarRental");
            String userName = ("CarRental");
            String password = ("cargroup4");
            String hostname = ("rentalcargroup.cyorwco5xfvd.us-east-1.rds.amazonaws.com");
            String port = ("3306");
            String jdbcUrl = "jdbc:mysql://" + hostname + ":"
                    + port + "/" + dbName + "?user=" + userName + "&password=" + password;

            // Load the JDBC driver
            try {
                System.out.println("Loading driver...");
                Class.forName("com.mysql.jdbc.Driver");
                System.out.println("Driver loaded!");
            } catch (ClassNotFoundException e) {
                throw new RuntimeException("Cannot find the driver in the classpath!", e);
            }

            Class.forName("com.mysql.jdbc.Driver");
            conn = DriverManager.getConnection(jdbcUrl);
            
            
            
            
            


        %>

        <H1 align="center" >Our Products </H1>
        <FORM NAME="form1" ACTION="Boook.jsp" METHOD="POST"  align="center">

        <% 
            int current = 1;
            if(request.getParameter("hidden") != null) {
                current = Integer.parseInt(request.getParameter("hidden"));
            }

            

            Statement statement = conn.createStatement(
                ResultSet.TYPE_SCROLL_INSENSITIVE,
                ResultSet.CONCUR_READ_ONLY);

            ResultSet resultset = statement.executeQuery("select * from Car"); 

            if(current < 1){
                current = 1;
            }

            resultset.last();
            int rows = resultset.getRow();
            if(current <= rows){
                resultset.absolute(current);
            }    
        %>

        

            <TABLE BORDER="1" align="center" >
                <TR>
                    <TH>ID</TH>
                    <TH>Make</TH>
                    <TH>Model</TH>

                </TR>
                <TR>
                    <TD> <%= resultset.getString(1) %> </TD>
                    <TD> <%= resultset.getString(2) %> </TD>
                    <TD> <%= resultset.getString(3) %> </TD>

                </TR>
            </TABLE>
            <BR>
            <div style="text-align: center;">
            <INPUT TYPE="HIDDEN" NAME="hidden"  VALUE="<%= current %>">
            <INPUT TYPE="BUTTON" VALUE="Next Record"  ONCLICK="moveNext()">
            <INPUT TYPE="BUTTON" VALUE="Previous Record"  ONCLICK="movePrevious()">
            </div>
        </FORM>

        <SCRIPT LANGUAGE="JavaScript">
            <!--
            function moveNext()
            {
                var counter = 0
                counter = parseInt(document.form1.hidden.value) + 1
                document.form1.hidden.value = counter
                form1.submit()
            }    
            function movePrevious()
            {
                var counter = 0
                counter = parseInt(document.form1.hidden.value) - 1
                document.form1.hidden.value = counter
                form1.submit()
            }    
            // --> 
        </SCRIPT>
                
        <%@include file="footer.jsp" %>
    </body>
</html>
