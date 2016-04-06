<%-- 
    Document   : ReviewOrder
    Created on : Mar 21, 2016, 1:42:38 PM
    Author     : JoseDesk
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@page import="beans.*"%>
<%@page import="java.*"%>
<jsp:useBean id="cart" scope="session" class="beans.Cart"></jsp:useBean>
    <!DOCTYPE html>
    <html>
        <head>
            <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
            <title>Review Your Order</title>
        </head>


        <body>
        <%@include file="database.jsp" %>
        <%@include file="NavBar.jsp" %>    

        <h2 class="text-center">Review and Bid:</h2>

        <%            
            //creating a new statment
            Statement st = conn.createStatement();

            String id = session.getAttribute("userid").toString();
            //getting the session attributes
            String carID = session.getAttribute("carID").toString();
            //executing the statment 
            ResultSet rs = st.executeQuery("select * from Customer where UserName='" + id + "'");
            //using the string in the sql code 
            Statement st2 = conn.createStatement();
            ResultSet rscar = st2.executeQuery("SELECT * FROM CarRental.Car where CarID= " + carID + " ");
            rscar.next();
            //getting the values from the resultset 
            int low = Integer.parseInt(rscar.getString(6));
            int high = Integer.parseInt(rscar.getString(8));
            // if there are items in the cart, display the items
            for (cars item : cart.getItems()) {
                //geting the items that are in the cart bean 
                int days = item.getTotalDays();
                String Make = item.getMake();
                String model = item.getModel();
                String style = item.getStyle();
                String Airport = item.getAirport();
                String Pick = item.getPick();
                String Drop = item.getDrop();
                int Days = item.getTotalDays();
                double RegPrice = item.getPrice();

                if (!rs.next()) {
                    out.println("Error");
                } else {


        %>










        <table border="5" cellpadding="60" align="center" id="t01">
            <tr>
                <th>Make</th>
                <th>Model</th>
                <th>Style</th>
                <th>Airport</th>

                <th>Pick Up Date</th>
                <th>Drop Off Date</th>
                <th>Total Days</th>
                <th>Price Per Day</th>
                <th>Price Bid</th>
            </tr>
            <tr>
                <td> <%=Make%></td>
                <td>  <%=model%>  </td>
                <td>  <%=style%>   </td>
                <td>  <%=Airport%>   </td>

                <td><%=Pick%></td>
                <td><%=Drop%></td>
                <td><%=Days%></td>
                <td><%=RegPrice%></td>
                <td> 
                    <form action="orderConfig.jsp">
                        Select Your Price:
                        <input type="number"  name="BidPrice" min="<%=low%>" max="<%=high%>" 
                               oninvalid="this.setCustomValidity('Sorry <%=rs.getString(2)%> CarMaxx Invaild Bid')"
                               oninput="setCustomValidity('')" required>
                        Select Optional Insurance:
                        <select name="insurance">
                            <option value="0">None</option>
                            <option value="10">Loss Damage Waiver-$10</option>
                            <option value="20">Collision Damage Waiver-$20</option>
                            
                        </select>
                        <input class="one_half last, btn btn_red" type="submit" value="Submit Bid">
                    </form>
                </td>
            </tr>

        </table>

        <div align="center">



        </div>


        <%
                    //there can be an error but just disable it in the input type ,rangeUnderflow, rangeOverflow or stepMismatch.
                }
                
// the insert order sql
//INSERT INTO `CarRental`.`CustomerOrder` (`OrderDate`, `AirPortID`, `CustomerID`, `TotalPrice`) VALUES (current_date(), 'MIA', '3', '211');

//Assign it to a orderid to be used in orderline insert
//SELECT * FROM CarRental.CustomerOrder WHERE CustomerOrderID = (SELECT MAX(CustomerOrderID) FROM CustomerOrder);
            }


        %>





        <%@include file="footer.jsp" %>
    </body>
</html>
