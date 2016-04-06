<%-- 
    Document   : orderPlaced
    Created on : Mar 22, 2016, 12:40:53 PM
    Author     : JoseDesk
--%>

<%@page import="beans.Cart"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="beans.*"%>
<%@page import="java.*"%>
<jsp:useBean id="cart" scope="session" class="beans.Cart"></jsp:useBean>
    <!DOCTYPE html>
    <html>
        <head>
            <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
            <title>JSP Page</title>
        </head>
        <body>


        <%@include file="NavBar.jsp" %>

        <%            //gets the orderid from the session
            String CustomeOrderId = session.getAttribute("OrderId").toString();
            cart.clear();//clear the cart items

        %>

        <br>

        <div align="center">
            <h2 class="text-center">  Here is Your Confirmation Id <%=CustomeOrderId%><br>
                Thanks for your order!</h2>


        </div>
        <br>
        <div align="center">
            <img src="images/keys.jpg">
        </div>
        <br><br>
        <div align="center" >
            <form   action="index.jsp" >
                <input class="one_half last, btn btn_red" type="submit" name="Home" value="Home Page" >


            </form>  
        </div>
        <br>
        <%@include file="footer.jsp" %>

    </body>
</html>
