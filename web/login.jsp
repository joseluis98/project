<%-- 
    Document   : login
    Created on : Feb 21, 2016, 11:07:57 PM
    Author     : JoseDesk
--%>

<%@ page import ="java.sql.*" %>
<%@ page import ="javax.sql.*" %>
<%
    String id = request.getParameter("usern");
    String pwd = request.getParameter("password");
 
        // Read RDS connection information from the environment
    Connection conn = null;
    String dbName = ("CarRental");
    String userName = ("CarRental");
    String password = ("cargroup4");
    String hostname = ("rentalcargroup.cyorwco5xfvd.us-east-1.rds.amazonaws.com");
    String port = ("3306");
    String jdbcUrl = "jdbc:mysql://" + hostname + ":"
            + port + "/" + dbName + "?user=" + userName + "&password=" + password;

    Class.forName("com.mysql.jdbc.Driver");
    conn = DriverManager.getConnection(jdbcUrl);
    
    Statement st = conn.createStatement();
    ResultSet rs = st.executeQuery("select * from Customer where UserName='" + id + "'");
    if (rs.next()) {
        if (rs.getString(13).equals(pwd)) {
            session.setAttribute("userid",  id);
            
            response.sendRedirect("index.jsp");
        } else {
            session.setAttribute("userid", "Invaild Login Try Again");
            response.sendRedirect("index.jsp");
        }
    }
    else{
        response.sendRedirect("index.jsp");
    }
%>