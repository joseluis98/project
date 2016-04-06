<%-- 
    Document   : preCart
    Created on : Mar 5, 2016, 9:54:47 PM
    Author     : JoseDesk
--%>
<%@ page import="java.sql.*" %>
<%@page import="beans.*"%>
<%@page import="java.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean id="cart" scope="session" class="beans.Cart"></jsp:useBean>


<%

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

    int carID = Integer.parseInt(request.getParameter("carID"));
    String carID1 = request.getParameter("carID");

    Class.forName("com.mysql.jdbc.Driver");
    conn = DriverManager.getConnection(jdbcUrl);

    Statement st = conn.createStatement();

    ResultSet rs = st.executeQuery("SELECT * FROM CarRental.Car where CarID= " +carID1 +" ");
    String PickDate = session.getAttribute( "PickUp" ).toString();
    String DropDate = session.getAttribute( "dropOff" ).toString();

    if (!rs.next()) {
        out.println("Sorry ");
    } else {
        String Make = rs.getString(2);
        String Model = rs.getString(3);
        String Style = rs.getString(4);
        String Company = rs.getString(9);
        String Airport = rs.getString(10);   
        cart.add(carID, Make, Model, Style, Company, Airport, PickDate, DropDate);
    }


    response.sendRedirect("cart.jsp");


%>