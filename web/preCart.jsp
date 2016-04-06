<%-- 
    Document   : preCart
    Created on : Mar 5, 2016, 9:54:47 PM
    Author     : JoseDesk
--%>
<%@page import="java.text.SimpleDateFormat"%>
<%@ page import="java.sql.*" %>
<%@page import="beans.*"%>
<%@page import="java.*"%>
<%@page import="java.text.DateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Calendar" %> 
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean id="cart" scope="session" class="beans.Cart"></jsp:useBean>


<%
    //database connection
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
    session.setAttribute("carID", carID1);
    
    
    Class.forName("com.mysql.jdbc.Driver");
    conn = DriverManager.getConnection(jdbcUrl);
    //creating a new statement
    Statement st = conn.createStatement();

    ResultSet rs = st.executeQuery("SELECT * FROM CarRental.Car where CarID= " + carID1 + " ");

    //redirect Page inputs from the home page
    String PickDateRedir = request.getParameter("pickUp");
    String DropDateRedir = request.getParameter("dropOff");

    if ((PickDateRedir != null) || DropDateRedir != null) {
        session.setAttribute("dropOff", DropDateRedir);
        session.setAttribute("PickUp", PickDateRedir);
    }
    // inputs from the book form 
    String PickDate = session.getAttribute("PickUp").toString();
    String DropDate = session.getAttribute("dropOff").toString();
    //calling the method to find the length of days between 
    DayFinder obj = new DayFinder();
    int TotalDays = obj.numberOfDays(PickDate, DropDate);

    System.out.print(TotalDays);

    if (!rs.next()) {
        out.println("Sorry ");
    } else {
        //get the info from the database and the make and new item in the cart 
        String Make = rs.getString(2);
        String Model = rs.getString(3);
        String Style = rs.getString(4);
        String Company = rs.getString(9);
        String Airport = rs.getString(10);
        double RegPrice = Double.parseDouble(rs.getString(7));
        cart.add(carID, Make, Model, Style, Company, Airport, PickDate, DropDate, TotalDays, RegPrice);
    }

    response.sendRedirect("cart.jsp");


%>