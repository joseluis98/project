<%-- 
    Document   : OrderHistory
    Created on : Mar 17, 2016, 11:31:32 AM
    Author     : JoseDesk
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Order History</title>
    </head>
    <body>

        <%@include file="NavBar.jsp" %>
        <%@include file="database.jsp" %>

        <h2 class="text-center">Order History:</h2>


        <%           
             //gettting the session attrubutes
            String id = session.getAttribute("userid").toString();
            //using the string in a statement and executing the sql code 
            Statement st1 = conn.createStatement();
            ResultSet rs1 = st1.executeQuery("select * from Customer where UserName='" + id + "'");
            rs1.next();
            
            
            // call a stored procedure in the database where the user id is used as the parameter 
            Statement order = conn.createStatement();
            ResultSet rs = order.executeQuery("CALL OrderHistory( " + rs1.getString(1) + "); ");///order history from user 

            while (rs.next()) {

        %>  






        <table border="5" cellpadding="60" align="center" id="t01">
            <tr>
                <th>Airport</th>
                <th>Make</th>
                <th>Model</th>
                <th>Rental Company</th>
                <th>Pick Up Date</th>
                <th>Drop Off Date</th>
                <th>Insurance Type</th>
                <th>Total Cost</th>
            </tr>
            <tr>
                <td> <%=rs.getString(2)%>  </td>
                <td>  <%=rs.getString(3)%>  </td>
                <td>  <%=rs.getString(4)%>   </td>
                <td>  <%=rs.getString(5)%>   </td>

                <td><%=rs.getString(6)%></td>
                <td><%=rs.getString(7)%></td>
                <td><%=rs.getString(8)%></td>
                <td><%=rs.getString(9)%></td>
            </tr>

        </table>

        <br>

        <%
            }


        %>


        <div class="one_half" align="center"><a href="index.jsp" id="login_form" class="btn">Back</a></div>


        <%@include file="footer.jsp" %>



    </body>
</html>
