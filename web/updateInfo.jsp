<%@ page import ="java.sql.*" %>

<%@ page import ="javax.sql.*" %>
<%
    //getting all the paremeters from the form
    String fname = request.getParameter("fName");
    String lname = request.getParameter("lName");
    String cc = request.getParameter("CC");

    String street = request.getParameter("street");
    String city = request.getParameter("city");
    String state = request.getParameter("state");
    String zip = request.getParameter("zip");

    String email = request.getParameter("mail");
    String phone = request.getParameter("phone");
    String age = request.getParameter("age");

    String usern = request.getParameter("usern");

    String pass = request.getParameter("password");

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
    

    String id = session.getAttribute("userid").toString();
    
    PreparedStatement pst;
    pst = conn.prepareStatement(
            "UPDATE `CarRental`.`Customer` SET `FirstName`= ? , `LastName`=?, `CrediCardNo`=?, `BillingZipCode`=?, `BillingCity`=?, `Billing State`=?, `BillingStreet`=?, `EmailAdress`=?, `PhoneNo`=?, `Age`=?, `UserName`=?, `Password`=?  WHERE `UserName`='" + id + "'");
    
    
    // values for the sql code 
    
    
    
    

    pst.setString(1, fname);
    pst.setString(2, lname);
    pst.setString(3, cc);
    pst.setString(4, zip);
    pst.setString(5, city);
    pst.setString(6, state);
    pst.setString(7, street);
    pst.setString(8, email);
    pst.setString(9, phone);
    pst.setString(10, age);
    pst.setString(11, usern);
    pst.setString(12, pass);

    int i = pst.executeUpdate();
    //run the code and redirect
    pst.clearParameters();
    if (i > 0) {
        response.sendRedirect("index.jsp");
    } else {
        response.sendRedirect("index.jsp");
    }
%>