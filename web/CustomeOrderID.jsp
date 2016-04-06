<%-- 
    Document   : CustomeOrderID
    Created on : Mar 22, 2016, 12:53:45 PM
    Author     : JoseDesk
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%@include file="database.jsp" %>

        <%           
            //The string date and airport are assigned from the session attribute
            String Date = session.getAttribute("TodayDate").toString();
            String Airport = session.getAttribute("Airport").toString();

            //The id is also from the session
            String id = session.getAttribute("userid").toString();
            //create a new statement for sql code
            Statement st1 = conn.createStatement();
            ResultSet rs1 = st1.executeQuery("select * from Customer where UserName='" + id + "'");
            rs1.next();
            // get the price from the session and assign it to a string
            String TotalPrice = session.getAttribute("finalPrice").toString();
            
            // create another statement for sql code so it does not conflict with the first st
            Statement st = conn.createStatement();
            ResultSet rs;
            //create a prepared statment to use variable values to shorten sql code 
            PreparedStatement pst;
            pst = conn.prepareStatement(
                    " INSERT INTO `CarRental`.`CustomerOrder` (`OrderDate`, `AirPortID`, `CustomerID`, `TotalPrice`) VALUES (?, ?, ?, ?); ");
            // asssign the values to the sql code
            pst.setString(1, Date);
            pst.setString(2, Airport);
            pst.setString(3, rs1.getString(1));
            pst.setString(4, TotalPrice);
            
            //execite the statement and assign it to a int 
            int i = pst.executeUpdate();
            pst.clearParameters();
            //create a statment to use variable values to shorten sql code 
            Statement st3 = conn.createStatement();
            ResultSet rs3 = st3.executeQuery("SELECT * FROM CarRental.CustomerOrder WHERE CustomerOrderID = (SELECT MAX(CustomerOrderID) FROM CustomerOrder); ");
            rs3.next();
            session.setAttribute("OrderId", rs3.getString(1));
            // asssign the values to the sql code
            String CustomeOrderId = session.getAttribute("OrderId").toString();
            String carID = session.getAttribute("carID").toString();
            String InsuranceType = session.getAttribute("InsuranceName").toString();
            String InsuranceCost = session.getAttribute("InsuranceCost").toString();
            String Pick = session.getAttribute("Pick").toString();
            String Drop = session.getAttribute("Drop").toString();
            //2nd prepared statement
            PreparedStatement pst2;
            pst2 = conn.prepareStatement(
                    " INSERT INTO `CarRental`.`OrderLine` (`CustomerOrderID`, `CarID`, `InsuranceType`, `InsuranceCost`, `PickUpDay`, `DropOffDay`)  VALUES (?, ?, ?, ?,?,?); ");
            //assign the values 
            pst2.setString(1, CustomeOrderId);
            pst2.setString(2, carID);
            pst2.setString(3, InsuranceType);
            pst2.setString(4, InsuranceCost);
            pst2.setString(5, Pick);
            pst2.setString(6, Drop);
            //execute the statment 
            int j = pst2.executeUpdate();
            pst2.clearParameters();
            //rediret the users once all the sql code is done 
            if (j > 0) {
                response.sendRedirect("orderPlaced.jsp");
            } else {
                response.sendRedirect("orderPlaced.jsp");
            }


        %>

        <%=CustomeOrderId%>


    </body>
</html>
