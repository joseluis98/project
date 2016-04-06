 



<%@page import="java.sql.SQLException"%>
<%@page import="beans.*"%>
<%@page import="java.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean id="cart" scope="session" class="beans.Cart"></jsp:useBean>
    <!DOCTYPE html>
    <html>
        <head>
            <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
            <title>Your Cart</title>

            <!-- Bootstrap  -->
            <link rel="stylesheet" href="css/bootstrap.css">
            <script type="text/javascript" src="js/jquery-1.11.0.min.js"></script>
            <script type="text/javascript" src="js/jquery.leanModal.min.js"></script>
            <link rel="stylesheet" href="http://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.min.css" />
            <link type="text/css" rel="stylesheet" href="css/style.css" />
        </head>
        <body>
        <%@include file="NavBar.jsp" %>


        <h2 class="text-center">Shopping Cart:</h2>

        <%            HttpSession sessionc = request.getSession(true);
            Cart cart1;
            synchronized (sessionc) {  // synchronized to prevent concurrent updates
                // Retrieve the shopping cart for this session, if any. Otherwise, create one.
                cart = (Cart) sessionc.getAttribute("cart");
                if (cart == null) {  // No cart, create one.
                    cart1 = new Cart();
                    session.setAttribute("cart", cart1);  // Save it into session

                }

            }
            try {

                String todo = request.getParameter("todo");

                if (todo == null) {
                    todo = "view";
                }

                if (todo.equals("remove")) {
                    String id = request.getParameter("id");  // Only one id for remove case
                    cart.remove(Integer.parseInt(id));
                }

                if (cart.isEmpty()) {

        %>  

        <h2 class="text-center">Empty shopping cart</h2>

        <%                   } else {

            for (cars item : cart.getItems()) {
                int id = item.getId();
                String Make = item.getMake();
                String model = item.getModel();
                String style = item.getStyle();
                String Airport = item.getAirport();
                String Pick = item.getPick();
                String Drop = item.getDrop();
                String test = "remove";

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
                <td> <%=Make%>  </td>
                <td>  <%=model%>  </td>
                <td>  <%=style%>   </td>
                <td>  <%=Airport%>   </td>
                <td><img src="images/Cars/VJ.jpg" width="200" height="120"></td>
                <td><%=Pick%></td>
                <td><%=Drop%></td>
                <td> 
                    <form  method="get" action="cart.jsp">
                        <input type="submit" name="Remove" value="Remove">
                        <input  type="hidden" name="todo" value='<%=test%>'>
                        <input  type="hidden" name="id" value="<%=id%>">
                    </form>
                </td>
            </tr>

        </table>



        <%
                    }

                }
            } catch (Exception ex) {
                out.println("");

            }
        %>

        <br>
        <div style="align-content: center">
            <img src="images/keys1.jpg"
                 style="align-items: center"
                 alt="Airport"
                 />

        </div>
        <br>
        <br>
        <br>
        <br> 
        <div>
            <br>
        </div>



        <%@include file="footer.jsp" %>
    </body>
</html>
