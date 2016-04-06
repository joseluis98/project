<%@ page import ="java.sql.*" %>

<%@ page import ="javax.sql.*" %>
<%
    
    String fname = request.getParameter("fName");
    String lname = request.getParameter("lName");
    String usern = request.getParameter("usern");
    System.out.print(fname);
    System.out.print("NAME");  
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
    Statement st = conn.createStatement();
    
    ResultSet rs;
    PreparedStatement pst;
    pst = conn.prepareStatement("INSERT INTO `CarRental`.`Customer` (`FirstName`, `LastName`, `UserName`, `Password`) VALUES (?, ?, ?, ?)");
    pst.setString(1, fname);
    pst.setString(2, lname);
    pst.setString(3,usern);
    pst.setString(4, pass);
   

    
    
    

    
    
    
    
    
    
    
    
    
    
    
    
    int i = pst.executeUpdate();
    pst.clearParameters();
    if (i > 0) {
        response.sendRedirect("index.jsp");
    } else {
        response.sendRedirect("index.jsp");
    }
%>