<%-- 
    Document   : orderConfig
    Created on : Mar 21, 2016, 10:36:44 PM
    Author     : JoseDesk
--%>

<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
<%@page import="java.util.Date" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="beans.*"%>
<%@page import="java.*"%>
<jsp:useBean id="cart" scope="session" class="beans.Cart"></jsp:useBean>
    <!DOCTYPE html>
    <html>
        <head>
            <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
            <title>Order Details</title>

        </head>
        <body>
        <%@include file="database.jsp" %>
        <%@include file="NavBar.jsp" %>

        <h2 class="text-center">Order Details:</h2>

        <%  
            // getting the session attributes
            String id = session.getAttribute("userid").toString();
            String carID = session.getAttribute("carID").toString();
            //creating the statement for sql
            Statement st = conn.createStatement();
            ResultSet rs = st.executeQuery("select * from Customer where UserName='" + id + "'");
            rs.next();
            //getting the values from the passed parameters from the form 
            double newPrice = Integer.parseInt(request.getParameter("BidPrice"));
            double insur = Integer.parseInt(request.getParameter("insurance"));
            session.setAttribute("InsuranceCost",  insur);
            
            String InsuType = null;
            //will assign the insurance cost and name 
            if (insur == 0) {
                InsuType = "None";
                session.setAttribute("InsuranceName",  InsuType);
            }
            if (insur == 10) {
                InsuType = "Loss Damage Waiver";
                session.setAttribute("InsuranceName",  InsuType);
            }
            if (insur == 20) {
                InsuType = "Collision Damage Waiver";
                session.setAttribute("InsuranceName",  InsuType);
            }

            String todo = request.getParameter("todo");
            // create a new date format to be used in the sql code 
            DateFormat df = new SimpleDateFormat("yyyy-MM-dd");
            Date dateobj = new Date();
            //get todays date to be used for order date
            session.setAttribute("TodayDate", df.format(dateobj));

            //display the customerorderid as the order configuration number 
            for (cars item : cart.getItems()) {

                int days = item.getTotalDays();
                String Make = item.getMake();
                String model = item.getModel();
                String style = item.getStyle();
                String Airport = item.getAirport();
                session.setAttribute("Airport", Airport);
                String Pick = item.getPick();
                String Drop = item.getDrop();
                session.setAttribute("Pick", Pick);
                session.setAttribute("Drop", Drop);
                //getting the values from the cart bean and setting them as a session attribute

                double finalPrice = cart.CalPrice(days, newPrice, insur);
                session.setAttribute("finalPrice",  finalPrice);
        %>




        

        <table border="5" cellpadding="60" align="center" id="t01" style="width:30%">
            <tr>
                <th>Name:</th>
                <td><%=rs.getString(3)%>, <%=rs.getString(2)%></td>
            </tr>
            <tr>
                <th >Order Date:</th>
                <td><%=df.format(dateobj)%></td>
            </tr>
            <tr>
                <th>Car Pickup Date:</th>
                <td><%=Pick%></td>
            </tr>
            <tr>
                <th>Car Drop off Date:</th>
                <td><%=Drop%></td>
            </tr>
            <tr>
                <th>Pick Up/Drop off Location:</th>
                <td><%=Airport%></td>
            </tr>
            <tr>
                <th>Car Make:</th>
                <td><%=Make%></td>
            </tr>
            <tr>
                <th>Car Model:</th>
                <td><%=model%></td>
            </tr>
            <tr>
                <th >Credit Card Used:</th>

                <td> 
                    <input type="hidden" id ="account" value="<%=rs.getString(4)%>" /> 
                    <input id = "account_changed" />
                </td>
            </tr>
            <tr>
                <th>Rental Period:</th>
                <td><%=days%> Days</td>
            </tr>
            <tr>
                <th>Price per Day/Winning Bid:</th>
                <td>$ <%=newPrice%></td>
            </tr>
            <tr>
                <th>Insurance Type & Cost:</th>
                <td><%=InsuType%> - $<%=insur%></td>
            </tr>
            <tr>
                <th>Total Cost:</th>
                <td>$ <%=finalPrice%></td>
            </tr>
            
        </table>
            <br>
        <div align="center">
            <form  method="get" action="CustomeOrderID.jsp">
                <input class="one_half last, btn btn_red" type="submit" name="order" value="Place Order" >
               

            </form>
        </div>


        <%

                //  if contains submit order then sql then redirect to confimation page
                //there can be an error but just disable it in the input type ,rangeUnderflow, rangeOverflow or stepMismatch.
                // have the bid function here
// the insert order sql
//INSERT INTO `CarRental`.`CustomerOrder` (`OrderDate`, `AirPortID`, `CustomerID`, `TotalPrice`) VALUES (current_date(), 'MIA', '3', '211');
//Assign it to a orderid to be used in orderline insert
//SELECT * FROM CarRental.CustomerOrder WHERE CustomerOrderID = (SELECT MAX(CustomerOrderID) FROM CustomerOrder);
//customer orderis = rs .getString 1 
///then
//if insur =10 then string insur = water damge if 20 .......
//INSERT INTO `CarRental`.`OrderLine` (`CustomerOrderID`, `CarID`, `InsuranceType`, `InsuranceCost`, `PickUpDay`, `DropOffDay`) VALUES ('1257', '12', 'Collision Damage', '10', '2015-12-31', '2016-01-20');
            }


        %>


        <script>

            // a script to make the last 4 numbers only visible for the credit card number 
            var account = document.getElementById('account');
            var changed = document.getElementById('account_changed');

            changed.value = new Array(account.value.length - 3).join('x') + account.value.substr(account.value.length - 4, 4);

        </script>
        <%@include file="footer.jsp" %>
    </body>
</html>
