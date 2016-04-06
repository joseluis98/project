 <%@ page import="java.sql.*" %>
 
 
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