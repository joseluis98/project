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


        <%            Statement order = conn.createStatement();
            ResultSet rs = order.executeQuery("CALL OrderHistory('3'); ");
            

            
               while(rs.next()) {

        %>  

        




        <table border="5" cellpadding="60" align="center" id="t01">
            <tr>
                <th>Make</th>
                <th>Model</th>
                <th>Style</th>
                <th>Airport</th>
                <th>Image</th>
                <th>Pick Up Date</th>
                <th>Drop Off Date</th>
                <th>Remove</th>
            </tr>
            <tr>
                <td> <%=rs.getString(2)%>  </td>
                <td>  <%=rs.getString(3)%>  </td>
                <td>  <%=rs.getString(4)%>   </td>
                <td>  <%=rs.getString(5)%>   </td>
                <td><%=rs.getString(5)%></td>
                <td><%=rs.getString(6)%></td>
                <td><%=rs.getString(2)%></td>
                <td> 
                    
                </td>
            </tr>

        </table>



        <%
                    }

                
          
        %>

        <%@include file="footer.jsp" %>



    </body>
</html>
