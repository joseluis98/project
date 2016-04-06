<%-- 
    Document   : account
    Created on : Feb 23, 2016, 5:33:33 PM
    Author     : Jose-Lap
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <!-- Bootstrap  -->
        <link rel="stylesheet" href="css/bootstrap.css">
        <script type="text/javascript" src="js/jquery-1.11.0.min.js"></script>
        <script type="text/javascript" src="js/jquery.leanModal.min.js"></script>
        <link rel="stylesheet" href="http://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.min.css" />
        <link type="text/css" rel="stylesheet" href="css/style.css" />
        <title>My Account</title>
    </head>
    <body>


        <%@include file="NavBar.jsp" %>




        <%                    // Read RDS connection information from the environment
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

            Statement st = conn.createStatement();

            
            String id = session.getAttribute("userid").toString();

            ResultSet rs = st.executeQuery("select * from Customer where UserName='" + id + "'");

            if (!rs.next()) {
                out.println("Sorry ");
            } else {
        %>



        <!-- Register Form -->
        <div class="updateUserInfo" align="center">

            <form action="updateInfo.jsp" method="post">
                First Name:<input type="text" name="fName"  value=" <%= rs.getString(2)%> " /><br> 
                Last Name:<input type="text" name="lName" value=" <%= rs.getString(3)%> "  /><br> 
                Credit Card:<input type="text" name="CC" value=" <%= rs.getString(4)%> " /><br> 
                Street:<input type="text" name="street"  value=" <%= rs.getString(5)%> "/><br> 
                City:<input type="text" name="city" value=" <%= rs.getString(6)%> " /><br> 
                State:<input type="text" name="state"  value=" <%= rs.getString(7)%> "/><br> 
                Zip:<input type="text" name="zip"  value=" <%= rs.getString(8)%> " /><br> 
                Email:<input  type="email" name="mail"  value=" <%= rs.getString(9)%> " /><br> 
                Phone:<input type="text" name="phone"  value=" <%= rs.getString(10)%> " /><br> 
                Age:<input type="text" name="age" value=" <%= rs.getString(11)%> " /><br> 
                User Name:<input type="text" name="usern" value=" <%= rs.getString(12)%> " /><br> 
                Password:<input type="password" name="password"  value=" <%= rs.getString(13)%> " /><br> 









                <div >
                    <div class="one_half"><a href="index.jsp" id="login_form" class="btn">Back</a></div>
                    <input type="submit" class="action_btns ,one_half last, btn btn_red " value="Update Info" >
                    <div class="one_half"><a href="OrderHistory.jsp" id="login_form" class="btn">Order History</a></div>

                </div>
            </form>
                
        </div>
        <BR>
        <%
            }
        %>







        <%@include file="footer.jsp" %>


    </body>
</html>
